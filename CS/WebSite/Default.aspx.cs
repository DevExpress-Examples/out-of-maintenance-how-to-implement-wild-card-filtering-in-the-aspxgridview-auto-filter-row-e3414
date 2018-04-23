using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxGridView;
using DevExpress.Data.Filtering;

public partial class _Default : System.Web.UI.Page 
{
    protected void gvCategory_ProcessColumnAutoFilter(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewAutoFilterEventArgs e) {
        if (e.Column.FieldName == "CategoryName" || e.Column.FieldName == "Description") {
            string value;
            switch (e.Kind) {
                case GridViewAutoFilterEventKind.CreateCriteria:
                    value = e.Value.Replace("*", "%").Replace("?", "_");
                    if (!String.IsNullOrEmpty(value)) {
                        value = "%" + value + "%";
                        e.Criteria = new BinaryOperator(e.Column.FieldName, value, BinaryOperatorType.Like);
                    }
                    else {
                        e.Criteria = null;
                    }
                    break;
                case GridViewAutoFilterEventKind.ExtractDisplayText:
                    value = (string)((e.Criteria as BinaryOperator).RightOperand as OperandValue).Value;
                    value = value.Replace("%", "*").Replace("_", "?");
                    value = value.Trim('*', '?');
                    e.Value = value;
                    break;
            }
        }
    }
}
