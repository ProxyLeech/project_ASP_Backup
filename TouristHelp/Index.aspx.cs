using System;
using TouristHelp.DAL;
using TouristHelp.BLL;

namespace TouristHelp
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tourguide_id"] != null || Session["tourist_id"] != null)
            {
                string name = "";
                try
                {
                    name = TouristDAO.SelectTouristById(int.Parse(Session["tourist_id"].ToString())).Name;
                }
                catch
                {
                    name = TourGuideDAO.SelectTourGuideById(int.Parse(Session["tourguide_id"].ToString())).Name;
                }
                finally
                {
                    LblName.Text = name;
                }


                

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}