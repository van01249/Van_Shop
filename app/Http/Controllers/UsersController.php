<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Bill;
use App\BillDetail;
use App\Customer;
use App\News;
use App\Product;
use App\ProductType;
use App\Slide;
use App\Statistic;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::all();
        return view('back-end.user.danhsach',compact('user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('back-end.user.them');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'fullname' =>'required|min:3',
            'email'=>'required|email|unique:users,email',
            'password'=>'required|min:3|max:32',
            'passwordAgain'=>'required|same:password',
        ],[
            'fullname.required'=>'Nhập họ tên',
            'fullname.min'=>'họ tên tối thiểu 3 kí tự',
            'email.required'=>'Vui lòng nhập email',
            'email.email'=>'Sai cú pháp email',
            'email.unique'=>'Email đã tồn tại',
            'password.required'=>'Vui lòng nhập mật khẩu',
            'password.min'=>'Mật khẩu 3 kí tự',
            'password.max'=>'Mật khẩu 32 kí tự',
            'passwordAgain.required'=>'Vui lòng nhập lại mật khẩu',
            'passwordAgain.same'=>'Mật khẩu nhập lại không khớp',
        ]);
        $user = new User();
        $user->full_name = $request->fullname;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->level = $request->level;
        $user->save();
        return redirect('admin/user/them')->with('thongbao','Thêm thành công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);
        return view('back-end.user.sua',compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        $this->validate($request,[
            'fullname' =>'required|min:3',
            'email'=>'required|email',
            'phone' =>'required',
            'address' =>'required',
        ],[
            'fullname.required'=>'Nhập họ tên',
            'fullname.min'=>'họ tên tối thiểu 3 kí tự',
            'email.required'=>'Vui lòng nhập email',
            'email.email'=>'Sai cú pháp email',
            'email.unique'=>'Email đã tồn tại',
            'phone.required'=>'Vui lòng nhập số điện thoại',
            'address.required'=>'Vui lòng nhập địa chỉ',
        ]);
        $user->full_name = $request->fullname;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->level = $request->level;
        $user->phone = $request->phone;
        $user->address = $request->address;
        $user->save();
        return redirect('admin/user/sua/'.$id)->with('thongbao','sửa thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::find($id);
        $user->delete();
        return redirect('admin/user/danhsach')->with('thongbao','Xóa thành công');
    }
    public function getLogin()
    {
        return view('back-end.login');
    }
    public function postLogin(Request $request)
    {
        $this->validate($request,[
            'email'=>'required',
            'password'=>'required|min:3|max:32',
        ],[
            'email.required'=>'Vui lòng nhập email',
            'password.required'=>'Vui lòng nhập mật khẩu',
            'password.min'=>'Mật khẩu 3 kí tự',
            'password.max'=>'Mật khẩu 32 kí tự',
        ]);
        if (Auth::attempt(['email'=>$request->email,'password'=>$request->password])) {
            return redirect('admin/home');
        } else {
            return redirect('admin/login')->with('loi','Đăng nhập không thành công');
        }
        
        
    }
    public function getQuantri()
    {
        $theloai = ProductType::all();
        $sanpham = Product::all();
        $donhang = Bill::all();
        $khachhang = Customer::all();
        $tintuc = News::all();
        $slide = Slide::all();
        $quantri = User::all();
	   	return view('back-end.home.list',compact('theloai','sanpham','donhang','khachhang','tintuc','slide','quantri'));       	
    }
    public function getLogout()
        {
            Auth::logout();
            return redirect('admin/login');
        }
    
    public function getFilterByDate(Request $request){
        $data = $request->all();
        $from_date = $data['from_date'];
        $to_date = $data['to_date'];

        $get = DB::table('statistical')
                ->whereBetween('order_date', [$from_date, $to_date])
                ->orderBy('order_date', 'ASC')
                ->get();
        // $get2 = Statistic::all();
        // dd($get);
        // dd($get2);
        foreach($get as $val){
            $chart_data[] = array(
                'period' => $val->order_date,
                'order' => $val->total_order,
                'sales' => $val->sales,
                'profit' => $val->profit,
                'quantity' => $val->quantity
            );
        }
        // dd($chart_data);

        echo $data = json_encode($chart_data);
    }

    public function getDashboardFilter(Request $request){
        $data = $request->all();

        // $today = Carbon::now('Asia/Ho_Chi_Minh')->format('d-m-y H:i:s');
        $dauthangnay = Carbon::now('Asia/Ho_Chi_Minh')->startOfMonth()->toDateString();
        $dau_thangtruoc = Carbon::now('Asia/Ho_Chi_Minh')->subMonth()->startOfMonth()->toDateString();
        $cuoi_thangtruoc = Carbon::now('Asia/Ho_Chi_Minh')->subMonth()->endOfMonth()->toDateString();

        $sub7days = Carbon::now('Asia/Ho_Chi_Minh')->subDays(7)->toDateString();
        $sub365days = Carbon::now('Asia/Ho_Chi_Minh')->subDays(365)->toDateString();

        $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

        if($data['dashboard_value'] == '7ngay'){
            $get = DB::table('statistical')
                ->whereBetween('order_date', [$sub7days, $now])
                ->orderBy('order_date', 'ASC')
                ->get();
        }elseif($data['dashboard_value'] == 'thangtruoc'){
            $get = DB::table('statistical')
                ->whereBetween('order_date', [$dau_thangtruoc, $cuoi_thangtruoc])
                ->orderBy('order_date', 'ASC')
                ->get();
        }elseif($data['dashboard_value'] == 'thangnay'){
            $get = DB::table('statistical')
                ->whereBetween('order_date', [$dauthangnay, $now])
                ->orderBy('order_date', 'ASC')
                ->get();
        }else{
            $get = DB::table('statistical')
                ->whereBetween('order_date', [$sub365days, $now])
                ->orderBy('order_date', 'ASC')
                ->get();
        }
        // dd($today);
        foreach($get as $val){
            $chart_data[] = array(
                'period' => $val->order_date,
                'order' => $val->total_order,
                'sales' => $val->sales,
                'profit' => $val->profit,
                'quantity' => $val->quantity
            );
        }

        echo $data = json_encode($chart_data);
    }
    public function getDayOrder(){
        $sub30days = Carbon::now('Asia/Ho_Chi_Minh')->subDays(30)->toDateString();
        $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

        $get = DB::table('statistical')
                ->whereBetween('order_date', [$sub30days, $now])
                ->orderBy('order_date', 'ASC')
                ->get();

        foreach($get as $val){
            $chart_data[] = array(
                'period' => $val->order_date,
                'order' => $val->total_order,
                'sales' => $val->sales,
                'profit' => $val->profit,
                'quantity' => $val->quantity
                );
            }
        
        echo $data = json_encode($chart_data);
    }
}
