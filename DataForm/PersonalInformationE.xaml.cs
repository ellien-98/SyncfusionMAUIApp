using System.ComponentModel.DataAnnotations;
using Syncfusion.Maui.DataForm;
using Syncfusion.Maui.SignaturePad;

namespace SyncfusionMAUIApp;

public partial class PersonalInformationE : ContentPage
{
	public PersonalInformationE()
	{
		InitializeComponent();
		
	}

    private void dataForm_GenerateDataFormItem (object sender, GenerateDataFormItemEventArgs e){
        
    }

	private void saveButton_Clicked(object sender, EventArgs e){
		this.dataForm.Validate();
	}
	

}

