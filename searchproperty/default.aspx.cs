using System;

namespace searchproperty
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblToday.Text = DateTime.Now.DayOfWeek.ToString();
        }
    }
}