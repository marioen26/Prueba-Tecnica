using System;
using System.Linq;
using System.Web.UI.WebControls;
using DAlClima;

namespace PruebaClima.Paginas
{
    public partial class ConsultarClima : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }

        }
        private void BindGrid()
        {
            using ( PruebaEntities entities = new PruebaEntities())
            {
                GridView1.DataSource = (from clima in entities.Climas
                                       select new { clima.Id,clima.CLI_TEMPERATURA,clima.CLI_HUMEDAD,clima.CLI_VISIBILIDAD}).ToList() ;
                GridView1.DataBind();
            }
        }

        protected void Insert(object sender, EventArgs e)
        {
            using (PruebaEntities entities = new PruebaEntities())
            {
                Clima clima = new Clima();
                {
                    clima.CLI_TEMPERATURA = txTemperatura.Text;
                    clima.CLI_HUMEDAD = txtHumedad.Text;
                    clima.CLI_VISIBILIDAD = txtVisibilidad.Text;   
                };
                entities.Climas.Add(clima);
                entities.SaveChanges();
            }

            this.BindGrid();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            this.BindGrid();
        }

        protected void OnRowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int customerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string CLI_TEMPERATURA = (row.FindControl("txtTemperatura") as TextBox).Text;
            string CLI_HUMEDAD = (row.FindControl("txtHumedad") as TextBox).Text;
            string CLI_VISIBILIDAD = (row.FindControl("txtVisibilidad") as TextBox).Text;

            using (PruebaEntities entities = new PruebaEntities())
            {
                Clima clima = (from c in entities.Climas
                                     where c.Id == customerId
                                     select c).FirstOrDefault();
                clima.CLI_TEMPERATURA = CLI_TEMPERATURA;
                clima.CLI_HUMEDAD = CLI_HUMEDAD;
                clima.CLI_VISIBILIDAD = CLI_VISIBILIDAD;
                entities.SaveChanges();
            }
            GridView1.EditIndex = -1;
            this.BindGrid();
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            {
                (e.Row.Cells[2].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            }

        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int customerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            using (PruebaEntities entities = new PruebaEntities())
            {
                Clima clima = (from c in entities.Climas
                                     where c.Id == customerId
                                     select c).FirstOrDefault();
                //entities.DeleteObject(clima);
                entities.SaveChanges();
            }
            this.BindGrid();

        }
    }
}