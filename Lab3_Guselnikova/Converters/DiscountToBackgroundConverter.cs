using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;

namespace Lab3_Guselnikova.Converters
{
    public class DiscountToBackgroundConverter : IValueConverter
    {
        private static readonly SolidColorBrush HighlightBrush =
            new((Color)ColorConverter.ConvertFromString("#C8A2C8"));

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is double d && d > 20)
                return HighlightBrush;
            return Brushes.White;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }
}