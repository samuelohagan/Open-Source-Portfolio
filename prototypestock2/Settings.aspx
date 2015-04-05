<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="prototypestock2.Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="Content/Site.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css" media="screen" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
         
          </button>
          <a class="navbar-brand" href="#">ODIN</a>
        </div>
      
      </div>
    </nav>
     <div class="container-fluid" style="margin: 50px 20px 20px 50px;">
   
            <div style="border: 1px solid #a1a1a1; border-radius: 5px;" class="col-xs-12 col-lg-12">
                <h1>Enter Stock Tickers</h1>
                
               
                <asp:TextBox ID="Stock1" Cssclass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="Stock2" Cssclass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="Stock3" Cssclass="form-control" runat="server"></asp:TextBox>
                 
                <asp:TextBox ID="Stock4" Cssclass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="Stock5" Cssclass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="Stock6" Cssclass="form-control" runat="server"></asp:TextBox>

                <asp:Button ID="Button1"  Cssclass="btn" runat="server" Text="Save" OnClick="Button1_Click"/>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/onlinetool.aspx">Go Back</asp:HyperLink>
                
           

               
            </div>
         
         
    
    </div>
    </form>
</body>
</html>
