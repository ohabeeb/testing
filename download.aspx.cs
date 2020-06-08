using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ABUPQAS
{
    public partial class download : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                if (Request.QueryString["pqid"] != null)
                {
                    Response.Clear();
                    Response.ContentType = "application/octect-stream";
                    Response.AppendHeader("content-disposition", "filename=" + Request.QueryString["pqid"].ToString());
                    Response.TransmitFile(Server.MapPath("~/pastqandsolutiondata/") + Request.QueryString["pqid"].ToString());
                    Response.End();
                }
               
                if (Request.QueryString["ctid"] != null)
                {
                    Response.Clear();
                    Response.ContentType = "application/octect-stream";
                    Response.AppendHeader("content-disposition", "filename=" + Request.QueryString["ctid"].ToString());
                    Response.TransmitFile(Server.MapPath("~/pastqandsolutiondata/") + Request.QueryString["ctid"].ToString());
                    Response.End();
                }

                if (Request.QueryString["sid"] != null && Session["UserName"] != null)
                {
                    Response.Clear();
                    Response.ContentType = "application/octect-stream";
                    Response.AppendHeader("content-disposition", "filename=" + Request.QueryString["sid"].ToString());
                    Response.TransmitFile(Server.MapPath("~/pastqandsolutiondata/") + Request.QueryString["sid"].ToString());
                    Response.End();
                }
                else
                {
                    Response.Redirect("Login.aspx?id=status");
                }
            }
        }


    }
}