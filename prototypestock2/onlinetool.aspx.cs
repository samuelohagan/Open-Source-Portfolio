using prototypestock2.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace prototypestock2
{
    public partial class onlinetool : System.Web.UI.Page
    {
      


        protected void Page_Load(object sender, EventArgs e)
        {
            //This Gets the six stock names
            string TickerOne = GlobalVar.StockGlobalTicker1;
            string TickerTwo = GlobalVar.StockGlobalTicker2;
            string TickerThree = GlobalVar.StockGlobalTicker3;
            string TickerFour = GlobalVar.StockGlobalTicker4;
            string TickerFive = GlobalVar.StockGlobalTicker5;
            string TickerSix = GlobalVar.StockGlobalTicker6;
            string[] AllTickers = new string[7];
            int a = 0;
            //This builds the array
            //1
            if (TickerOne == "")
            {
                
            }
            else
            {
                a = a + 1;
                AllTickers[a] = TickerOne;
                
            }
            //2
            if (TickerTwo == "")
            {
                
            }
            else
            {
                a = a + 1;
                AllTickers[a] = TickerTwo;
               
            }
            //3
            if (TickerThree == "")
            {

            }
            else
            {
                a = a + 1;
                AllTickers[a] = TickerThree;
               
            }
            //4
            if (TickerFour == "")
            {

            }
            else
            {
                a = a + 1;
                AllTickers[a] = TickerFour;
                
            }
            //5
            if (TickerFive == "")
            {

            }
            else
            {
                a = a + 1;
                AllTickers[a] = TickerFive;
               
            }
            //6
            if (TickerSix == "")
            {

            }
            else
            {
                a = a + 1;
                AllTickers[a] = TickerSix;
                
               
            }
            string[] stockQuotesResults = new string[7];
            string[] stockHistoricalResults = new string[7];
            int b = 0;
            string[] price = new string[7];
            double[] change = new double[7];
            
            double[,] HistoricalPrices = new double[7,400];
            
            int allpricesumloop = 0;
            
            //downloads all the stock quotes and apply them
            int NumOfHistorical = 0;
            if (AllTickers[1] == null)
            
            {

            }
            else
            {
                double startingtime = Convert.ToDouble(DateTime.Today.ToString("yyyy")) - 1;
                while (b < a)
                
                {

                    b = b + 1;
                    int historicalloop = 0;
                    string stockSymbol = AllTickers[b];


                    string stockQuotesurl = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22" + stockSymbol + "%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=";


                    string stockHistorical = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.historicaldata%20where%20symbol%20%3D%20%22" + stockSymbol + "%22%20and%20startDate%20%3D%20%22" + 2014 + "-" + 03 + "-" + 28 + "%22%20and%20endDate%20%3D%20%22" + 2015 + "-" + 03 + "-" + 28 + "%22&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=";
                   
                    using (WebClient wc = new WebClient())
                       

                    {


                        stockQuotesResults[b] = wc.DownloadString(stockQuotesurl.ToString());
                        stockHistoricalResults[b] = wc.DownloadString(stockHistorical.ToString());
                    }
                    
                    JObject dataObjectquotes = JObject.Parse(stockQuotesResults[b]);
                    JObject dataObjectprices = JObject.Parse(stockHistoricalResults[b]);
                    price[b] = (string)dataObjectquotes["query"]["results"]["quote"]["Open"];
                    change[b] = (double)dataObjectquotes["query"]["results"]["quote"]["Change"];
                    NumOfHistorical = (int)dataObjectprices["query"]["count"];
                    while (historicalloop < NumOfHistorical)
                     
                    {
                        HistoricalPrices[b, historicalloop] = (double)dataObjectprices["query"]["results"]["quote"][historicalloop]["Open"];
                        
                        Debug.WriteLine(b);
                       historicalloop = historicalloop + 1;
                    }
                   
               
                   

                }
                //this is where we build the graph
                double[] CombinedPrice = new double[NumOfHistorical];
                while (allpricesumloop < NumOfHistorical)
                {
                    //adding them all up
                    CombinedPrice[allpricesumloop] = HistoricalPrices[1, allpricesumloop] + HistoricalPrices[2, allpricesumloop] + HistoricalPrices[3, allpricesumloop] + HistoricalPrices[4, allpricesumloop] + HistoricalPrices[5, allpricesumloop] + HistoricalPrices[6, allpricesumloop];
                    allpricesumloop = allpricesumloop + 1;
                }
                //define the graph
                Debug.WriteLine(CombinedPrice[0]);
                Debug.WriteLine(CombinedPrice[1]);
                //Chart1.DataSource = CombinedPrice;
                Array.Reverse(CombinedPrice);
                Chart1.Series["Series1"].Points.DataBindY(CombinedPrice);
                Chart1.ChartAreas["ChartArea1"].AxisY.IsStartedFromZero = false;






                if (change[1] < 0)
                {
                    Price1.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F61F3D");
                }
                else
                {
                    Price1.ForeColor = System.Drawing.ColorTranslator.FromHtml("#18bc9c");
                }
                //2
                if (change[2] < 0)
                {
                Price2.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F61F3D");
                }
                else
                {
                Price2.ForeColor = System.Drawing.ColorTranslator.FromHtml("#18bc9c");
                //3
                }
                if (change[3] < 0)
                {
                Price3.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F61F3D");
                }
                else
                {
                Price3.ForeColor = System.Drawing.ColorTranslator.FromHtml("#18bc9c");

                }
                //4

                if (change[4] < 0)
                {
                    Price4.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F61F3D");
                }
                else
                {
                    Price4.ForeColor = System.Drawing.ColorTranslator.FromHtml("#18bc9c");

                }
                //5


                if (change[5] < 0)
                {
                    Price5.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F61F3D");
                }
                else
                {
                    Price5.ForeColor = System.Drawing.ColorTranslator.FromHtml("#18bc9c");

                }
                //6

                if (change[6] < 0)
                {
                    Price6.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F61F3D");
                }
                else
                {
                    Price6.ForeColor = System.Drawing.ColorTranslator.FromHtml("#18bc9c");

                }
                Price1.Text = Convert.ToString(price[1]);
                Price2.Text = Convert.ToString(price[2]);
                Price3.Text = Convert.ToString(price[3]);
                Price4.Text = Convert.ToString(price[4]);
                Price5.Text = Convert.ToString(price[5]);
                Price6.Text = Convert.ToString(price[6]);
                TickerOneName.Text = AllTickers[1] + "     ";
                TickerTwoName.Text = AllTickers[2] + "     ";
                TickerThreeName.Text = AllTickers[3] + "     ";
                TickerFourName.Text = AllTickers[4] + "     ";
                TickerFiveName.Text = AllTickers[5] + "     ";
                TickerSixName.Text = AllTickers[6] + "     ";
                
                
            }

        }






    }
}