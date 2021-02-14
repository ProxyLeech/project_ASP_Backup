<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegister.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TouristHelp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure>
                            <img src="Images/signin-image.jpg" alt="sing up image">
                        </figure>
                        <a href="RegisterTourist.aspx" class="signup-image-link"><u>Create an account</u></a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign in</h2>
                        <form id="FormSignIn" class="register-form" runat="server">
                            <div class="form-group">
                                <asp:TextBox ID="tbEmail" runat="server" placeholder="Email Address"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="tbPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Email or password is wrong!" OnServerValidate="CustomValidator1_ServerValidate" ForeColor="Red" Display="Dynamic"></asp:CustomValidator>
                            <div class="form-group form-button">
                                <asp:Button ID="btnLogin" runat="server" Text="Log In" CssClass="form-submit" OnClick="btnLogin_Click" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>