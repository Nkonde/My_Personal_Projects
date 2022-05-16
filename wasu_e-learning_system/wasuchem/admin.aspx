<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="wasuchem.admin" %>



<asp:Content>
    <head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
</head>
<body>
      <form runat="server">

    <div class="jumbotron">
        <h1 class="display-4">Welcome, MR Musonza</h1>
        <p class="lead">Admin Management</p>
        <hr class="my-4">
        <hr class="my-4">

      

     
        <div class="alert alert-primary" role="alert">
           Add Notes
          </div>
            <input type="file" id="myFile" name="filename">
            <input type="submit">
            <hr class="my-4">
            <div class="alert alert-primary" role="alert">
                Notice Board Message 
               </div> 

               <textarea id="w3review" name="w3review" rows="4" cols="50">
                </textarea>
                <br><br>
                <input type="submit" value="Submit">
                
                <hr class="my-4">
                <button type="button" class="btn btn-primary">Add book Products</button>
                <br>
                <div class="alert alert-primary" role="alert">
                    Register A new Student.
                   </div> 
                   <button runat="server" onserverclick="Add_Click" type="submit">Add new student</button>
            </div>
       </form>
</body>
</asp:Content>