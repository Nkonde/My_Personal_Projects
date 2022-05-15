<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="wasuchem.login" %>


<asp:Content>
    <head>
  
    

    
        <title>Login</title>
    
        <!--====== FAVICON ICON =======-->
        <link rel="shortcut icon" type="image/ico" href="assest/img/favicon.png" />
    
        <!--====== STYLESHEETS ======-->
        <link href="assest/css/plugins.css" rel="stylesheet">
        <link href="assest/css/theme.css" rel="stylesheet">
        <link href="assest/css/icons.css" rel="stylesheet">
        <link href="assest/css/loginStyle.css" rel="stylesheet">
    
        <!--====== MAIN STYLESHEETS ======-->
        <link href="assest/css/responsive.css" rel="stylesheet">
    
        <script src="assest/js/vendor/modernizr-2.8.3.min.js"></script>
        <!--[if lt IE 9]>
            <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
    </head>
    <body>
        <form runat="server">
            <div class="loginH">
                <h1>Login</h1>
              </div>
              <div class="container">
               
                <input type="email" placeholder="Email" id="email" runat="server" name="uname" required> 
                <input type="password" placeholder="Password" id="password" runat="server" name="psw" required>
                <button runat="server" onserverclick="Login_Click" type="submit">Login</button>
              
                  <br>
                  <br>
                  <asp:Label ID="error" runat="server" Text="Wrong password or email." Visible="false"></asp:Label>
              </div>    
        </form>
        
    </body>
</asp:Content>

