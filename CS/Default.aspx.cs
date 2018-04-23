using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxClasses;
using DevExpress.Web.ASPxEditors;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack && ASPxEdit.ValidateEditorsInContainer(ASPxFormLayout1))
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    @"<script type=""text/javascript"">setTimeout(function() { alert('You have successfully registered'); }, 0);</script>");
    }
}