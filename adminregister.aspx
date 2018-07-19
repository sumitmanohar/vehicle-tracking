<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminregister.aspx.cs" Inherits="adminregister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ValidateAlpha(evt) {
            var keyCode = (evt.which) ? evt.which : evt.keyCode
            if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
                return false;
            return true;
        }
    </script>
    <style type="text/css">
       
       #heading
        {
         background-color:black;   
        
         height:50px;
         width:100%;
         color:White;
        font-size:30px;
        text-align:center;
        font-weight:bold;
       
      
        }
        
       body
       {
           background-image:url("image/re.jpg");
            background-attachment:fixed;
        background-position:center;
        background-repeat:no-repeat;
        background-size:cover; 
        height:100%;
       }
      
         #form1
        {
            height: 500px;
           
            
        }
        .style1
        {
            width: 11px;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div id="heading">
    <asp:Label ID="Label9" runat="server" Text="Label">REGISTRATION FORM</asp:Label>
   
</div>
    
    <form id="form1" runat="server">
    
    
    <div>
    <table style="margin:0 auto;margin-top:200px;color:White;text-align:center; ">
    <tr>
    <td>
    
        <asp:Label ID="Label1" runat="server" Text="Username :"></asp:Label>
    
       
    
    </td>
    <td colspan="2">
    <asp:TextBox ID="TextBox1" runat="server" Columns="50" onKeyPress="return ValidateAlpha(event)"></asp:TextBox>
        
         </td>
               <td>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                       ControlToValidate="TextBox1" ErrorMessage="Please enter username" 
                       ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
        &nbsp;<asp:Label ID="Label8" runat="server" Text="Already user exist" 
                    Visible="False"></asp:Label>
    
                 
    
    </td>
    </tr>
    
    <tr>
    <td>
    
        <asp:Label ID="Label2" runat="server" Text="Password :" ></asp:Label>
    
        
    
    </td>
    <td colspan="2">
    
        <asp:TextBox ID="TextBox2" runat="server" Columns="50"></asp:TextBox>
     </td>
               <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
    
                 
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label3" runat="server" Text="Re-Type Password :" ></asp:Label>
    
     
    
    </td>
    <td colspan="2">
    
        <asp:TextBox ID="TextBox3" runat="server" Columns="50"></asp:TextBox>
         </td>
               <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password incorrect"></asp:CompareValidator>
    
                 
    
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label4" runat="server" Text="Address :" ></asp:Label>
    
    </td>
    <td colspan="2">
    
        <asp:TextBox ID="TextBox4" runat="server" Columns="50" TextMode="MultiLine"></asp:TextBox>
         </td>
               <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Please enter address"></asp:RequiredFieldValidator>
                  
     </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label5" runat="server" Text="Contact Number :" ></asp:Label>
    
    
    </td>
    <td colspan="2">
    
        <asp:TextBox ID="TextBox5" runat="server" Columns="50"></asp:TextBox>
     </td>
               <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Please enter contact number"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Please enter correct mobile number" 
            ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
    
               
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label6" runat="server" Text="Email ID :"></asp:Label>
    
       
    </td>
    <td colspan="2">
    
        <asp:TextBox ID="TextBox6" runat="server" Columns="50"></asp:TextBox>
     </td>
               <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Please enter email id"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Please enter correct email id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    
                   
    </td>
    </tr>
    <tr>
    <td>
    
        <asp:Label ID="Label7" runat="server" Text="Age :"></asp:Label>
    
      
    </td>
    <td colspan="2">
    
        <asp:TextBox ID="TextBox7" runat="server" Columns="50" 
            onKeyPress='return event.charCode>=48 && event.charCode<=57' MaxLength="2" ></asp:TextBox>
        </td>
               <td>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                       ControlToValidate="TextBox7" ErrorMessage="Please enter age" 
                       ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
    
                 
    </td>
    </tr>
    <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" class="btn btn-outline-warning " style="width:390px;" />
            </td>
            <td>
                
            </td>
        </tr>
        <tr><td></td><td colspan="2"><asp:Button ID="Button2" runat="server" Text="Back" onclick="Button2_Click" 
                   class="btn btn-outline-warning" style="width:390px;" CausesValidation="False" /></td></tr>
    </table>
    </div>
    </form>
</body>
</html>
