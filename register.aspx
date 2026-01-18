<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Jobwale.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="style.css" rel="stylesheet" />
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="square">
            <i style="--clr: #00ff0a;"></i>
            <i style="--clr: #ff0057;"></i>
            <i style="--clr: #fffd44;"></i>
            <div class="login">
                <h2>Register</h2>
                <div class="inputBx">
                    <asp:TextBox ID="txtUserName" runat="server" placeholder="Username"></asp:TextBox>
                </div>
                <div class="inputBx">
                    <asp:TextBox ID="txtFirstName" runat="server" placeholder="FirstName"></asp:TextBox>
                </div>
               <%-- <div class="inputBx">
                    <asp:TextBox ID="txtMiddleName" runat="server" placeholder="MiddleName"></asp:TextBox>
                </div>--%>
                <div class="inputBx">
                    <asp:TextBox ID="txtLastName" runat="server" placeholder="LastName"></asp:TextBox>
                </div>
                <div class="inputBx">
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                </div>
                <div class="inputBx">

                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>
                <%--<div class="inputBx">
                    <asp:TextBox ID="txtGender" runat="server" placeholder="Gender"></asp:TextBox>
                </div>--%>
                <%--<div class="inputBx">
                    <asp:TextBox ID="txtDOB" runat="server" placeholder="DOB" TextMode="Date"></asp:TextBox>
                </div>--%>
                <%--<div class="inputBx">
                    <asp:TextBox ID="txtMobile" runat="server" placeholder="ContactNo."></asp:TextBox>
                </div>--%>
                <div class="inputBx">
                   
                    <asp:Button ID="BtnRegister" runat="server" Text="Register" />
                </div>
                <div class="links">
                    <a href="index.aspx">Home</a>
                    <a href="login.aspx">login</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
