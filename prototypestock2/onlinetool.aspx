<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onlinetool.aspx.cs" Inherits="prototypestock2.onlinetool" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="Content/Site.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css" media="screen" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button class="navbar-toggle collapsed" aria-expanded="false" aria-controls="navbar" type="button" data-toggle="collapse" data-target="#navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">OSP.IO</a>
        </div>
        <div class="collapse navbar-collapse" id="navbar">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

   <div class="container-fluid" style="margin: 50px 20px 20px 50px;">
    <!-- this is for the first part-->
        <!--<div class="row" id="PortfolioWithGraph" style="margin-bottom: 50px">-->
            <!--This is for the Current Portfolio-->
            <div style="border: 1px solid #a1a1a1; border-radius: 5px; background-color:white;"class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
                <h1>Current Portfolio</h1>
                <h2><asp:Label ID="TickerOneName" runat="server" Text=""></asp:Label><asp:Label ID="Price1"  runat="server" Width="70%" Style="text-align: right"></asp:Label></h2>
                <h2><asp:Label ID="TickerTwoName" runat="server" Text=""></asp:Label><asp:Label ID="Price2" runat="server" Text="" Width="70%" Style="text-align: right"></asp:Label></h2>
                <h2><asp:Label ID="TickerThreeName" runat="server" Text=""></asp:Label><asp:Label ID="Price3" runat="server" Text="" Width="70%" Style="text-align: right"></asp:Label></h2>
                <h2><asp:Label ID="TickerFourName" runat="server" Text=""></asp:Label><asp:Label ID="Price4" runat="server" Text="" Width="70%" Style="text-align: right"></asp:Label></h2>
                <h2><asp:Label ID="TickerFiveName" runat="server" Text=""></asp:Label><asp:Label ID="Price5" runat="server" Text="" Width="70%" Style="text-align: right"></asp:Label></h2>
                <h2><asp:Label ID="TickerSixName" runat="server" Text=""></asp:Label><asp:Label ID="Price6" runat="server" Text="" Width="70%" Style="text-align: right"></asp:Label></h2>
                <h2><asp:Label ID="Label1" runat="server" Text=""></asp:Label><asp:Label ID="Label2" runat="server" Text="" Width="70%" Style="text-align: right"></asp:Label></h2>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Settings.aspx">Change Portfolio</asp:HyperLink>
                
            </div>


             <!--This is for the unified graph-->
            <div style="border: 1px solid #a1a1a1; border-radius: 5px; background-color:white;" class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
                <h1>Portfolio Graph</h1>
                <div id="chartdiv" style="overflow-x: scroll;">
                <asp:Chart ID="Chart1" runat="server" Height="400px" Width="1300px" IsSoftShadows="False" Palette="None" PaletteCustomColors="24, 188, 156" TextAntiAliasingQuality="Normal">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Area"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                            <AxisX IsMarginVisible="False">
                            </AxisX>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                </div>
            </div>
        <!--</div>-->
    <!-- this is for the second part-->
      <!--  <div class="row" style="margin-bottom: 50px">-->
            <!--This is for the Stock verifyer-->
            <div style="border: 1px solid #a1a1a1; border-radius: 5px;" class="col-xs-12 col-sm-6 col-lg-8">

                <h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis bibendum nibh erat, quis elementum ligula eleifend nec. 
                    Morbi nec erat iaculis augue iaculis consectetur. Praesent nec tellus vulputate, interdum nisi nec, interdum ligula. 
                    Sed elementum ac dolor a fermentum. Praesent posuere commodo augue, vel sodales dolor tempor ac. Morbi quis ex neque. 
                    Curabitur ut consequat diam. Cras suscipit euismod mauris, ut suscipit quam tempor eget. Sed dignissim, libero at vehicula tincidunt, 
                    purus sem rutrum elit, in euismod magna ipsum ac lectus. Proin non libero dolor. </h1>
                </div>
             <!--This is for the Dice Rolling Thing-->
                <div style="border: 1px solid #a1a1a1; border-radius: 5px;" class="col-xs-8 col-sm-6 col-lg-4">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/dice.png" />
                    <br />
                    <br />
                    <br />
                <h1>>aLorem </h1>
            </div>
            
       <!-- </div>-->
    <!-- this is for the monte carlo simulator-->
        <div class="row" style="margin-bottom: 50px">
        <!--This is for the Enter variables-->
                <div style="border: 1px solid #a1a1a1; border-radius: 5px;" class="col-xs-12 col-lg-4">
                <h1>>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis bibendum nibh erat, quis elementum ligula eleifend nec. Morbi 
                    nec erat iaculis augue iaculis consectetur. Praesent nec tellus vulputate, interdum nisi nec, 
                    interdum ligula. Sed elementum ac dolor a fermentum. Tushar </h1>
            </div>
        <!--This is for the Resulting Graphs-->
                <div style="border: 1px solid #a1a1a1; border-radius: 5px;" class="col-xs-12 col-lg-4">
                <h1>>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis bibendum nibh erat, quis elementum ligula eleifend nec. Morbi 
                    nec erat iaculis augue iaculis consectetur. Praesent nec tellus vulputate, interdum nisi nec, 
                    interdum ligula. Sed elementum ac dolor a fermentum. Tushar </h1>
            </div>
      <!--This is for the Percentile Results-->
                <div style="border: 1px solid #a1a1a1; border-radius: 5px;" class="col-xs-12 col-lg-4">
                <h1>>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis bibendum nibh erat, quis elementum ligula eleifend nec. Morbi 
                    nec erat iaculis augue iaculis consectetur. Praesent nec tellus vulputate, interdum nisi nec, 
                    interdum ligula. Sed elementum ac dolor a fermentum. Tushar </h1>
            </div>
        </div>
      </div>

 <script class="code" language="javascript" type="text/javascript">
    $(document).ready(function () {
        var window_width = $(window).width() - 280;
        $("#chartdiv").css("width", window_width + "px");
    });

    $(window).resize(function () {
        var window_width = $(window).width() - 280;
        $("#chartdiv").css("width", window_width + "px");
    });
</script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  

   </div>
    </form>
    
</body>
    
</html>
