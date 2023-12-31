<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\subcategory;
use App\Models\Services;
use App\Models\Childcategory;
use App\Models\Blog;


class IndexController extends Controller
{


function serviceDetailsPage($id){

    $details = Services::find($id);

    return view('frontend.previewpage.previewService',['details'=>$details]);
}//end



    public function index(){



        view('frontend.index');
    }



    public function ServicesDetails($id){
		Services::find($id)->increment('views');
		$services = Services::findOrFail($id);


		$cat_id = $services->category_id;
	 	return view('frontend.services.service_details',compact('services'));

	}

	public function ViewBlog($id){
		Blog::find($id)->increment('views');
		$blogs = Blog::findOrFail($id);
	 	return view('frontend.blog.blog_view',compact('blogs'));

	}
	// Subcategory wise data
	public function SubCatWiseServices(Request $request, $subcat_id,$slug){

        $subCategory = Services::where('subcategory_id', $subcat_id)->get();

		// $services = Services::where('status',1)->where('subcategory_id',$subcat_id)->orderBy('id','DESC');
		// $categories = Category::orderBy('category_name','ASC')->get();
		// $breadsubcat = subcategory::with(['category'])->where('id',$subcat_id)->get();
		return view('frontend.services.subcat_view',compact('subCategory'));

	}



     // Childcategory wise data
	public function ChildCatWiseServices($childcat_id,$slug){
		$services = Services::where('status',1)->where('childcategory_id',$childcat_id)->orderBy('id','DESC');
		$categories = Category::orderBy('category_name','ASC')->get();
		$subcategory = SubCategory::orderBy('subcategory_name','ASC')->get();
		$childcategory = Childcategory::with(['category','subcategory'])->where('id',$childcat_id)->get();

		return view('frontend.services.child_view',compact('services','categories','childcategory'));

	} //end





}
