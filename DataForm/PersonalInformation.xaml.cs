using System.ComponentModel.DataAnnotations;
using Syncfusion.Maui.DataForm;
using Syncfusion.Maui.SignaturePad;

namespace SyncfusionMAUIApp;

public partial class PersonalInformation : ContentPage
{
	public PersonalInformation()
	{
		InitializeComponent();
		this.dataForm.RegisterEditor("SendUpdates", DataFormEditorType.Switch);
		this.dataForm.RegisterEditor("SignUpForOffers", DataFormEditorType.Switch);
		this.dataForm.RegisterEditor("PreferredContact", DataFormEditorType.RadioGroup);
	}

	private void dataForm_GenerateDataFormItem(object sender, GenerateDataFormItemEventArgs e){
		if (e.DataFormItem != null){
			if (e.DataFormItem.FieldName == "Name"){
				e.DataFormItem.LeadingView = new Label{
					FontSize=18,
					FontFamily="InputLayoutIcons",
					HeightRequest=24,
					VerticalTextAlignment=TextAlignment.End,
					Text="F"
				};
			}

			else if (e.DataFormItem.FieldName == "ContactNumber" && e.DataFormItem is DataFormMaskedTextItem textEditorContact){
				e.DataFormItem.LeadingView = new Label{
					FontSize=18,
					FontFamily="InputLayoutIcons",
					HeightRequest=24,
					VerticalTextAlignment=TextAlignment.End,
					Text="E"
				};
				textEditorContact.Mask = "(+##) #### ######";
			}
			else if (e.DataFormItem.FieldName == "Phone" && e.DataFormItem is DataFormMaskedTextItem textEditorPhone){
				e.DataFormItem.LeadingView = new Label{
					FontSize=18,
					FontFamily="InputLayoutIcons",
					HeightRequest=24,
					VerticalTextAlignment=TextAlignment.End,
					Text="E"
				};
				textEditorPhone.Mask = "(+##) #### ######";
			}
			else if (e.DataFormItem.FieldName == "Address"){
				e.DataFormItem.LeadingView = new Label{
					FontSize=18,
					FontFamily="InputLayoutIcons",
					HeightRequest=24,
					VerticalTextAlignment=TextAlignment.End,
					Text="C"
				};
			}
			else if (e.DataFormItem.FieldName == "Email"){
				e.DataFormItem.LeadingView = new Label{
					FontSize=18,
					FontFamily="InputLayoutIcons",
					HeightRequest=24,
					VerticalTextAlignment=TextAlignment.End,
					Text="G"
				};
			}
			else if (e.DataFormItem.FieldName == "SignUpForOffers"){
				e.DataFormItem.LeadingView = new Label{
					FontSize=14,
					HeightRequest=24,
					VerticalTextAlignment=TextAlignment.End,
					Text="Signup For Offers"
				};
			}
			else if (e.DataFormItem.FieldName == "SendUpdates"){
				e.DataFormItem.LeadingView = new Label{
					FontSize=14,
					HeightRequest=24,
					VerticalTextAlignment=TextAlignment.End,
					Text="Send regular product updates"
				};
			}
			else if (e.DataFormItem.FieldName == "PreferredContact"){ 
				e.DataFormItem.LayoutType = DataFormLayoutType.Default;
			}
			else {
				e.DataFormItem.LeadingView = new Label{
					FontSize=18,
					FontFamily="InputLayoutIcons",
					HeightRequest=24,
					VerticalTextAlignment=TextAlignment.End
				};			
			}


		}
		
		
	}

	private void saveButton_Clicked(object sender, EventArgs e){
		this.dataForm.Validate();
	}

}

public enum Gender{
	Male,
	Female,
	Other
}

public enum ContactPreferences{
	LandLine, 
	Mobile,
	Other
}


public class ContactInfo{

	[Display(Name="First Name", GroupName = "Name", Prompt = "Enter your first name")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "First Name should not be empty")]
	[StringLength(15, ErrorMessage = "Maximum characters for first name are: 15")]
	public string Name {get; set; }
	[Display(Name="Last Name", GroupName = "Name", Prompt = "Enter your last name")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "Last Name should not be empty")]
	[StringLength(15, ErrorMessage = "Maximum characters for last name are: 15")]
	public string LastName {get; set; }

	[Display(Name="Password", GroupName = "Name", Prompt = "Enter your password")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "password should not be empty")]
	[StringLength(12, ErrorMessage = "Maximum characters for Password are: 12")]
	[DataType(DataType.Password)]
	public string Password {get; set; }

	[Display(Name="Gender", GroupName = "Name")]
	public Gender Gender {get; set; }

	[Display(Name="Land Line", GroupName = "Phone", Prompt = "Enter your Contact Number")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "Contact Number should not be empty")]
	[DataType(DataType.PhoneNumber)]
	public string ContactNumber {get; set; }

	[Display(Name="Mobile", GroupName = "Phone", Prompt = "Enter your Mobile")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "Mobile should not be empty")]
	[DataType(DataType.PhoneNumber)]
	public string Phone {get; set; }

	[Display(GroupName = "Address Details")]	
	[Required(AllowEmptyStrings = false, ErrorMessage = "Address should not be empty")]
	[DataType(DataType.MultilineText)]
	public string Address {get; set; }

	[Display(GroupName = "Address Details")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "City should not be empty")]
	public string City {get; set; }

	[Display(GroupName = "Address Details")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "Region should not be empty")]
	public string Region {get; set; }

	[Display(GroupName = "Address Details", Prompt = "Postal Code should not be empty")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "Postal Code should not be empty")]
	[DataType(DataType.PostalCode)]
	public string PostalCode {get; set; }

	[Display(GroupName = "Address Details", Prompt = "Enter Country")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "Country should not be empty")]
	public string Country {get; set; }

	[Display(GroupName = "Address Details", Prompt = "Enter Fax")]
	[Required(AllowEmptyStrings = false, ErrorMessage = "Fax should not be empty")]
	public string Fax {get; set; }

	[Display(GroupName = "Mail")]
	public string Email {get; set; }

	[Display(Name = "Sign Up For Offers", GroupName = "Preferences")]
	public Boolean SignUpForOffers {get; set; }

	[Display(Name = "Send regular product updates", GroupName = "Preferences")]
	public Boolean SendUpdates {get; set; }

	[Display(Name = "Preferred Contact Number", GroupName = "Preferences")]
	public ContactPreferences PreferredContact {get; set; }

}

public class DataFormViewModelPI{
	public ContactInfo ContactInfo {get; set; }
	public DataFormViewModelPI(){
		this.ContactInfo = new ContactInfo();
	}

}