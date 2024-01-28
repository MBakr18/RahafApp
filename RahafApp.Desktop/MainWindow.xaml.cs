using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using RahafAppLibrary.Data;
using RahafAppLibrary.Models;

namespace RahafApp.Desktop
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly IDatabaseData _db;

        public MainWindow(IDatabaseData db)
        {
            InitializeComponent();
            _db = db;
        }

        private void SearchForOccasion_OnClick(object sender, RoutedEventArgs e)
        {
           List<BookingModel> bookings =  _db.SearchBookings(OccasionNameTxt.Text);
           ResultsList.ItemsSource = bookings;
        }
    }
}