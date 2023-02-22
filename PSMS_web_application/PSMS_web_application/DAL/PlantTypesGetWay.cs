using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using PSMS_web_application.Models;

namespace PSMS_web_application.DAL.Models
{
    public class PlantTypesGetWay
    {
        SqlConnection con = new SqlConnection(Connection.GetConnectionSrting());

        public IQueryable<PlantTypes> Get()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(@"SELECT*FROM PlantTypes", con);
            sda.Fill(dt);
            return dt.AsEnumerable()
                .Select(r => new PlantTypes
                {
                    ID = r.Field<int>("ID"),
                    Planttype = r.Field<string>("PlantType")


                }).AsQueryable();
        }
        public void Insert(PlantTypes p)
        {

            SqlCommand cmd = new SqlCommand(@" INSERT INTO PlantTypes VALUES(@n)", con);
            SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@n", p.Planttype);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

        }

    }
}