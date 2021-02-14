<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegister.Master" AutoEventWireup="true" CodeBehind="RegisterTourist.aspx.cs" Inherits="TouristHelp.RegisterTourist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">Sign up as a Tourist</h2>
                    <form class="register-form" id="FormRegister" runat="server">
                        <div class="form-group">
                            <label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="*" ControlToValidate="tbNameTourist" ForeColor="Red"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="tbNameTourist" runat="server" placeholder="Your Name"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="*" ControlToValidate="tbEmailTourist" ForeColor="Red"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="tbEmailTourist" runat="server" placeholder="Your Email" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblNation" runat="server" Text="Nationality: "></asp:Label>
                            <asp:DropDownList ID="ddlNation" runat="server">
                            </asp:DropDownList>
                            <asp:CompareValidator ID="CompareValidatorNationality" runat="server" ErrorMessage="*" ValueToCompare='-- Select --' Operator="NotEqual" ControlToValidate="ddlNation" ForeColor="Red"></asp:CompareValidator>
                        </div>
                        <div class="form-group">
                            <label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbPasswordTourist"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="tbPasswordTourist" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorRepeatPswd" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbRepeatPassTourist"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="tbRepeatPassTourist" runat="server" TextMode="Password" placeholder="Repeat Password"></asp:TextBox>
                        </div>
                            <asp:CustomValidator ID="CustomValidatorEmailExists" runat="server" ErrorMessage="Email has been used for another account!" ForeColor="Red" ControlToValidate="tbEmailTourist" OnServerValidate="CustomValidatorEmailExists_ServerValidate" Display="Dynamic"></asp:CustomValidator>
                            <br />
                            <asp:CompareValidator ID="CompareValidatorPasswords" runat="server" ErrorMessage="Passwords must match!" ControlToValidate="tbPasswordTourist" ControlToCompare="tbRepeatPassTourist" Operator="Equal" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                        <div class="form-group form-button">
                            <asp:Button ID="btnSignupTourist" runat="server" Text="Register" CssClass="form-submit" OnClick="btnSignupTourist_Click" />
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure>
                        <img src="Images/signup-image.jpg" alt="sign up image">
                    </figure>
                    <a class="signup-image-link" href="Login.aspx"><u>I have already signed up</u></a>
                    <a class="signup-image-link" href="RegisterTG.aspx"><u>I want to sign up as a Tour Guide</u></a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>