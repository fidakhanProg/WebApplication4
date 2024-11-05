<%@ Page Title="" Language="C#" MasterPageFile="~/Authenication/Admin master.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication4.Authenication.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function AllowAlphabet(e) {
            var isIE = document.all ? 1 : 0;
            var keyEntry = !isIE ? e.which : event.keyCode;
            if (((keyEntry >= '65') && (keyEntry <= '90')) || ((keyEntry >= '97') && (keyEntry <= '122')) || (keyEntry == '46') || (keyEntry == '32') || keyEntry == '45' || (keyEntry == '8'))
                return true;
            else
                return false;
        }

        function checkNum(evt) {
            var carCode = (evt.which) ? evt.which : event.keyCode;
            if (carCode > 31 && (carCode < 48 || carCode > 57)) {
                return false;
            }
        }
    </script>

    <style type="text/css">
      

        .registration-card {
            background-color:#1d1e22; /* Navy background for the registration card */
            color: white; /* White text for contrast */
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 350px; /* Fixed width for the card */
            text-align: center;
          
           
           
            
        }

        .title {
            font-weight: bold;
            margin-bottom: 10px;
        }

        .input-field {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 40%; /* Full width input */
            margin-bottom: 10px; /* Space between fields */
            background-color:darkgray; /* White background for input fields */
            color: black; /* Black text for input fields */
            justify-content:center;
            height:5px;
           
        }

        .button-row {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }

        .button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 3px 10px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
            margin: 2px 90px; /* Margin between buttons */
            width:100px;
            height:25px;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .register-link {
            color: #28a745;
            text-decoration: none;
            font-weight: bold;
            margin-left: 10px;
        }

        .error-message {
            color: #d9534f;
            margin-bottom: 10px;
        }
        p {
    margin: 0.1px 2px; /* Add some space above and below the paragraph */
    text-align: center; /* Center the text */
}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="registration-card" style="margin:0px 450px 0px ">
        <h4 class="title">New Registration</h4>
        <asp:Label ID="lbl_message" runat="server" Text="" CssClass="error-message"></asp:Label>
        <table style="width: 50%;">
            <tr>
                <td align="center" >User ID *</td>
                <td>
                    <asp:TextBox ID="txt_UID" runat="server" CssClass="input-field" Width="40%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">User Name *</td>
                <td>
                    <asp:TextBox ID="txt_uname" runat="server" CssClass="input-field" MaxLength="10" onkeypress="return AllowAlphabet(event);"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Password *</td>
                <td>
                    <asp:TextBox ID="txt_pwd" runat="server" CssClass="input-field" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Confirm Password *</td>
                <td>
                    <asp:TextBox ID="txt_cnpas" runat="server" CssClass="input-field" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Mob No# *</td>
                <td>
                    <asp:TextBox ID="txt_contact" runat="server" CssClass="input-field" onkeypress="return checkNum(event);"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">Email ID</td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server" CssClass="input-field"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email"
                        ErrorMessage="Invalid" SetFocusOnError="True" ToolTip="Valid Email ID"
                        ValidationExpression="^([a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]){1,70}$"
                        ValidationGroup="vg" Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center">Address *</td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" CssClass="input-field" MaxLength="30" onkeypress="return AllowAlphabet(event);"></asp:TextBox>
                </td>
            </tr>
          <tr>
    <td align="right">&nbsp;</td>
    <td class="button-row">
        <p style="display: inline; margin-right: 1px;">Don't have an account?</p>
        <asp:Button ID="btn_Save" runat="server" Text="Register" OnClick="btn_Save_Click" CssClass="button" />
    </td>
</tr>

             <tr>
            <td align="center" width="40%">&nbsp;</td>
            <td width="60%">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
               
            </td>
        </tr>
        </table>
         <p>Already have an account? <a href="Login.aspx" class="register-link">Login here</a></p>
    </div>
    
</asp:Content>
