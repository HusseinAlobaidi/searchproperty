using System;

namespace searchproperty
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.DataBind();
            lblToday.Text = DateTime.Now.DayOfWeek.ToString();
        }
    }
}