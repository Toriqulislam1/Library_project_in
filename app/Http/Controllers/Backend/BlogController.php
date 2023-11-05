<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Blog;
use Carbon\Carbon;
use Image;


class BlogController extends Controller
{

    public function BlogAdd(){
		$blogs = Blog::latest()->get();
		return view('admin.blog.add_blog',compact('blogs'));

	} //end


	public function BlogStore(Request $request){




		$image = $request->file('person_img');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->save('upload/blog/'.$name_gen);
    	$save_url_person = 'upload/blog/'.$name_gen;

		$image = $request->file('company_logo');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->save('upload/blog/'.$name_gen);
    	$save_url = 'upload/blog/'.$name_gen;




		Blog::insert([

			'person_name' => $request->person_name,
			'person_img' => $save_url_person,
			'designation' => $request->designation,
			'company_name' => $request->company_name,
			'rating_num' => $request->rating_num,
			'company_logo' => $save_url,
			'blog_description' => $request->blog_description,

			'status' => 1,
      		'created_at' => Carbon::now(),


		]);


		$notification = array(
			'message' =>  ' Testimonials Inserted Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('blog-manage')->with($notification);

	} ///end method

	public function BlogManage(){

		$blogs = Blog::latest()->get();
		return view('admin.blog.blog_view',compact('blogs'));
	} //end

    public function BlogEdit($id){

		$blogs = Blog::findOrFail($id);
		return view('admin.blog.blog_edit',compact('blogs'));

	} //end

    public function BlogUpdate(Request $request){

		$blogs_id = $request->id;
		$oldImage_person = $request->person_img_old;
		$oldImage_company = $request->company_img_old;
		// unlink($oldImage_person);
		// unlink($oldImage_company);

        $image = $request->file('person_img');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->save('upload/blog/'.$name_gen);
    	$save_url_person = 'upload/blog/'.$name_gen;

		$image = $request->file('company_logo');
    	$name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
    	Image::make($image)->save('upload/blog/'.$name_gen);
    	$save_url = 'upload/blog/'.$name_gen;




		Blog::findOrFail($blogs_id)->update([

			'person_name' => $request->person_name,
			'person_img' => $save_url_person,
			'designation' => $request->designation,
			'company_name' => $request->company_name,
			'rating_num' => $request->rating_num,
			'company_logo' => $save_url,
			'blog_description' => $request->blog_description,
			'status' => 1,
      		'created_at' => Carbon::now(),


		]);


		$notification = array(
			'message' => 'Testimonials Update Successfully',
			'alert-type' => 'success'
		);

		return redirect()->route('blog-manage')->with($notification);

	} ///end method

    public function BlogDelete($id){
		$blogs = Blog::findOrFail($id);
		// unlink($blogs->blog_photo);
		Blog::findOrFail($id)->delete();



		$notification = array(
		   'message' => 'testimonials Deleted Successfully',
		   'alert-type' => 'success'
	   );

	   return redirect()->back()->with($notification);

	}// end method

    public function BlogInactive($id){
		Blog::findOrFail($id)->update(['status' => 0]);
		$notification = array(
		   'message' => 'testimonials Inactive',
		   'alert-type' => 'success'
	   );

	   return redirect()->back()->with($notification);
	}
	public function BlogActive($id){
		Blog::findOrFail($id)->update(['status' => 1]);
		   $notification = array(
			  'message' => 'testimonials Active',
			  'alert-type' => 'success'
		  );

		  return redirect()->back()->with($notification);

	   } //end







}
