using Syncfusion.Maui.DataSource;
namespace SyncfusionMAUIApp;
///<summary>
///ListViewFeatures class
///</summary>
public partial class ListViewFeatures : ContentPage
{
	///<summary>
    ///ListViewFeatures constructor
    ///</summary>
	public ListViewFeatures()
	{
		InitializeComponent();
		 listView?.DataSource?.GroupDescriptors.Add(new GroupDescriptor()
		{
			PropertyName = "ContactName",
			KeySelector = (object obj1) =>
			{
				var item = (obj1 as ListViewContactsInfo);
				if(item!=null){
					return item.ContactName[0].ToString();
				}
				else{
					return string.Empty;
				}
			},
		});
	}
}
