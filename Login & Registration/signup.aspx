<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Login___Registration.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
        
    <link href="dist/sweetalert2.min.css" rel="stylesheet"/>


     <style>
  
      body {
          background-image: url('<%= ResolveUrl("~/assets/London.jpg") %>') ; 
          background-size: cover;
          background-position: center;
          background-attachment: fixed;
          height: 100vh;
          margin: 0;

      }
      
      
      .login-container {
          background-color: rgb(0, 0, 0,0.3); /* Adjust transparency here */
          padding: 20px;
          border-radius: 10px;
        
      }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">

            <div class="container mt-5">

                <div class="col-md-4 mx-auto">

                   <%-- <div class="login-container text-white mt-5 text-center bg-primary border rounde">
                        <br />
                        <h2>Please Register</h2>

                    </div>--%>


                    <div class="login-container mt-3">

                        <h2 class=" text-white">Please Sign Up...</h2>


                    <asp:TextBox runat="server" ID="name" placeholder="Enter your Name" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="name" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="name is Required"></asp:RequiredFieldValidator>
                    

                    <br />
                    <asp:TextBox runat="server" ID="username" placeholder="Enter your Username" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="username" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="username is Required"></asp:RequiredFieldValidator>

                    <br />
                    <asp:TextBox runat="server" ID="email" placeholder="Enter your Email" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="email" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="email is Required"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"    ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />

                    <asp:TextBox runat="server" ID="password" placeholder="Enter your Password " TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="password"  SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="password" runat="server" ValidationExpression="^(?=.*[A-Z])(?=.*[!@#$%^&*()-_=+{};:,<.>]).*\d.*$" ErrorMessage="Strong Password Required"></asp:RegularExpressionValidator>
                   
                    <br />
                    <br />


                    <asp:Button ID="SignupBtn" OnClick="SignupBtn_Click" runat="server" CssClass="btn btn-primary btn-block" Text="Sign Up" />
                    <br />
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
    <script src="/jquery.min.js"></script>

</html>
