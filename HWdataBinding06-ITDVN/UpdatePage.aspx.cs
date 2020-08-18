using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Не забываем библиотеки ниже.
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.Data;

namespace HWdataBinding06_ITDVN
{
    //По идеи это можно сделать через EF, но будем пробираться древним путём.
    public partial class UpdatePage : System.Web.UI.Page
    {
        SqlConnection _connection;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Чтение значения строки подключения из web.config из секции <connectionStrings>
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            // Настройка объекта подключения к базе и открытие подключения.
            _connection = new SqlConnection(connectionString);
            _connection.Open();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            // При выгрузке страницы из памяти сервера закрываем подключение к базе данных.
            if (_connection != null && _connection.State != ConnectionState.Closed)
            {
                _connection.Close();
            }
        }

        // Чтение одного значения из базы данных.

        // Чтение нескольких строк из базы данных.
        protected void ReadAllButton_Click(object sender, EventArgs e)
        {
            SqlDataReader reader = null;
            try
            {
                // Создание объекта запроса.
                SqlCommand command = new SqlCommand("SELECT * FROM Contacts", _connection);

                string result = string.Empty;

                // Создание объекта для построчного считывания данных из базы.
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    // Получение данных из колонок.
                    result += "Id = " + Convert.ToString(reader["Id"]) + "; ";
                    result += "FirstName = " + Convert.ToString(reader["FirstName"]) + "; ";
                    result += "LastName = " + Convert.ToString(reader["LastName"]) + "; ";
                    result += "Phone = " + Convert.ToString(reader["Phone"]) + "; ";
                    result += "Email = " + Convert.ToString(reader["Email"]) + "; ";
                    result += "Comments = " + Convert.ToString(reader["Comments"]);
                    result += "<br />";
                }
                ReadAllOutput.Text = result;
            }
            catch (Exception ex)
            {
                ReadAllOutput.Text = "<br />Error:<br />" + ex.Message;
                ReadAllOutput.ForeColor = Color.Red;
            }
            finally
            {
                // Если reader был открыт освобождаем память, закрывая объект.
                if (reader != null)
                {
                    reader.Close();
                }
            }
        }

        // Добавление новой записи в базу.
        protected void AddNewEntryButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand command = new SqlCommand
                    ("INSERT INTO Contacts (FirstName, LastName, Phone, Email, Comments)VALUES( @FirstName, @LastName, @Phone, @Email, @Comments)", _connection);
                // Инициализация переменных в запросе.
                command.Parameters.AddWithValue("FirstName", LoginTextBox.Text);
                command.Parameters.AddWithValue("LastName", PasswordTextBox.Text);
                command.Parameters.AddWithValue("Phone", PhoneTextBox.Text);
                command.Parameters.AddWithValue("Email", EmailTextBox.Text);
                command.Parameters.AddWithValue("Comments", CommentTextBox.Text);

                // Выполнение запроса.
                command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ErrorOutput.Text = "<br />Error:<br />" + ex.Message;
                ErrorOutput.ForeColor = Color.Red;
            }
        }

        // Удаление записи из базы данных.
        protected void RemoveByIdButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand command = new SqlCommand("DELETE FROM Contacts WHERE Id=@UserId", _connection);

                // Инициализация переменных в запросе.
                command.Parameters.AddWithValue("UserID", IdToRemoveTextBox.Text);

                // Выполнение запроса. Метод ExecuteNonQuery возвращает количество удаленных в базе строк.
                int affectedRows = command.ExecuteNonQuery();

                // Добавление в ответ пользователю тега скрипт, в котором с помощью javascript функции alert выводиться сообщение.
                string script = string.Format("alert('Удалено {0} строк');", affectedRows);
                ClientScript.RegisterClientScriptBlock(this.GetType(), "MessageBox", script, true);
            }
            catch (Exception ex)
            {
                ErrorOutput2.Text = "<br />Error:<br />" + ex.Message;
                ErrorOutput2.ForeColor = Color.Red;
            }
        }
        //Создаю watermark на текст 


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DetailsVeiwPage.aspx");
        }


    }
}