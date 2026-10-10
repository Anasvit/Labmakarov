using Lab3_Guselnikova.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

namespace Lab3_Guselnikova
{
    public partial class MainWindow : Window
    {
        private readonly Lab3ShopContext _db = new();
        private readonly ObservableCollection<Product> _products = new();
        private readonly CollectionViewSource _source = new();

        public ICollectionView Products => _source.View;

        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;

            _source.Source = _products;
            _source.Filter += ProductFilter;

            ReloadProducts();
        }

        private void ReloadProducts()
        {
            _products.Clear();

            var list = _db.Products
                .Include(p => p.Category)
                .Include(p => p.Manufacturer)
                .Include(p => p.Supplier)
                .Include(p => p.Name)
                .AsNoTracking()
                .ToList();

            foreach (var p in list)
                _products.Add(p);
        }
         
        private void ProductFilter(object sender, FilterEventArgs e)
        {
            if (e.Item is not Product p) { e.Accepted = false; return; }

            var q = SearchBox?.Text?.Trim().ToLower() ?? "";
            if (string.IsNullOrEmpty(q)) { e.Accepted = true; return; }

            var haystack = string.Join(" ",
                p.Article, p.Description, p.Unit,
                p.Name?.Name, p.Category?.Name,
                p.Manufacturer?.Name, p.Supplier?.Name)
                .ToLower();

            var words = q.Split(' ', System.StringSplitOptions.RemoveEmptyEntries);
            e.Accepted = words.All(w => haystack.Contains(w));
        }

        private void SearchBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            _source.View.Refresh();
        }

        private void Exit_Click(object sender, RoutedEventArgs e) => Close();
    }
}