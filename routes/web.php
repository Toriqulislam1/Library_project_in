<?php

use App\Models\User;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Backend\AdminProfileController;
use App\Http\Controllers\Frontend\IndexController;
use App\Http\Controllers\Backend\ContentController;
use App\Http\Controllers\Backend\ContactController;
use App\Http\Controllers\Frontend\ContactUsController;
use App\Http\Controllers\Backend\IndController;
use App\Http\Controllers\Backend\basicsettingController;
use App\Http\Controllers\Frontend\searchController;
use App\Http\Controllers\Frontend\userLoginController;
use App\Http\Controllers\Frontend\orderController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*-------------Admin route--------*/

Route::get('/', function()
{
    return view('frontend.index');
});
///admin login
Route::prefix('admin')->group(function (){

    Route::get('/login',[AdminController::class, 'Index'])->name('login_form');

    Route::post('/login/owner',[AdminController::class, 'Login'])->name('admin.login');

    Route::get('/dashboard',[AdminController::class, 'Dashboard'])->name('admin.dashboard')->middleware('admin');

    Route::get('/logout',[AdminController::class, 'AdminLogout'])->name('admin.logout');

    Route::get('/profile',[AdminProfileController::class, 'AdminProfile'])->name('admin.profile');

    Route::get('/profile/edit', [AdminProfileController::class, 'AdminProfileEdit'])->name('admin.profile.edit');

    Route::post('/profile/store', [AdminProfileController::class, 'AdminProfileStore'])->name('admin.profile.store');

    Route::get('/change/password', [AdminProfileController::class, 'AdminChangePassword'])->name('admin.change.password');

    Route::post('/update/change/password', [AdminProfileController::class, 'AdminUpdateChangePassword'])->name('update.change.password');



});
/*-------------End Admin route--------*/


//user login registration
Route::prefix('user')->group(function (){

    Route::get('/login',[userLoginController::class, 'Index'])->name('login-index');
    Route::post('/login/success',[userLoginController::class, 'loginSuccess'])->name('login-user');
    Route::get('/logout',[userLoginController::class, 'logOut'])->name('logout-user');

    Route::get('/register',[userLoginController::class, 'IndexRegister'])->name('register-index');
    Route::post('/register/store',[userLoginController::class, 'registerStore'])->name('register-store');

    Route::get('/profile',[userLoginController::class, 'userProfile'])->name('user-profile-index');
    Route::get('/order',[userLoginController::class, 'userOrder'])->name('order-show-user-profile');
    Route::get('/profile/edit',[userLoginController::class, 'userProfileEdit'])->name('user-profile-edit');
    Route::post('/image/update',[userLoginController::class, 'userProfileImage'])->name('userProfileImage');
    Route::post('/info/update',[userLoginController::class, 'userInfo'])->name('userinfo-update');


});

//frontend index page
Route::prefix('user')->group(function (){
    Route::get('/service/details/{id}', [IndexController::class, 'serviceDetailsPage'])->name('details-service-page');


});



//order
Route::prefix('order')->group(function (){

    Route::get('/checkout/{product_id}',[orderController::class, 'checkOutIndex'])->name('checkOut-index');
    Route::post('/checkout/store',[orderController::class, 'checkStore'])->name('checkout-store');
    Route::get('/all',[orderController::class, 'allOrder'])->name('order-show');
    Route::post('/statis/update',[orderController::class, 'statusUpdate'])->name('status-update');
    Route::get('/invoice/{id}',[orderController::class, 'invoice'])->name('invoice');
    Route::get('/payment',[orderController::class, 'userPayment'])->name('order-user-payment');
    Route::get('/user/payment/download/{id}',[orderController::class, 'userPaymentDownload'])->name('user-download-payment');

    Route::get('/user/payment/',[orderController::class, 'paymentOrder'])->name('order-payment-index');
    Route::get('/user/payment/invoice/{id}',[orderController::class, 'paymentInvoiceIndex'])->name('payment-invoice');
    Route::post('/user/payment/invoice/store',[orderController::class, 'paymentInvoiceStore'])->name('payment.invoice.store');
    Route::get('/admin/download/{id}',[orderController::class, 'InvoiceDownload'])->name('admin-download-invoice');
    Route::get('/admin/invoice/delete/{id}',[orderController::class, 'InvoiceAdminDelete'])->name('payment.delete');


});


// Admin book All Routes

Route::prefix('content')->group(function(){

    Route::get('/add', [ContentController::class, 'AddContent'])->name('add-content');

    Route::post('/store', [ContentController::class, 'StoreContent'])->name('content-store');

    Route::get('/manage', [ContentController::class, 'ManageContent'])->name('manage-content');

    Route::get('/edit/{id}', [ContentController::class, 'EditContent'])->name('content.edit');

    Route::post('/data/update', [ContentController::class, 'ContentDataUpdate'])->name('content-update');

    Route::get('/inactive/{id}', [ContentController::class, 'ServicesInactive'])->name('services.inactive');

    Route::get('/active/{id}', [ContentController::class, 'ServicesActive'])->name('services.active');

    Route::get('/delete/{id}', [ContentController::class, 'ServicesDelete'])->name('services.delete');

});


//Frontend search
Route::get('/search', [searchController::class, 'search'])->name('search');
Route::get('/search/input', [searchController::class, 'searchInput'])->name('search-input');

//basic setting
Route::get('/setting', [basicsettingController::class, 'setting'])->name('add.setting');
Route::post('/setting/update', [basicsettingController::class, 'settingUpdate'])->name('setting.update');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
