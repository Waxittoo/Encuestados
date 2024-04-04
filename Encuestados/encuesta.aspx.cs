using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Encuestados
{
    public partial class encuesta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }


        public static int rregistrar_click(object sender, EventArgs e)
        {
            // Obtener la cadena de conexión desde el archivo de configuración
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;

            // Crear la conexión a la base de datos
            using (SqlConnection conexion = new SqlConnection(connectionString))
            {
                // Abrir la conexión
                conexion.Open();

                // Definir la consulta SQL para insertar los datos en la tabla Encuestados
                string query = "INSERT INTO encuestas (Nombre, Apellido, FechaNacimiento, Edad, CorreoElectronico, CarroPropio) " +
                               "VALUES (@Nombre, @Apellido, @FechaNacimiento, @Edad, @CorreoElectronico, @CarroPropio)";

                // Crear el comando SQL con la consulta y la conexión
                SqlCommand comando = new SqlCommand(query, conexion);

                // Asignar valores a los parámetros de la consulta
                comando.Parameters.AddWithValue("@Nombre", Cnombre);
                comando.Parameters.AddWithValue("@Apellido", tapellido);
                comando.Parameters.AddWithValue("@FechaNacimiento", tfechaNacimiento);
                comando.Parameters.AddWithValue("@Edad", tedad);
                comando.Parameters.AddWithValue("@CorreoElectronico", tcorreo);
                comando.Parameters.AddWithValue("@CarroPropio", tcarroPropio); "si" : "no");

                // Ejecutar la consulta SQL
                comando.ExecuteNonQuery();

                // Cerrar la conexión
                conexion.Close();
            }

            // Limpiar los campos del formulario después de guardar los datos
         

            // Notificar al usuario que los datos se han guardado correctamente
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Los datos se han guardado correctamente.');", true);
        }


    }
}