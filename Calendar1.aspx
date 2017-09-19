<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Calendar1.aspx.cs" Inherits="baruchalumn.WebForm3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div>
         <asp:Calendar runat="server" ID="calEvents" OnDayRender="calEvents_DayRender" OnVisibleMonthChanged="calEvents_VisibleMonthChanged" />
    </div>
    </form>
</asp:Content>
