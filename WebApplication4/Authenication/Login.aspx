<%@ Page Title="" Language="C#" MasterPageFile="~/Authenication/Admin master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.Authenication.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
      

        
         .login-card {
    background-image: url(../images/login3.jpg);
    color: white;
    border-radius: 8px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3); /* Adjusted shadow */
    padding: 10px;
    width: 300px;
    text-align: center;
    margin-right: 1000px;
    justify-content: center;
    align-items: center;
}


        .title {
            font-weight: bold;
            margin-bottom: 10px;
        }

        .subtitle {
            color: #ffcc00; /* Light color for subtitle for visibility */
            margin-bottom: 20px;
        }

        .label {
            text-align:center;
            padding: 10px;
            font-weight: 600;
            color: white; /* Label text in white for contrast */
        }

        .input-field {
            padding: 4px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 60%;
            margin-bottom: 1px;
            margin:3px;
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
            padding: 10px 15px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s;
            margin: 10px 5px;
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
        .register-link{
            margin:20px 15px 0px;
            
        }
    </style>

    <div class="login-card" style="margin:50px 450px 0px">
        <h4 class="title">The FK Spot</h4>
        <h4 class="subtitle">Please Login</h4>
        <asp:Label ID="lbl_loginMessage" runat="server" Text="" CssClass="error-message"></asp:Label>
        <table>
            <tr>
                <td class="label">User Name *</td>
                <td>
                    <asp:TextBox ID="txt_loginUsername" runat="server" CssClass="input-field"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="label">Password *</td>
                <td>
                    <asp:TextBox ID="txt_loginPassword" runat="server" TextMode="Password" CssClass="input-field"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-row">
                    <asp:Button ID="btn_Login" runat="server" Text="Login" OnClick="btn_Login_Click" CssClass="button" />
                  <!--  <a href="Registration.aspx" class="register-link" > Register</a>-->
                </td>
            </tr>

            <tr>
            <td align="center" width="40%">&nbsp;</td>
            <td width="60%">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                 <br />
              <asp:Button ID="btn_Register" runat="server" Text="Login" OnClick="btn_Register_Click" Visible="false" Width="100px" 
                     ValidationGroup="vg"/>
            </td>
        </tr>

        </table>
         <p>No Account Please Click on <a href="Registration.aspx" class="register-link">Register</a></p>
    </div>

</asp:Content>
