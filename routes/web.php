<?php
use Illuminate\Support\Facades\Route;
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
Route::auth();


Route::get('/',[
	'as'=>'trang-chu',
	'uses'=>'PageController@getIndex'
]);

Route::get('create-transaction',[
	'as'=>'createTransaction',
	'uses'=>'PayPalController@createTransaction'
]);

Route::get('process-transaction',[
	'as'=>'processTransaction',
	'uses'=>'PayPalController@processTransaction'
]);

Route::get('success-transaction',[
	'as'=>'successTransaction',
	'uses'=>'PayPalController@successTransaction'
]);

Route::get('cancel-transaction',[
	'as'=>'cancelTransaction',
	'uses'=>'PayPalController@cancelTransaction'
]);

Route::get('send-mail',[
	'as'=>'sendmail',
	'uses'=>'PageController@getSendMail'
]);

Route::get('history',[
		'as'=>'history',
		'uses'=>'BillsController@getBillIndex'
]);
Route::get('update-status',[
	'as'=>'updatestatus',
	'uses'=>'BillsController@getUpdateStatus'
]);
Route::get('history-detail/{id}',[
	'as'=>'historydetail',
	'uses'=>'BillsController@getBillDetail'
]);
Route::get('update-profile',[
		'as'=>'updateprofile',
		'uses'=>'PageController@getUpdateFrofile'
]);


Route::get('loai-san-pham/{type}',[
	'as'=>'loaisanpham',
	'uses'=>'PageController@getLoaiSp'
]);

Route::get('chi-tiet-san-pham/{id}',[
	'as'=>'chitietsanpham',
	'uses'=>'PageController@getChitiet'
]);
Route::get('load-comment',[
	'as'=>'loadcomment',
	'uses'=>'PageController@getLoadComment'
]);
Route::get('add-comment',[
	'as'=>'addcomment',
	'uses'=>'PageController@getAddComment'
]);





Route::get('lien-he',[
	'as'=>'lienhe',
	'uses'=>'PageController@getLienHe'
]);

Route::post('add-lien-he',[
	'as'=>'addlienhe',
	'uses'=>'PageController@postAddLienHe'
]);

Route::get('gioi-thieu',[
	'as'=>'gioithieu',
	'uses'=>'PageController@getGioiThieu'
]);

Route::get('tim-kiem',[
	'as'=>'timkiem',
	'uses'=>'PageController@getTimkiem'
]);

Route::get('add-to-cart/{id}',[
	'as'=>'themgiohang',
	'uses'=>'PageController@getAddtoCart'
]);

Route::get('update-to-cart/{id}/{qty}',[
	'as'=>'capnhatgiohang',
	'uses'=>'PageController@getUpdatetoCart'
]);

Route::get('del-cart/{id}',[
	'as'=>'xoagiohang',
	'uses'=>'PageController@getDelItemCart'
]);
Route::get('dat-hang',[
	'as'=>'dathang',
	'uses'=>'PageController@getCheckout'
]);
Route::post('select-delivery',[
	'as'=>'selectdelivery',
	'uses'=>'PageController@postSelectDelivery'
]);
Route::post('tinh-phi',[
	'as'=>'tinhphi',
	'uses'=>'PageController@postTinhPhi'
]);

Route::post('dat-hang',[
	'as'=>'dathang',
	'uses'=>'PageController@postCheckout'
]);

Route::get('dang-nhap',[
	'as'=>'login',
	'uses'=>'PageController@getLogin'
]);
Route::post('dang-nhap',[
	'as'=>'login',
	'uses'=>'PageController@postLogin'
]);

Route::get('login-google',[
	'as'=>'logingoogle',
	'uses'=>'PageController@getLoginGoogle'
]);
Route::get('google/callback',[
	'as'=>'googlecallback',
	'uses'=>'PageController@getGoogleCallback'
]);

Route::get('quen-mat-khau',[
	'as'=>'quenmatkhau',
	'uses'=>'PageController@getQuenMatKhau'
]);
Route::post('recover-pass',[
	'as'=>'recoverpass',
	'uses'=>'PageController@postRecoverPass'
]);
Route::get('update-new-pass',[
	'as'=>'updatenewpass',
	'uses'=>'PageController@getUpdatePass'
]);
Route::post('reset-new-pass',[
	'as'=>'resetnewpass',
	'uses'=>'PageController@postResetPass'
]);
Route::get('dang-ki',[
	'as'=>'signin',
	'uses'=>'PageController@getSignin'
]);

Route::post('dang-ki',[
	'as'=>'signin',
	'uses'=>'PageController@postSignin'
]);

Route::get('show-profile/{id}',[
	'as'=>'showprofile',
	'uses'=>'PageController@getShowProfile'
]);
Route::get('show-pass',[
	'as'=>'showpass',
	'uses'=>'PageController@getShowPass'
]);
Route::get('profile',[
	'as'=>'profile',
	'uses'=>'PageController@getProfile'
]);
Route::post('update-profile/{id}',[
	'as'=>'updateprofile',
	'uses'=>'PageController@postUpdateProfile'
]);
Route::post('update-pass',[
	'as'=>'updatepass',
	'uses'=>'PageController@postUpdatePass'
]);

Route::get('dang-xuat',[
	'as'=>'logout',
	'uses'=>'PageController@postLogout'
]);

Route::get('admin/login',[   
	'as'=>'loginadmin',
	'uses'=>'UsersController@getLogin']
);
Route::post('admin/login',[   
	'as'=>'loginadmin',
	'uses'=>'UsersController@postLogin']
);
Route::get('admin/logout',[   
	'as'=>'logoutadmin',
	'uses'=>'UsersController@getLogout']
);
// --------------------------------cac cong viec trong admin (back-end)--------------------------------------- 
	Route::group(['prefix' => 'admin','middleware' => 'admin'], function() {
		
		Route::get('/home','UsersController@getQuantri');
		Route::get('/filter-by-date','UsersController@getFilterByDate');
		Route::get('/dashboard-filter','UsersController@getDashboardFilter');
		Route::get('/day-order','UsersController@getDayOrder');
		
		Route::group(['prefix' => 'theloai'], function() {
			Route::get('them','TypeproductsController@create');
			Route::post('them','TypeproductsController@store');

			Route::get('danhsach','TypeproductsController@index');
			Route::get('xoa/{id}','TypeproductsController@destroy');
		 
			Route::get('sua/{id}','TypeproductsController@show');
			Route::post('sua/{id}','TypeproductsController@update');
		  });
		  
		Route::group(['prefix' => 'donhang'], function() {
			Route::get('danhsach','BillsController@index');
			Route::get('xoa/{id}','BillsController@destroy');
			Route::get('sua/{id}','BillsController@update');
			Route::get('chitiet/{id}','BillsController@bill_detail');
			Route::get('capnhatsoluong','BillsController@update_qty');
			Route::get('soluongcapnhat','BillsController@qty_update');
		  });
		  
		  Route::group(['prefix' => 'sanpham'], function() {
			Route::get('them','ProductsController@create');
			Route::post('them','ProductsController@store');

			Route::get('danhsach','ProductsController@index');
			Route::get('xoa/{id}','ProductsController@destroy');
		 
			Route::get('sua/{id}','ProductsController@show');
			Route::post('sua/{id}','ProductsController@update');

			Route::get('capnhat/{id}', 'ProductsController@update_display');
		  });

		  Route::group(['prefix' => 'danhgia'], function() {

			Route::get('dsdgsanpham','CommentController@index');
			Route::get('danhsach/{id}','CommentController@getComment');
			Route::get('duyet-comment','CommentController@getDuyet');
			Route::get('xoa/{id_com}','CommentController@getDelete');
			Route::get('rep-comment','CommentController@repComment');
		  });
		  
		  Route::group(['prefix' => 'chitietdonhang'], function() {
			Route::get('them','BilldetailController@create');
			Route::post('them','BilldetailController@store');

			

			Route::get('danhsach','BilldetailController@index');
			Route::get('xoa/{id}','BilldetailController@destroy');
		
		  });
		  
		  Route::group(['prefix' => 'khachhang'], function() {
			Route::get('them','CustomerController@create');
			Route::post('them','CustomerController@store');

			Route::get('danhsach','CustomerController@index');
			Route::get('xoa/{id}','CustomerController@destroy');
		 
			Route::get('sua/{id}','CustomerController@show');
			Route::post('sua/{id}','CustomerController@update');
		  });
		  
		  Route::group(['prefix' => 'tintuc'], function() {
			Route::get('them','NewsController@create');
			Route::post('them','NewsController@store');

			Route::get('danhsach','NewsController@index');
			Route::get('xoa/{id}','NewsController@destroy');
		 
			Route::get('sua/{id}','NewsController@show');
			Route::post('sua/{id}','NewsController@update');
		  });
		  
		  Route::group(['prefix' => 'slide'], function() {
			Route::get('them','SlideController@create');
			Route::post('them','SlideController@store');

			Route::get('danhsach','SlideController@index');
			Route::get('xoa/{id}','SlideController@destroy');
		 
			Route::get('sua/{id}','SlideController@show');
			Route::post('sua/{id}','SlideController@update');
		  });
		  
		  Route::group(['prefix' => 'user'], function() {
			Route::get('them','UsersController@create');
			Route::post('them','UsersController@store');

			Route::get('danhsach','UsersController@index');
			Route::get('xoa/{id}','UsersController@destroy');
		 
			Route::get('sua/{id}','UsersController@show');
			Route::post('sua/{id}','UsersController@update');
	  	});

		  Route::group(['prefix' => 'vanchuyen'], function() {

			Route::get('danhsach','DeliveryController@danhsach');
			Route::get('them','DeliveryController@index');
			Route::post('select','DeliveryController@select');
			Route::get('select-delivery','DeliveryController@select_delivery');
			
			Route::post('them','DeliveryController@them');

			Route::get('xoa/{id}','DeliveryController@destroy');
		 
	  	});
  });     