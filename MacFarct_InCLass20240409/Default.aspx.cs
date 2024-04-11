using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MacFarct_InCLass20240409
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) 
            { 
            lbFruits.Items.Add("Strawberry");
                // This Should Only run once when the page is initially loaded in the browser
            }
        }

        protected void lbFruits_SelectedIndexChanged(object sender, EventArgs e)
        {
          // this code runs when the user selects a new item from the lbFruits List Box
          // Copy the currently selected item from the list box into our label 
          lblChosenFruit.Text = lbFruits.SelectedValue;   
        }

        // i need an event that will run when the user
        // in their browser selects a fruit from the list box
    }
}