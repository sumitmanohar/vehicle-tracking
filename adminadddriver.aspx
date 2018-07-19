<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="adminadddriver.aspx.cs" Inherits="adminadddriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function ValidateAlpha(evt) {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
            return false;
        return true;
    }
    </script>
    <style type="text/css">
        .style1
        {
            width: 153px;
            
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 101%;">
        <tr>
            <td>
                &nbsp;
            </td>
            <td class="style1">
               &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Username :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server" onKeyPress="return ValidateAlpha(event)"></asp:TextBox>
                 </td>
               <td>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                       ControlToValidate="TextBox1" ErrorMessage="Please enter username" 
                       ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
                <asp:Label ID="Label1" runat="server" Text="Already user exist" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Password :</td>
            <td class="style1">
            
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
               <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please enter password" 
                    ValidationGroup="h"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Re-Type Password :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
               <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Please enter password" 
                    ValidationGroup="h"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password incorrect" 
                    ValidationGroup="h"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Address :</td>
            <td class="style1">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                 </td>
               <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Please enter address" 
                    ValidationGroup="h"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
        <td>
           Contact Number :</td>
           <td class="style1">

               <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
               <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                   ErrorMessage="Please enter contact number" ControlToValidate="TextBox5" 
                   ValidationGroup="h"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                   ControlToValidate="TextBox5" ErrorMessage="Please enter correct mobile number" 
                    ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="h"></asp:RegularExpressionValidator>

                   

           </td>
           
           </tr>
           <tr>
        <td>
           Email ID :</td>
           <td class="style1">

               <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
               <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                   ErrorMessage="Please enter email id" ControlToValidate="TextBox6" 
                   ValidationGroup="h"></asp:RequiredFieldValidator>

               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                   ControlToValidate="TextBox6" ErrorMessage="Enter correct email id" 
                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                   ValidationGroup="h"></asp:RegularExpressionValidator>

           </td>
           
           </tr>
           <tr>
        <td>
           Age :</td>
           <td class="style1">

               <asp:TextBox ID="TextBox7" runat="server" onKeyPress='return event.charCode>=48 && event.charCode<=57'></asp:TextBox>
               </td>
               <td>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                       ErrorMessage="Please enter age" ValidationExpression="^\d+$" 
                       ControlToValidate="TextBox7"></asp:RegularExpressionValidator>

           </td>
           
           </tr>
           <tr>
        <td>
           Vehicle Number :</td>
           <td class="style1">

               <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
               </td>
               <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                   ControlToValidate="TextBox8" ErrorMessage="Please enter vehicle number" 
                   ValidationGroup="h"></asp:RequiredFieldValidator>

           </td>
           
           </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" class="btn btn-outline-success"
                  style="width:180px;"  ValidationGroup="h" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
 
</asp:Content>

