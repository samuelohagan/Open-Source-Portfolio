using prototypestock2.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Diagnostics;

namespace prototypestock2
{
    public partial class Settings : System.Web.UI.Page

    {

        public string stockticker1 = "";
        public string stockticker2 = "";
        public string stockticker3 = "";
        public string stockticker4 = "";
        public string stockticker5 = "";
        public string stockticker6 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
       
       
        //public string stuff1()

        //{
           
            //stockticker1 = Stock1.Text;
            //return stockticker1;

        //}
        //public string stuff2()
        //{
            //stockticker2 = Stock2.Text;
           // return stockticker2;

        //}
        //public string stuff3()
        //{
            //stockticker3 = Stock3.Text;
            //return stockticker3;
        //}
        //public string stuff4()
        //{
            //stockticker4 = Stock4.Text;
            //return stockticker4;
        //}
        //public string stuff5()
        //{
            //stockticker5 = Stock5.Text;
            //return stockticker5;
        //}
        //public string stuff6()
        //{

            //stockticker6 = Stock6.Text;
            //return stockticker6;

        //}


        protected void Button1_Click(object sender, EventArgs e)
        {
            //stuff1();
            //stuff2();
            //stuff3();
            //stuff4();
            //stuff5();
            //stuff6();
         //load ticker 1
             string ticker1 = Stock1.Text;
             GlobalVar.StockGlobalTicker1 = ticker1;
            //load ticker 2
            string ticker2 = Stock2.Text;
            GlobalVar.StockGlobalTicker2 = ticker2;
            //load ticker 3
            string ticker3 = Stock3.Text;
            GlobalVar.StockGlobalTicker3 = ticker3;
            //load ticker 4
            string ticker4 = Stock4.Text;
            GlobalVar.StockGlobalTicker4 = ticker4;
            //load ticker 5
            string ticker5 = Stock5.Text;
            GlobalVar.StockGlobalTicker5 = ticker5;
            //load ticker 6
            string ticker6 = Stock6.Text;
            GlobalVar.StockGlobalTicker6 = ticker6;
            


        }

     
    }
}