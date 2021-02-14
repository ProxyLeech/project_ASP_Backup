﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TouristHelp.BLL;

namespace TouristHelp
{
    public partial class TicketClaim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ticketCode = Request.QueryString["Code"];
            Ticket ticket = new Ticket();
            ticket.ClaimTicket(ticketCode);
            lbTixCode.Text = ticketCode;
        }
    }
}