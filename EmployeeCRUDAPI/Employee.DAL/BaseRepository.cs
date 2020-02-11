using Dapper;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Employee.DAL
{
    public class BaseRepository
    {
        private string ConnectionString { get; set; }


        public BaseRepository(IConfiguration configuration)
        {
            ConnectionString = configuration["ConnectionString:DefaultConnection"];
        }

        public List<T> GetList<T>(string spName, DynamicParameters dynamicParameters) where T : class
        {
            List<T> list = new List<T>();

            using (SqlConnection sqlConnection = new SqlConnection(ConnectionString))
            {

                list = sqlConnection.Query<T>(spName, dynamicParameters, commandType: CommandType.StoredProcedure).AsList();
            }

            return list;

        }

        public T InsertRepo<T>(string spName, DynamicParameters dynamicParameters) where T : class
        {
            T t = null;
            using (SqlConnection sqlConnection = new SqlConnection(ConnectionString))
            {
                t = sqlConnection.QuerySingleOrDefault<T>(spName, dynamicParameters, commandType: CommandType.StoredProcedure);
            }

            return t;
        }

        /// <summary>
        /// this Method will delete the record on the basis of id Only.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="spName"></param>
        /// <param name="dynamicParameters"></param>
        /// <returns></returns>
        public T DeleteRepo<T>(string spName, DynamicParameters dynamicParameters) where T : class
        {
            T t = null;
            using (SqlConnection sqlConnection = new SqlConnection(ConnectionString))
            {
                t = sqlConnection.QuerySingleOrDefault<T>(spName, dynamicParameters, commandType: CommandType.StoredProcedure);
            }

            return t;
        }
    }
}
