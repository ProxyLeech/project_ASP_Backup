using System;
using System.Collections.Generic;
using System.Globalization;
using System.Web.UI.WebControls;
using TouristHelp.DAL;
using TouristHelp.BLL;
using TouristHelp.Models;

namespace TouristHelp
{
    public partial class RegisterTourist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlNation.DataSource = CountryList();
                ddlNation.DataBind();
                ddlNation.Items.Insert(0, "-- Select --");
            }
        }

        protected void btnSignupTourist_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = tbNameTourist.Text;
                string email = tbEmailTourist.Text.ToLower();
                string pass1 = tbPasswordTourist.Text;
                string pass2 = tbRepeatPassTourist.Text;
                string nation = ddlNation.SelectedValue;
                if (pass1 == pass2 && name != "" && email != "" && pass1 != "" && nation != "-- Select --")
                {
                    string hash = SHA256Hash.GenerateSHA256(pass1);
                    Tourist obj = new Tourist(name, email, hash, nation);
                    TouristDAO.InsertTourist(obj);



                    //Michaels Reward insert table stuff (dont touch)
                    int id = Convert.ToInt32(TouristDAO.SelectTouristByEmail(email).UserId);

                    int logincount = 0;
                    int loginstreak = 0;
                    string loyaltytier = "none";
                    int totaldiscount = 0;
                    int bonuscredits = 10;
                    string membershiptier = "normal";
                    int creditbalance = 0;
                    int remainbonusdays = 10;
                    bool loggedInLog = false;
                    DateTime loggedInDate = DateTime.Now;
                    bool newDateCheck = true;

                    Reward insertReward = new Reward(id, logincount, loginstreak, loyaltytier, totaldiscount, bonuscredits, membershiptier, creditbalance, remainbonusdays, loggedInLog, loggedInDate, newDateCheck);

                    insertReward.insertNewReward();

                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void CustomValidatorEmailExists_ServerValidate(object source, ServerValidateEventArgs args)
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

        private static List<string> CountryList()
        {
            List<string> list = new List<string>();

            CultureInfo[] getCultureInfo = CultureInfo.GetCultures(CultureTypes.SpecificCultures);

            foreach (CultureInfo getCulture in getCultureInfo)
            {
                RegionInfo regionInfo = new RegionInfo(getCulture.LCID);
                if (!(list.Contains(regionInfo.EnglishName)))
                {
                    list.Add(regionInfo.EnglishName);
                }
            }

            list.Sort();
            return list;
        }
    }
}