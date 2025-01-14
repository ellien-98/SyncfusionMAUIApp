using Syncfusion.Maui.DataSource;
using System.Collections.ObjectModel;
namespace SyncfusionMAUIApp;
///<summary>
///ListViewFeatures class
///</summary>
public partial class ProductCategory : ContentPage
{
	///<summary>
    ///ListViewFeatures constructor
    ///</summary>
	public ProductCategory()
	{
		
	}


}

//porperties for the category
public class ListCategoryInfo{

    public string CategoryName{ get; set; }
    public string CategoryDescription { get; set; }
    public string CategoryImage{ get; set; }

}

public class ListCategoryRepository{

    public ListCategoryRepository(){

    }

    internal ObservableCollection<ListCategoryInfo> GetListCategories(){
        var listCategoryInfo= new ObservableCollection<ListCategoryInfo> ();
        var categories=new[]{
            new{
                CategoryName="Fashion",
                CategoryDescription="Buy Footwear, Clothing and Fashion Accessories online!",
                CategoryImage=""
            },
            new{
                CategoryName="Books",
                CategoryDescription="Books Description",
                CategoryImage=""
            },
            new{
                CategoryName="Electronics",
                CategoryDescription="Electronics Description",
                CategoryImage=""
            },
            new{
                CategoryName="Furniture",
                CategoryDescription="Furniture Description",
                CategoryImage=""
            },
            new{
                CategoryName="Home and Kitchen",
                CategoryDescription="Home and Kitchen Description",
                CategoryImage=""
            },
            new{
                CategoryName="Luggage",
                CategoryDescription="Luggage Description",
                CategoryImage=""
            },
            new{
                CategoryName="Toys",
                CategoryDescription="Toys Description",
                CategoryImage=""
            }
            ,
            new{
                CategoryName="Watches",
                CategoryDescription="Watches Description",
                CategoryImage=""
            }
        };
        for (int i=0; i<categories.Length; i++){
            var info=new ListCategoryInfo(){
                CategoryName=categories[i].CategoryName,
                CategoryDescription=categories[i].CategoryDescription,
                CategoryImage=categories[i].CategoryImage
            };
            listCategoryInfo.Add(info);
        }

        return listCategoryInfo;

    }

}


public class LinearLayoutViewModel{
    public LinearLayoutViewModel()
    {
        GenerateSource();
    }

    public ObservableCollection<ListCategoryInfo> ListCategoryDetails {get; set; }
    private void GenerateSource() {
        ListCategoryRepository categoryRepository=new ListCategoryRepository();
        ListCategoryDetails=categoryRepository.GetListCategories();
    }

}