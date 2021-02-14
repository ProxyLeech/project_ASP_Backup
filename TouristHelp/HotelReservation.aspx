﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HotelReservation.aspx.cs" Inherits="TouristHelp.HotelReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <asp:Label ID="Label1" Visible="false" runat="server" Text=""></asp:Label>

      <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg align-items-center">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-6">
                    <div class="breadcrumb_tittle text-left">
                        <h2>Hotel Transaction</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="breadcrumb_content text-right">
                        <p>Hotel Transaction</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->




    
               <asp:Label ID="Label2" runat="server" Text=""></asp:Label>



    <span class="select-wrap one-third">
               <asp:Label ID="transactionLabel"   runat="server" Text="Your Hotel Transaction"></asp:Label>
                                
	               <%--    <asp:DropDownList ID="region"  class="form-control" style="width:20%;margin-left:41%;" placeholder="Region"   runat="server" AutoPostBack="True">
                                                            <asp:ListItem Selected="False" Value="Newest"></asp:ListItem>
                                                            <asp:ListItem>Oldest</asp:ListItem>
                                                       
  
                                                        </asp:DropDownList>--%>
	                  </span>


      <form id="frm" runat="server">
                
           <asp:DropDownList ID="filterTrans"  class="form-control"   style="width:20%;margin-left:41%;"   placeholder="Newest"   runat="server" AutoPostBack="True">
                                                            <asp:ListItem Selected="False" Value="Newest"></asp:ListItem>
                                                            <asp:ListItem>Oldest</asp:ListItem>
                                                       
  
                                                        </asp:DropDownList>
                            



          <style>             
              span#ContentPlaceHolder1_transactionLabel{
                  font-size:30px;
                  color:cornflowerblue;
                  margin-left:45%;

              }

              select.form-control{
                  margin-left:50%;
              }
          </style>



          






      <table>
<tr>
<td>
                                  <asp:Repeater ID="repeatHotelTrans" runat="server" EnableViewState="false" OnItemCommand="repeatHotelTrans_ItemCommand" >


                                      <ItemTemplate>
                                       <div class="row">
                                                     

                                     <asp:Label ID="hotelGenIdLbl" CssClass="col-1" runat="server" Text='<%#Eval("hotelGen_Id") %>'></asp:Label>
                                     
                                           <asp:Label ID="hotelNameLbl" CssClass="col-2" runat="server" Text='<%#Eval("hotelName") %>'></asp:Label>


                                          <asp:Label ID="totalCostLbl" CssClass="col-1" runat="server" Text='<%#Eval("totalCost") %>'></asp:Label>


                                        <asp:Label ID="roomQtyLbl" CssClass="col-1" runat="server" Text='<%#Eval("roomQty") %>'></asp:Label>

                                              <asp:Label ID="reserveDurationLbl" CssClass="col-2" runat="server" Text='<%#Eval("reserveDate") %>'></asp:Label>



                                     

                                           <asp:Label ID="hotelStatus" CssClass="col-2" runat="server" Text='<%#Eval("hotelPaid") %>'></asp:Label>



                                             <asp:Button ID="getQRcode"  CssClass="col-2"  runat="server" Text="Get QR Code" />

                                                                       <asp:HiddenField runat="server" ID="HiddenField1" Value='<%#Eval("stayDuration") %>' />

                                            <asp:HiddenField runat="server" ID="getCode" Value='<%#Eval("verifyHotel") %>' />



                                           </div>
                                           </ItemTemplate>

                                  



                         


                                      <HeaderTemplate>
                    <div class="row">

                                     <asp:Label ID="hotelGenIdLbl" CssClass="col-1" runat="server" Text="Hotel Id:"></asp:Label>
                                              
                                    <asp:Label ID="hotelNameLbl" CssClass="col-2" runat="server" Text="Hotel Name:"></asp:Label>

                                        <asp:Label ID="totalCostLbl" CssClass="col-1" runat="server" Text="Total Cost:"></asp:Label>


                                        <asp:Label ID="roomQtyLbl" CssClass="col-1" runat="server" Text="Room quantity:"></asp:Label>


                                        <asp:Label ID="stayDurationLbl" CssClass="col-2" runat="server" Text="Duration:"></asp:Label>



                              <asp:Label ID="hotelStatus" CssClass="col-2" runat="server" Text="Status"></asp:Label>

                              <asp:Label ID="verifyHotelLbl" CssClass="col-2" runat="server" Text="Verification Code"></asp:Label>
                                

                                     

              
                                                            </div>
                                          </HeaderTemplate>

                                           </asp:Repeater>
</td>


</tr>
</table>










<%--                                    <div class="row">

                                     <asp:Label ID="voucherIdLabel" CssClass="col-2" runat="server" Text="Product Id:"></asp:Label>

                                        <asp:Label ID="voucherNameLabel" CssClass="col-2" runat="server" Text="Product Name:"></asp:Label>


                                        <asp:Label ID="voucherQuantityLabel" CssClass="col-1" runat="server" Text="Quantity:"></asp:Label>

                                        <asp:Label ID="dateLabel" CssClass="col-2" runat="server" Text="Date:"></asp:Label>

                                      <asp:Label ID="expiryDateLabel" CssClass="col-2" runat="server" Text="Expiry Date"></asp:Label>

                              <asp:Label ID="shopPriceLabel" CssClass="col-1" runat="server" Text="Price(Cost)"></asp:Label>


                                         <asp:Label ID="voucherStatusLabel" CssClass="col-1" runat="server" Text="Status"></asp:Label>


                               <asp:Label ID="confirmCodeLabel" CssClass="col-1" runat="server" Text="Code Verification"></asp:Label>



              
                                                            </div>

              
                                                    <div class="row">
                                                     

                                     <asp:Label ID="voucherGen_id" CssClass="col-2" runat="server" Text=""></asp:Label>


                                          <asp:Label ID="voucherName" CssClass="col-2" runat="server" Text=""></asp:Label>


                                        <asp:Label ID="voucherQty" CssClass="col-1" runat="server" Text=""></asp:Label>

                                        <asp:Label ID="voucherDate" CssClass="col-2" runat="server" Text=""></asp:Label>

                                      <asp:Label ID="voucherExpiry" CssClass="col-2" runat="server" Text=""></asp:Label>

                              <asp:Label ID="voucherTotalCost" CssClass="col-1" runat="server" Text=""></asp:Label>


                                         <asp:Label ID="voucherStats" CssClass="col-1" runat="server" Text=""></asp:Label>


                               <asp:Label ID="confirmCode" CssClass="col-1" runat="server" Text=""></asp:Label>



                                                      

                                                                                        </div>--%>



                  

            


                  







            </form>
       <style>
    span.menu ul li  {
            display: inline-block;
            height: 100%;
            padding: 0 1rem;
            text-align: center;
            font-size:25px;
            padding-left:230px;
        }

span.menu a {
  text-decoration: none;
  position: relative;
  top: 50%;
  margin-top:100px;
  transform: translateY(-50%);
  display: inline-block;
  vertical-align: middle;
  line-height: normal;

}




div.position{

    width:200px;
    text-align:right;
}

.form-group{
   display: inline-block;
   margin-right: 10px;
   float:left;
}

.form-group label{
   display: block;
}


div.row {

    margin-top:30px;
}

form#frm
{
    text-align:center;
    margin-left:30%;
}


ul{



}

 li.active {
            margin-left:20%;
        }

       </style>


</asp:Content>
