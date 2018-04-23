<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.1, Version=11.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v11.1, Version=11.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<br />
			Filter the Category Name column by the "Dair?" string
			<br />
			Filter the Description column by the "*oft" string
			<br />
			<br />
			<dx:ASPxGridView ID="gvCategory" runat="server" DataSourceID="dsNWind" KeyFieldName="CategoryID"
				AutoGenerateColumns="False" OnProcessColumnAutoFilter="gvCategory_ProcessColumnAutoFilter">
				<Columns>
					<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="0">
						<Settings AllowAutoFilter="False" />
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
					</dx:GridViewDataTextColumn>
				</Columns>
				<SettingsPager Visible="False">
				</SettingsPager>
				<Settings ShowFilterRow="True" />
			</dx:ASPxGridView>
			<asp:AccessDataSource ID="dsNWind" runat="server" DataFile="~/App_Data/nwind.mdb"
				SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
			</asp:AccessDataSource>
		</div>
	</form>
</body>
</html>