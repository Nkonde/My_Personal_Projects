<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="wasuchem.registration" %>


<asp:Content>
    <head>
  
    

    
        <title>register</title>
    
        <!--====== FAVICON ICON =======-->
        <link rel="shortcut icon" type="image/ico" href="assest/img/favicon.png" />
    
        <!--====== STYLESHEETS ======-->
        <link href="assest/css/plugins.css" rel="stylesheet">
        <link href="assest/css/theme.css" rel="stylesheet">
        <link href="assest/css/icons.css" rel="stylesheet">
        <link href="assest/css/loginStyle.css" rel="stylesheet">
    
        
        <link href="loginStyle.css" rel="stylesheet">
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
                <h1>Add new Student</h1>
              </div>
              <div class="container">
               
                <input type="email" placeholder="Email" runat="server" id="email" name="uname" required> 
                <input type="text" placeholder="Name" runat="server" id="name"  required> 
                <input type="number" placeholder="ID number"  runat="server" id="idnumber" required> 
                <input type="number" placeholder="grade" id="grade" runat="server" required> 
                <input type="password" placeholder="Password" name="psw" runat="server" id="password" required>
                <input type="password" placeholder="Confirm Password" runat="server" id="confirmpassword" name="psw" required>
                
                   <button runat="server" onserverclick="Register_Click" type="submit">Regiser A new Student</button>
              
                    <br/>
                  <asp:Label ID="error" runat="server"  Visible="false"></asp:Label>
              </div>    
        </form>
    </body>
    
</asp:Content>


