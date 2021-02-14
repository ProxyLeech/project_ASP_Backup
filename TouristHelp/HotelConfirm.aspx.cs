﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TouristHelp.BLL;

namespace TouristHelp
{
    public partial class HotelConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string hotelCode = Request.QueryString["Code"];
            int code = Convert.ToInt32(hotelCode);
            HotelTrans hotelVerify = new HotelTrans();
            hotelVerify.hotelverify(hotelCode);
            lblHotelCode.Text = hotelCode;

        }
    }
}