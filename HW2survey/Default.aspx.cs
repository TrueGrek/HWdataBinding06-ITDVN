using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW2survey
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection _connectionn;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Чтение значения строки подключения из web.config из секции <connectionStrings>
            string connectionString = ConfigurationManager.ConnectionStrings["CConnectionString"].ConnectionString;
            // Настройка объекта подключения к базе и открытие подключения.
            _connectionn = new SqlConnection(connectionString);
            _connectionn.Open();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            // При выгрузке страницы из памяти сервера закрываем подключение к базе данных.
            if (_connectionn != null && _connectionn.State != ConnectionState.Closed)
            {
                _connectionn.Close();
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            if (check.Checked)
            {
                try
                {
                    SqlCommand command = new SqlCommand
                    ("INSERT INTO SurveyTables (LastName, FirstName, MiddleName, NameWork, NominationWork, Discipline, Accept, LevelAccept, Organization, Position, City, Region, NumberPhone, Email, HowListenUs, HowListenUsYourself)" +
                    "VALUES(@LastName, @FirstName, @MiddleName, @NameWork, @NominationWork, @Discipline, @Accept, @LevelAccept, @Organization, @Position, @City, @Region, @NumberPhone, @Email, @HowListenUs, @HowListenUsYourself)", _connectionn);
                    // Инициализация переменных в запросе.

                    command.Parameters.AddWithValue("LastName", lastName.Text);
                    command.Parameters.AddWithValue("FirstName", firstName.Text);
                    command.Parameters.AddWithValue("MiddleName", middlename.Text);
                    command.Parameters.AddWithValue("NameWork", namework.Text);
                    command.Parameters.AddWithValue("NominationWork", nominationwork.Text);
                    command.Parameters.AddWithValue("Discipline", discipline.Text);
                    command.Parameters.AddWithValue("Accept", accept.Text);
                    command.Parameters.AddWithValue("LevelAccept", levelaccept.Text);
                    command.Parameters.AddWithValue("Organization", organization.Text);
                    command.Parameters.AddWithValue("Position", position.Text);
                    command.Parameters.AddWithValue("City", city.Text);
                    command.Parameters.AddWithValue("Region", region.Text);
                    command.Parameters.AddWithValue("NumberPhone", numberphone.Text);
                    command.Parameters.AddWithValue("Email", email.Text);
                    command.Parameters.AddWithValue("HowListenUs", howlistenus.Text);
                    command.Parameters.AddWithValue("HowListenUsYourself", howlistenusyourself.Text);

                    // Выполнение запроса.
                    command.ExecuteNonQuery();
                    Response.Redirect("~/Success.aspx");
                }
                catch (Exception ex)
                {
                    ErrorOutput2.Text = "Error: " + ex;
                    ErrorOutput2.ForeColor = Color.Red;
                }
            }
            else
            {
                ErrorOutput.Text = "Вы должны принять соглашение";
                ErrorOutput.ForeColor = Color.Red;
            }
        }
    }
}