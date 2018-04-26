using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace searchproperty.DataAccess
{
    public class ADO
    {
        public int InsertMainDetails(string BookNo, string BookDate, string HereInsightOffice, string InformedOffice, 
            string PropertyNo, string District)
        {
            Int32 id;
            string sql= "sp_InsertMainDetails";
            using (SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["SearchProperty"].ConnectionString))
            {
                cnn.Open();
                using (SqlCommand cmd = new SqlCommand(sql, cnn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@BookNo", SqlDbType.NVarChar, 50).Value = BookNo;
                    if (!string.IsNullOrEmpty(BookDate)) { cmd.Parameters.Add("@BookDate", SqlDbType.DateTime).Value = Convert.ToDateTime(BookDate); }
                    cmd.Parameters.Add("@HereInsightOffice", SqlDbType.NVarChar, 250).Value = HereInsightOffice;
                    cmd.Parameters.Add("@InformedOffice", SqlDbType.NVarChar, 250).Value = InformedOffice;
                    cmd.Parameters.Add("@UserId", SqlDbType.UniqueIdentifier).Value = new Guid("a12a98a9-887f-498c-bbf2-006909530c88");
                    cmd.Parameters.Add("@PropertyNo", SqlDbType.NVarChar, 100).Value = PropertyNo;
                    cmd.Parameters.Add("@DistrictNo", SqlDbType.NVarChar, 150).Value = District;
                    id = Convert.ToInt32( cmd.ExecuteScalar());
                }
            }
            return id;
        }
    }
}