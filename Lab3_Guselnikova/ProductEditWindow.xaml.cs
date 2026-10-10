using System.Linq;
using System.Windows;
using Lab3_Guselnikova.Models;

namespace Lab3_Guselnikova
{
    public partial class ProductEditWindow : Window
    {
        private readonly Lab3ShopContext _db = new();
        private readonly Product? _product;

        public ProductEditWindow(Product? product)
        {
            InitializeComponent();
            _product = product;

            LoadComboBoxes();

            if (product == null)
            {
                Title = "Добавить товар";
                IdBox.Visibility = Visibility.Collapsed;
                IdLabel.Visibility = Visibility.Collapsed;
            }
            else
            {
                Title = "Редактировать товар";
                IdBox.Text = product.Id.ToString();
                NameBox.Text = product.Name?.Name ?? "";
                DescriptionBox.Text = product.Description ?? "";
                PriceBox.Text = product.Price?.ToString("F2") ?? "";
                CountBox.Text = product.Count?.ToString() ?? "";
                DiscountBox.Text = product.Discount?.ToString() ?? "";

                CategoryBox.SelectedValue = product.CategoryId;
                ManufacturerBox.SelectedValue = product.ManufacturerId;
                SupplierBox.SelectedValue = product.SupplierId;
            }
        }

        private void LoadComboBoxes()
        {
            CategoryBox.ItemsSource = _db.Categories.ToList();
            CategoryBox.SelectedValuePath = "Id";

            ManufacturerBox.ItemsSource = _db.Manufacturers.ToList();
            ManufacturerBox.SelectedValuePath = "Id";

            SupplierBox.ItemsSource = _db.Suppliers.ToList();
            SupplierBox.SelectedValuePath = "Id";
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            var name = NameBox.Text.Trim();
            if (string.IsNullOrEmpty(name))
            {
                MessageBox.Show("Введите наименование товара.");
                return;
            }
            if (CategoryBox.SelectedValue == null ||
                ManufacturerBox.SelectedValue == null ||
                SupplierBox.SelectedValue == null)
            {
                MessageBox.Show("Выберите категорию, производителя и поставщика.");
                return;
            }
            if (!double.TryParse(PriceBox.Text, out var price) || price < 0)
            {
                MessageBox.Show("Цена должна быть неотрицательным числом.");
                return;
            }
            if (!double.TryParse(CountBox.Text, out var count) || count < 0)
            {
                MessageBox.Show("Количество не может быть отрицательным.");
                return;
            }
            double.TryParse(DiscountBox.Text, out var discount);

            var nameEntity = _db.ProductNames.FirstOrDefault(n => n.Name == name);
            if (nameEntity == null)
            {
                int newNameId = _db.ProductNames.Any() ? _db.ProductNames.Max(n => n.Id) + 1 : 1;
                nameEntity = new ProductName { Id = newNameId, Name = name };
                _db.ProductNames.Add(nameEntity);
                _db.SaveChanges();
            }

            if (_product == null)
            {
                int newId = _db.Products.Any() ? _db.Products.Max(p => p.Id) + 1 : 1;

                var newProduct = new Product
                {
                    Id = newId,
                    Article = "NEW" + newId,
                    NameId = nameEntity.Id,
                    Unit = "1",
                    Price = price,
                    Count = count,
                    Discount = discount,
                    Description = DescriptionBox.Text.Trim(),
                    CategoryId = (int)CategoryBox.SelectedValue,
                    ManufacturerId = (int)ManufacturerBox.SelectedValue,
                    SupplierId = (int)SupplierBox.SelectedValue,
                    ImagePath = ""
                };
                _db.Products.Add(newProduct);
            }
            else
            {
                var p = _db.Products.First(x => x.Id == _product.Id);
                p.NameId = nameEntity.Id;
                p.Price = price;
                p.Count = count;
                p.Discount = discount;
                p.Description = DescriptionBox.Text.Trim();
                p.CategoryId = (int)CategoryBox.SelectedValue;
                p.ManufacturerId = (int)ManufacturerBox.SelectedValue;
                p.SupplierId = (int)SupplierBox.SelectedValue;
            }

            _db.SaveChanges();
            DialogResult = true;
            Close();
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }
    }
}