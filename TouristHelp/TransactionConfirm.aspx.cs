using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TouristHelp.BLL;

namespace TouristHelp
{
    public partial class TransactionConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string shopCode = Request.QueryString["Code"];
            int code = Convert.ToInt32(shopCode);
            Transactions shops = new Transactions();
            shops.shopVerify(shopCode);
            lblShopCode.Text = shopCode;
        }
    }
}