using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.SqlClient;
using System.Data;


namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-IEP0MI8;Initial Catalog=Цветочный магазин;Integrated Security=True");
        public void СlearBtn(object sender, RoutedEventArgs e)
        {
            DataGrid.ItemsSource = null;
        }
        public void ZAPR1(object sender, RoutedEventArgs e)
        {
            /* [1 запрос] (Запрос) */
            string zapros1 =
            "UPDATE Продажи SET Кол_во_ПродЭкз = 101 WHERE idПродажи = 3";
            SqlCommand cmd = new SqlCommand(zapros1, connect);
            DataTable datatable = new DataTable();
            connect.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            datatable.Load(sdr);
            connect.Close();
            string zapros3 =
            "select Стоимость_Экземп * Кол_во_ПродЭкз as Стоимость_Заказа, Кол_во_ПродЭкз, Покупатель from Магазины, Продажи where Кол_во_ПродЭкз<Кол_во_Экземп and Магазины.idМагазины = Продажи.idМагазины";
            cmd = new SqlCommand(zapros3, connect);
            datatable = new DataTable();
            connect.Open();
            sdr = cmd.ExecuteReader();
            datatable.Load(sdr);
            connect.Close();
            DataGrid.ItemsSource = datatable.DefaultView;
        }

        private void ZAPR2(object sender, RoutedEventArgs e)
        {
            string zapros1 =
            "UPDATE Продажи SET Кол_во_ПродЭкз = 11 WHERE idПродажи = 3";
            SqlCommand cmd = new SqlCommand(zapros1, connect);
            DataTable datatable = new DataTable();
            connect.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            datatable.Load(sdr);
            connect.Close();
            string zapros2 =
            "select Стоимость_Экземп * Кол_во_ПродЭкз as Стоимость_Заказа, Кол_во_ПродЭкз, Покупатель from Магазины, Продажи where Кол_во_ПродЭкз<Кол_во_Экземп and Магазины.idМагазины = Продажи.idМагазины";
            cmd = new SqlCommand(zapros2, connect);
            datatable = new DataTable();
            connect.Open();
            sdr = cmd.ExecuteReader();
            datatable.Load(sdr);
            connect.Close();
            DataGrid.ItemsSource = datatable.DefaultView;
        }

        private void ZAPR3(object sender, RoutedEventArgs e)
        {
            string zapros1 =
            "DELETE FROM Продажи WHERE Покупатель = 'Александр'";
            SqlCommand cmd = new SqlCommand(zapros1, connect);
            DataTable datatable = new DataTable();
            connect.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            datatable.Load(sdr);
            connect.Close();
            string zapros2 =
            "select Стоимость_Экземп * Кол_во_ПродЭкз as Стоимость_Заказа, Кол_во_ПродЭкз, Покупатель from Магазины, Продажи where Кол_во_ПродЭкз<Кол_во_Экземп and Магазины.idМагазины = Продажи.idМагазины";
            cmd = new SqlCommand(zapros2, connect);
            datatable = new DataTable();
            connect.Open();
            sdr = cmd.ExecuteReader();
            datatable.Load(sdr);
            connect.Close();
            DataGrid.ItemsSource = datatable.DefaultView;
            string zapros3 =
            "insert into Продажи values (4, '15.04.2022', 10, 'Александр', null, 4)";
            cmd = new SqlCommand(zapros3, connect);
            datatable = new DataTable();
            connect.Open();
            sdr = cmd.ExecuteReader();
            datatable.Load(sdr);
            connect.Close();
        }
    }
}