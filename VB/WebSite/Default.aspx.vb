Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Data.Filtering

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub gvCategory_ProcessColumnAutoFilter(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridView.ASPxGridViewAutoFilterEventArgs)
		If e.Column.FieldName = "CategoryName" OrElse e.Column.FieldName = "Description" Then
			Dim value As String
			Select Case e.Kind
				Case GridViewAutoFilterEventKind.CreateCriteria
					value = e.Value.Replace("*", "%").Replace("?", "_")
					If (Not String.IsNullOrEmpty(value)) Then
						value = "%" & value & "%"
						e.Criteria = New BinaryOperator(e.Column.FieldName, value, BinaryOperatorType.Like)
					Else
						e.Criteria = Nothing
					End If
				Case GridViewAutoFilterEventKind.ExtractDisplayText
					value = CStr((TryCast((TryCast(e.Criteria, BinaryOperator)).RightOperand, OperandValue)).Value)
					value = value.Replace("%", "*").Replace("_", "?")
					value = value.Trim("*"c, "?"c)
					e.Value = value
			End Select
		End If
	End Sub
End Class
