<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# How to implement wild-card filtering in the ASPxGridView Auto Filter Row


<p><strong>From</strong><strong> </strong><strong>v2011 vol 1</strong><strong> </strong><strong>to</strong><strong> </strong><strong>v201</strong><strong>2</strong><strong> vol </strong><strong>1</strong><br />
Starting with v2011 vol 1 wildcards ("%", "_", "*", "?") are no longer supported in the auto-filter row.  We have migrated to new  filter criteria such as  StartsWith, EndsWith, and Contains.  See the <a href="http://www.devexpress.com/Support/WhatsNew/DXperience/files/11.1.4.bc.xml#BC1125"><u>Breaking Changes in v2011 vol 1.4</u></a> list for a more detailed description.  Still, some users may want to utilize an old-style approach and input wildcard characters in the auto-filter row.  ASPxGridView allows you to do this by handing its <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridView_ProcessColumnAutoFiltertopic"><u>ProcessColumnAutoFilter</u></a> event.  Within its handler you can check the filter input string for "*" and "?" characters, and compose a new filter criterion using <a href="http://documentation.devexpress.com/#XPO/CustomDocument2129"><u>criteria operators</u></a> supported by our data library.  This sample illustrates a simplifies approach for string fields.</p><p><strong>From</strong><strong> v201</strong><strong>2</strong><strong> vol</strong><strong> </strong><strong>2</strong><strong> and later</strong><br />
Starting with v2012 vol 2 we have returned support for using wildcards in the grid's <a href="http://documentation.devexpress.com/#AspNet/CustomDocument3753"><u>Auto Filter Row</u></a>. The new LIKE operator, which supports wildcards,  has been added to the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewAutoFilterConditionEnumtopic"><u>AutoFilterCondition</u></a> enumeration as a separate operator. The availability of this menu item is optional; by default the item is not displayed. The item's availability is controlled by the following properties:</p><p>- The grid's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridViewSettings_ShowFilterRowMenuLikeItemtopic"><u>Settings.ShowFilterRowMenuLikeItem</u></a> property;</p><p>- A grid column's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewGridViewDataColumnSettings_ShowFilterRowMenuLikeItemtopic"><u>Settings.ShowFilterRowMenuLikeItem</u></a> property.</p><p>Note that now we provide support only for wildcards that are specific to our binary LIKE operator - (these are the '%' and '_' wildcard symbols), see <a href="http://documentation.devexpress.com/#XPO/CustomDocument4928"><u>Criteria Language Syntax</u></a> to learn more.</p>

<br/>


