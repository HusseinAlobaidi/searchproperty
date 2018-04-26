using System;
using searchproperty.DataAccess;

namespace searchproperty
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.DataBind();
            lblToday.Text = DateTime.Now.DayOfWeek.ToString();
        }

        protected void btnSaveMainDet_Click(object sender, EventArgs e)
        {
            if (CheckFieldsValidation())
            {
                ADO ado = new ADO();
                idHiddenField.Value =ado.InsertMainDetails(txtBookNo.Text, txtBookDate.Text, txtHereInsightOffice.Text, txtInformedOffice.Text,
                    txtPropertyNo.Text, txtDistrict.Text).ToString();
            }
        }

        private bool CheckFieldsValidation()
        {
            DateTime dtBookDate;
            if (txtBookNo.Text == string.Empty)
            {
                lblBookNo.Text = "يجب ادخال رقم الكتاب";
                txtBookNo.Focus();
                return false;
            }
            else if (txtBookDate.Text == string.Empty)
            {
                lblBookDate.Text = "يجب ادخال تاريخ الكتاب";
                txtBookDate.Focus();
                return false;
            }
            else if (!DateTime.TryParse(txtBookDate.Text, out dtBookDate))
            {
                lblBookDate.Text = "خطاً في التاريخ";
                txtBookDate.Focus();
                return false;
            }
            else if (txtHereInsightOffice.Text == string.Empty)
            {
                lblHereInsightOffice.Text = "يجب ادخال الجهة الوارد منه الكتاب";
                txtHereInsightOffice.Focus();
                return false;
            }
            else if (txtInformedOffice.Text == string.Empty)
            {
                lblInformedOffice.Text = "يجب ادخال الجهة المستعلمة عن العقار";
                txtInformedOffice.Focus();
                return false;
            }
            else if (txtPropertyNo.Text == string.Empty)
            {
                lblPropertyNo.Text = "يجب ادخال رقم القطعة";
                txtPropertyNo.Focus();
                return false;
            }            
            else
            {
                return true;
            }
        }
    }
}