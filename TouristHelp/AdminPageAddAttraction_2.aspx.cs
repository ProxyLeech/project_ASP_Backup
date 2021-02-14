using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TouristHelp.BLL;

namespace TouristHelp
{
    public partial class AdminPageAddAttraction_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void UploadFile(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Images/");

            //save file name to invisible label
            LbImage.Text = "Images/" + FileUpload1.FileName;

            //Save the file to dictionary (Folder)
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName).ToString());

            //Display the Picture in Image Control
            Image1.ImageUrl = "~/Images/" + Path.GetFileName(FileUpload1.FileName).ToString();

        }

        protected void BtnAdd_Click(object sender, EventArgs e) //update to make it save to image + validate maybe
        {
            string attImage = LbImage.Text;
            Attraction att = new Attraction(TbName.Text, attImage, TbPrice.Text, TbDate.Text, TbDesc.Text, TbLocation.Text, decimal.Parse(TbLat.Text), decimal.Parse(TbLong.Text), DdlInterest.SelectedValue, DdlType.SelectedValue, DdlTran.SelectedValue);
            att.AddAttraction(att);
            Response.Redirect("AdminPageAddAttraction.aspx");
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPageAddAttraction.aspx");
        }
    }
}