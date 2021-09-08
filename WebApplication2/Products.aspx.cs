using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Repositories;

namespace WebApplication2
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ProductRepository productRepository = new ProductRepository();
            //productRepository.getProducts();
            if (!IsPostBack)
            {
                bindDataProducts();
            }
        }

        private void bindDataProducts()
        {
            ProductRepository productRepository = new ProductRepository();
            gridViewProductList.DataSource = productRepository.getProducts();
            gridViewProductList.DataBind();
        }

        protected void gridViewProductList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}