using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace TouristHelp
{
    public partial class SendMailToTourGuide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtTo.Text = (string)Session["SSEmail"];

        }

        protected void Sendbtn_Click(object sender, EventArgs e)
        {
            

            try
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("hakuhakutest11@gmail.com", "hakutest11");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = txtSub.Text;
                msg.Body = txtBody.Text;
                string toAddress = txtTo.Text;
                msg.To.Add(toAddress);
                string fromAddress = "hakuhakutest11@gmail.com";
                msg.From = new MailAddress(fromAddress);
                try
                {
                    smtp.Send(msg);
                }
                catch(Exception ex)
                {
                    Response.Write("could not send!" + ex.Message);

                }
            }
            catch(Exception ex)
            {
                Response.Write("could not send!" + ex.Message);

            }
        }
    }
}