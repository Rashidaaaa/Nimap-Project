using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_for_nimap
{
    public partial class Home : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = getGrid();
            this.DataBind();
        }

        public DataSet getGrid()
        {
            string queryString = "SELECT Product.ProductID as ProductID, Product.ProductName as ProductName, Category.CategoryID as CategoryID, Category.CategoryName as CategoryName FROM Product JOIN Category ON Product.CategoryID = Category.CategoryID";
            using (SqlConnection connection = new SqlConnection(strcon))
            {

                SqlCommand command = new SqlCommand(queryString, connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet dsPubs = new DataSet();
                try
                {
                    connection.Open();
                    adapter.Fill(dsPubs, "products");



                }
                catch (Exception err)
                {
                    //error label
                }
                finally
                {
                    connection.Close();
                }
                return dsPubs;



            }

        }
        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataSource = getGrid();
            this.DataBind();
        }
    }
}