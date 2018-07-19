<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
       body
       {
        background-image:url("image/pexels-photo-248159.jpeg"); 
        
         background-attachment:fixed;
        background-position:center;
        background-repeat:no-repeat;
        background-size:cover; 
        height:100%;
       }
       table{
        color:White;
        font-size:30px;
        text-align:center;
        font-weight:bold;
       }
        #form1
        {
            height: 370px;
           
            
        }
       
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div id="tbody">

    <form id="form1" runat="server">
    
 
        
   
    <div >
    <table style="margin-left:350px;margin-top:250px;" >
   
    

    <tr>
    
    <td>
    
        <asp:Label ID="Label4" runat="server" Text="Username :"></asp:Label>
        </td>
        <td colspan="2">
        <asp:TextBox ID="TextBox1" runat="server" style="height:40px;"></asp:TextBox>
         </td>
               <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Please enter username"></asp:RequiredFieldValidator>
        </td>
        </tr>
        <tr>
        <td>
        <asp:Label ID="Label3" runat="server" Text="Password :" ></asp:Label>
        </td>
        <td colspan="2">
        <asp:TextBox ID="TextBox2" runat="server" style="height:40px;" TextMode="Password"></asp:TextBox>
         </td>
               <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
    </td>
        </tr>
        <tr>
        <td>
        &nbsp;
        </td>
        <td>
        
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" class="btn btn-outline-danger " style="width:350px;" Text="Login"  />
        
        </td>
        </tr>
    <tr>
        <td>
        &nbsp;
        </td>
        <td>
        
           
        
            <asp:Label ID="Label5" runat="server" Text="Not a Member?"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" 
                NavigateUrl="~/adminregister.aspx" style="color:#e74c3c;text-decoration:none;">Register Now</asp:HyperLink>
        
           
        
        </td>
        </tr>
      
    </table>
    </div>
    </form>
    </div>
</body>
</html>
