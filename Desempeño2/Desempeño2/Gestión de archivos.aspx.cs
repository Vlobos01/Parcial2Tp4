using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI.WebControls;

namespace Desempeño2
{
    public partial class Gestión_de_archivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGrilla();
        }
          

        public void cargarGrilla()
        {
            string path = $"{Server.MapPath(".")}/{Session["Nombre"]}";
            if (Directory.Exists(path))
            {
                string[] files = Directory.GetFiles(path);  
                List<Archivo> fileList = new List<Archivo>();
                foreach(string file in files)
                {
                    var fileNew = new Archivo(Path.GetFileName(file), file);
                    fileList.Add(fileNew);
                }
                GridView1.DataSource = fileList;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = string.Empty;

            if(FileUpload1.HasFiles)
            {
                string path = $"{Server.MapPath(".")}/{Session["Nombre"]}";

                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }

                foreach (HttpPostedFile archivo in FileUpload1.PostedFiles)
                {
                    if (File.Exists($"{path}/{archivo.FileName}"))
                    {
                        Label1.Text += $" El archivo {archivo.FileName} ya existe -";
                    }
                    else
                    {
                        FileUpload1.SaveAs($"{path}/{archivo.FileName}");
                    }

                }
                cargarGrilla();
            }
            else
            {
                Label1.Text = "Por favor, selecciona al menos un archivo.";
            }
               
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Descargar")
            {
                GridViewRow registro = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
                string filePath = registro.Cells[2].Text;
                filePath = HttpUtility.HtmlDecode(filePath);//tuve que agregar esta linea ya que coloque un Ñ en el nombre del proyecto y no me dejaba realizar la descarga

                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
        }
    }
}