<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login___Registration.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css' />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-g5rz6onJn2ezrF+Yp31MrAnBbFCx5h/fmauHTnXz+JptkKewtDWtOUZBOzP7W2M8" crossorigin="anonymous"></script>

    <link href="dist/sweetalert2.min.css" rel="stylesheet">
    


    <script src="dist/sweetalert2.min.js"></script>
    <style>
    
        body {
            background-image: url('<%= ResolveUrl("~/assets/bg.jpg") %>') ; 
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            margin: 0;


        }
        
        .login-container {
            background-color: rgb(0, 0, 0,0.1); 
            padding: 20px;
            border-radius: 10px;
          
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">

            <div class="container ">

                <div class="col-md-4 mx-auto">




                    <div class="login-container mt-4">
                        <h2 class="text-white">Please Login..</h2>


                        <asp:TextBox runat="server" ID="username" placeholder="Enter your Username" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="username" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="is Required"></asp:RequiredFieldValidator>

                        <br />

                        <asp:TextBox runat="server" ID="password" placeholder="Enter your Password " TextMode="Password"  CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="password" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage=" is Required"></asp:RequiredFieldValidator>

                        <br />

                        <asp:Button ID="LoginBtn" runat="server" OnClick="LoginBtn_Click" CssClass="btn btn-primary btn-block" Text="Login" />
                        <br />
                    </div>
                </div>
            </div>


        </div>

    </form>
</body>
</html>
