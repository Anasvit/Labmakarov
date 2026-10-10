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

        private void AddProduct_Click(object sender, RoutedEventArgs e)
        {
            var win = new ProductEditWindow(null) { Owner = this };
            if (win.ShowDialog() == true)
                ReloadProducts();
        }

        private void Card_Click(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (e.OriginalSource is System.Windows.Controls.Button)
                return;

            var parent = e.OriginalSource as System.Windows.DependencyObject;
            while (parent != null)
            {
                if (parent is System.Windows.Controls.Button)
                    return;
                parent = System.Windows.Media.VisualTreeHelper.GetParent(parent);
            }

            if (sender is not System.Windows.FrameworkElement fe || fe.Tag is not Product p)
                return;

            var win = new ProductEditWindow(p) { Owner = this };
            if (win.ShowDialog() == true)
                ReloadProducts();
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            e.Handled = true;  

            if (sender is not System.Windows.FrameworkElement fe || fe.Tag is not Product p)
                return;

            bool inOrder = _db.OrderArticles.Any(oa => oa.ProductId == p.Id);
            if (inOrder)
            {
                MessageBox.Show("Нельзя удалить товар: он присутствует в заказе.");
                return;
            }

            if (MessageBox.Show($"Удалить товар «{p.Name?.Name}»?", "Подтверждение",
                    MessageBoxButton.YesNo, MessageBoxImage.Question) != MessageBoxResult.Yes)
                return;

            var toDelete = _db.Products.FirstOrDefault(x => x.Id == p.Id);
            if (toDelete != null)
            {
                _db.Products.Remove(toDelete);
                _db.SaveChanges();
            }
            ReloadProducts();
        }

        private void Exit_Click(object sender, RoutedEventArgs e) => Close();
    }
}