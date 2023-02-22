using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using PSMS_web_application.Models;
namespace PSMS_web_application.DAL.Models
{
    public class SeasonPlantGetWay
    {
        SqlConnection con = new SqlConnection(Connection.GetConnectionSrting());

        public IQueryable<SeasonPlant> Get()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda=new SqlDataAdapter(@"SELECT*FROM SeasonPlant", con);

            sda.Fill(dt);
            return dt.AsEnumerable()
                .Select(r => new SeasonPlant
                {
                    S_ID = r.Field<int>("S_ID"),
                    PlantBySeason= r.Field<string>("PlantBySeason")
                }).AsQueryable();

        }
       
        public void Insert( SeasonPlant s)
        {
            SqlCommand cmd = new SqlCommand(@" INSERT INTO SeasonPlant VALUES(@n)", con);
            SqlParameter sqlParameter = cmd.Parameters.AddWithValue("@n", s.PlantBySeason);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}