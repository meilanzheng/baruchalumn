<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="baruchalumn.pages.WebForm1" %>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="content">

	<div class="container">
  <div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h4 style = "color:#00008B">BECOME AN ALPHA NOW!</h4>
                <p> Please fill out all the required text fields* </p>
                <form class="contactForm" runat="server">

                    <div class="form-group" >
                        <label>First Name</label>
                        <asp:TextBox ID="RFname" runat="server" class="form-control"></asp:TextBox>
                        <div class="validation"></div>
                    </div>

                    <div class="form-group" >
                        <label>Last Name</label>
                        <asp:TextBox ID="RLname" runat="server" class="form-control"></asp:TextBox>
                        <div class="validation"></div>
                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        <asp:TextBox ID="REmail" runat="server" class="form-control"></asp:TextBox>
                         <asp:RegularExpressionValidator ValidationExpression="^\w+([-+.']\w+)*@domain.com$" SetFocusOnError="true" ID="EmailCusValidator" ErrorMessage="invalid email" runat="server" ControlToValidate="REmail" />
                        <div class="validation"></div>
                    </div>

                     <div class="form-group">
                         <label>User Name</label>
                         <asp:TextBox ID="RUName" runat="server" class="form-control" CausesValidation="False"></asp:TextBox>
                        <div class="validation"></div>
                    </div>

                     <div class="form-group">
                         <label>Password</label>
                         <asp:TextBox ID="RPassword" runat="server" class="form-control" Visible="True" type="password"></asp:TextBox>
                        <div class="validation"></div>
                    </div>

                    <div class="text-center"><asp:Button ID="btnRegister" runat="server" OnClick="Button_registration" Text="Sign Up" class="btn btn-theme" /></div>
                    <div class="text-center"><asp:Label ID="lbl1" runat="server"></asp:Label></div>
              </form>
			</div>
		</div>
	</div>
	</section>
</asp:Content>

