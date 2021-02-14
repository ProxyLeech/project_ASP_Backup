using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using TouristHelp.BLL;
using TouristHelp.DAL;
using TouristHelp.Models;

namespace TouristHelp
{
    public partial class RegisterTG : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignupTG_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = tbNameTG.Text;
                string email = tbEmailTG.Text.ToLower();
                string pass1 = tbPasswordTG.Text;
                string pass2 = tbRepeatPassTG.Text;
                string desc = tbDesc.Text;
                string lang = tbLang.Text;
                if (pass1 == pass2 && name != "" && email != "" && pass1 != "")
                {
                    string hash = SHA256Hash.GenerateSHA256(pass1);
                    TourGuide obj = new TourGuide(name, email, hash, desc, lang, "", "");
                    TourGuideDAO.InsertTourGuide(obj);

                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (UserDAO.UserWithEmailExists(args.Value.ToLower()))
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}