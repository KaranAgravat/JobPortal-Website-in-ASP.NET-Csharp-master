<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Jobwale - Login/Register</title>
    <style>
        body { font-family: Arial; background:#f7f7f7; }
        .container { max-width: 400px; margin: 80px auto; background: #fff; padding: 30px; border-radius: 10px; }
        h2 { text-align: center; margin-bottom: 20px; }
        .inputBx { margin-bottom: 15px; }
        .inputBx input { width: 100%; padding: 10px; font-size: 16px; }
        .btn-login, .btn-register { width: 100%; padding: 10px; margin-top: 10px; background: #007bff; color: #fff; border: none; cursor: pointer; }
        .btn-register { background: #28a745; }
        .links { text-align: center; margin-top: 10px; }
        .error { color: red; text-align: center; margin-bottom: 10px; }
        .success { color: green; text-align: center; margin-bottom: 10px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Login</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>

            <div class="inputBx">
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
            </div>
            <div class="inputBx">
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
            <div class="inputBx">
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnLogin_Click" />
            </div>

            <div class="links">
                <asp:Label ID="lblRegisterSuccess" runat="server" CssClass="success"></asp:Label>
            </div>
            <hr />
            <h2>Register</h2>
            <div class="inputBx">
                <asp:TextBox ID="txtRegUsername" runat="server" placeholder="Username"></asp:TextBox>
            </div>
            <div class="inputBx">
                <asp:TextBox ID="txtRegPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
            <div class="inputBx">
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn-register" OnClick="btnRegister_Click" />
            </div>
        </div>

        <script runat="server">
            // Use simple in-memory storage (for demo). Replace with DB for real apps.
            static Dictionary<string, string> users = new Dictionary<string, string>();

            protected void btnRegister_Click(object sender, EventArgs e)
            {
                string username = txtRegUsername.Text.Trim();
                string password = txtRegPassword.Text.Trim();

                if (username == "" || password == "")
                {
                    lblMessage.Text = "Please fill all fields!";
                    lblRegisterSuccess.Text = "";
                    return;
                }

                if (users.ContainsKey(username))
                {
                    lblMessage.Text = "Username already exists!";
                    lblRegisterSuccess.Text = "";
                }
                else
                {
                    users[username] = password;
                    lblRegisterSuccess.Text = "Registration successful! You can login now.";
                    lblMessage.Text = "";
                    txtRegUsername.Text = "";
                    txtRegPassword.Text = "";
                }
            }

            protected void btnLogin_Click(object sender, EventArgs e)
            {
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text.Trim();

                if (users.ContainsKey(username) && users[username] == password)
                {
                    Session["Username"] = username;
                    lblMessage.Text = "";
                    Response.Redirect("index.aspx"); // redirect to homepage
                }
                else
                {
                    lblMessage.Text = "Invalid username or password!";
                }
            }
        </script>
    </form>
</body>
</html>
