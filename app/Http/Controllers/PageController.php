<?php

namespace App\Http\Controllers;
use App\Slide;
use App\Product;
use App\ProductType;
use App\Cart;
use Illuminate\Support\Facades\Session;
use App\Customer;
use App\Bill;
use App\News;
use App\BillDetail;
use App\City;
use App\Comment;
use App\PhiShip;
use App\Province;
use App\Social;
use App\User;
use App\Wards;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Laravel\Socialite\Facades\Socialite;     
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class PageController extends Controller
{

    public function getShowProfile($id)
    {
        $user = User::find($id);
        return view('page.update_profile',compact('user'));
    }

    public function getShowPass()
    {
        return view('page.update_pass');
    }
    
    public function postUpdatePass(Request $request){
        $this->validate($request,[
            'newPassword' => 'required|min:6',
            'rePassword' => 'required|same:newPassword',
            'oldPassword' => 'required',
        ],[
            'newPassword.required' => 'Mật khẩu không được để trống',
            'oldPassword.required' => 'Vui lòng nhập mật khẩu cũ',
            'newPassword.min' => 'Mật khẩu ít nhất 6 kí tự',
            'rePassword.required' => 'Nhập lại mật khẩu không được để trống',
            'rePassword.same' => 'Nhập lại mật khẩu không đúng với mật khẩu'
        ]);
        $oldPassword = $request->oldPassword;
        $newPassword = $request->newPassword;
        if(!Hash::check($oldPassword, Auth::user()->password)){
           return back()->with('msg' ,'Mật khẩu cũ không chính xác ');
        }
        else{
            $request->user()->fill(['password' => Hash::make($newPassword)])->save();
            return back()->with('thongbao' ,'Mật khẩu đã được thay đổi!');
        }
    }

    public function getProfile(){
        return view('page.profile');
    }

    public function postUpdateProfile(Request $request, $id)
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
        // $user->password = bcrypt($request->password);
        // $user->level = $request->level;
        $user->phone = $request->phone;
        $user->address = $request->address;
        $user->save();
        return redirect('show-profile/'.$id)->with('thongbao','Cập nhật thành công!');
    }

    
    public function getIndex(Request $request){
        $slide = Slide::all();
    	//return view('page.trangchu',['slide'=>$slide]);
        $new_product = Product::where('new',1)->paginate(4);
        $sanpham_khuyenmai = Product::where('promotion_price','<>',0)->paginate(8);
        return view('page.trangchu',compact('slide','new_product','sanpham_khuyenmai'));
    }

    public function getLoaiSp($type){
        $sp_theoloai = Product::where('id_type',$type)->get();
        $sp_khac = Product::where('id_type','<>',$type)->paginate(3);
        $loai = ProductType::all();
        $loap_sp = ProductType::where('id',$type)->first();
    	return view('page.loai_sanpham',compact('sp_theoloai','sp_khac','loai','loap_sp'));
    }

    public function getChitiet(Request $req){
        $sanpham = Product::where('id',$req->id)->first();
        $sp_tuongtu = Product::where('id_type',$sanpham->id_type)->paginate(6);
        $sp_sale = Product::where('promotion_price','>',0)->inRandomOrder()->limit(4)->get();
        $sp_moi= Product::orderBy('created_at', 'desc')->inRandomOrder()->limit(4)->get();

    	return view('page.chitiet_sanpham',compact('sanpham','sp_tuongtu','sp_sale','sp_moi'));
    }
    public function getLoadComment(Request $request){
        $data = $request->all();
        $product_id = $data['product_id'];
        // $comment= Comment::where('id_product', $product_id)->where('comment_status', 0)->get();
        $comment = Comment::with('product')->where('id_product', $product_id)->where('comment_admin_rep', '=', 0)->get();
        $comment_rep = Comment::with('product')->where('id_product', $product_id)->where('comment_admin_rep', '>', 0)->get();
        // dd($product_id);
        $output='';
        foreach($comment as $key => $com ){
            $output .='
            <div class="row style-comment">
            <div class="col-md-2">
                
                <img src="public/images.png" width="50%" alt="icon" class="img img-responsive img-thumbnail">
            </div>
            <div class="col-md-10">
                <p style="color: green;">'.$com->comment_name.' </p>
                <span>'.$com->comment_date.'</span>
                <p>'.$com->comment.'</p>
            </div>
            </div>
            <p></p>
            ';
            foreach($comment_rep as $key => $com_rep ){
                if($com_rep->comment_admin_rep == $com->id){
                    $output .='
                        <div class="row style-comment" style="margin: 5px 40px;">
                        <div class="col-md-2">
                            
                            <img src="public/admin.png" width="50%" alt="icon" class="img img-responsive img-thumbnail">
                        </div>
                        <div class="col-md-10">
                            <p style="color: green;">@'.$com_rep->comment_name.' </p>
                            <span>'.$com_rep->comment_date.'</span>
                            <p>'.$com_rep->comment.'</p>
                        </div>
                        </div>
                        <p></p>
                        ';
                }
                
            }
        }
        echo $output;
    }
    public function getAddComment(Request $request){

        $comment = new Comment();
        $comment->comment =  $request->comment_content;
        $comment->comment_name =  $request->comment_name;
        $comment->id_product =  $request->product_id;
        $comment->comment_status = 1;
        $comment->comment_admin_rep = 0;
        $comment->save();
        
    }
    public function getLienHe(){
    	return view('page.lienhe');
    }

    public function getGioiThieu(){
        $tintuc = News::all();
    	return view('page.gioithieu',compact('tintuc'));
    }

    public function getTimkiem(Request $request)
    {
        $sanpham = Product::where('name', 'like', '%' . $request->s . '%')->get();
        $search = $request->s;
        
        return view('page.timkiem',compact('sanpham','search'));
    }

    public function getAddtoCart(Request $req,$id){
        $product = Product::find($id);
        $oldCart = Session('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->add($product, $id);
        $req->session()->put('cart',$cart);
        return redirect()->back();

    }

    public function getUpdatetoCart(Request $req, $id, $qty){
        $oldCart = Session('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart); 
        $cart->update($id, $qty);
        $req->Session()->put('cart',$cart);
        return view('page.dat_hang');
    }

    public function getDelItemCart($id){
        $oldCart = Session::has('cart')?Session::get('cart'):null;
        $cart = new Cart($oldCart);
        $cart->removeItem($id);
        if(count($cart->items)>0){
            Session::put('cart',$cart);
        }
        else{
            Session::forget('cart');
        }
        return redirect()->back();
    }

    public function getCheckout(){
        $city = City::orderBy('matp', 'ASC')->get();
        return view('page.dat_hang', compact('city'));
    }

    public function postSelectDelivery(Request $request){
        $data = $request->all();

        if($data['action']){
            $output = '';
            if($data['action'] == "city"){
                $province = Province::where('matp', $data['ma_id'])->orderBy('maqh', 'ASC')->get();
                $output.='<option value="">-----Chọn-----</option>';
                foreach($province as $key){
                    $output .= '<option value="'.$key->maqh.'">'.$key->name.'</option>';
                }
                
            }else{
                $wards = Wards::where('maqh', $data['ma_id'])->orderBy('xaid', 'ASC')->get();
                $output.='<option value="">-----Chọn-----</option>';
                foreach($wards as $key){
                    $output .= '<option value="'.$key->xaid.'">'.$key->name.'</option>';
                }
            }
        }
        echo $output;
    }

    public function postTinhPhi(Request $request){
        $data = $request->all();
        if($data['city']){
            $fee = PhiShip::where('matp', $data['city'])->where('maqh', $data['province'])->where('xaid', $data['wards'])->get();
            foreach($fee as $key){
                Session::put('fee', $key->fee_ship);
                Session::save();
            }
        }
    }

    public function postCheckout(Request $req){
        $cart = Session::get('cart');

        $customer = new Customer;
        $customer->name = $req->name;
        $customer->gender = $req->gender;
        $customer->email = $req->email;
        $customer->address = $req->address;
        $customer->phone_number = $req->phone;
        $customer->user_id = $req->customer_id;
        $customer->note = $req->notes;
        $customer->save();
        
        

        $bill = new Bill;
        $bill->id_customer = $customer->id;
        $bill->date_order = date('Y-m-d');
        $bill->total = $cart->totalPrice;
        $bill->payment = $req->payment_method;
        $bill->status = 0;
        if($req->payment_method == 'COD'){
            $bill->status_payment = 0;
        }else{
            $bill->status_payment = 1;
        }
        $bill->fee_ship = $req->phi_van_chuyen;
        $bill->note = $req->notes;
        $bill->save();

        foreach ($cart->items as $key => $value) {
            $bill_detail = new BillDetail;
            $bill_detail->id_bill = $bill->id;
            $bill_detail->id_product = $key;
            $bill_detail->quantity = $value['qty'];
            $bill_detail->unit_price = ($value['price']/$value['qty']);
            $bill_detail->save();
        }
        

        $now = Carbon::now('Asia/Ho_Chi_Minh')->format('d-m-Y H:i:s');
        $title_mail = "Đơn hàng xác nhận ngày".' '.$now;
        $customer_mail = Customer::find($customer->id);
        $data['email'][] = $customer_mail->email;

        if(Session::get('cart')==true){
            foreach($cart->items as $key => $arr){
                $product_cart = Product::where('id', $key)->first();
                $cart_arr[] = array(
                    'product_name' => $product_cart->name,
                    'product_unit_price'=> ($arr['price']/$arr['qty']),
                    'product_qty' => $arr['qty'],
                    'product_price' => $arr['price']
                    
                );
            }
        }

        $shipping = array(
            'cus_name' => $customer_mail->name,
            'ship_name' => $req->name,
            'email' => $req->email,
            'address' => $req->address,
            'phone_number' => $req->phone,
            'note' => $req->notes
        );

        $total = Session::get('cart')->totalPrice;

        $phi_van_chuyen = $req->phi_van_chuyen;

        Mail::send('page.mail.mailbill', ['cart_arr'=>$cart_arr, 'shipping'=>$shipping, 'total'=>$total, 'phi_van_chuyen'=>$phi_van_chuyen], 
        function($message) use ($title_mail, $data){
            $message->to($data['email'])->subject($title_mail);
            $message->from($data['email'], $title_mail);
        });

        Session::forget('cart');
        return view('page.checkout')->with('thongbao','Đặt hàng thành công. Vui lòng truy cập gmail của bạn để xem chi tiết đơn hàng!');

    }

    public function getLogin(){
        return view('page.dangnhap');
    }

    public function getLoginGoogle(){
        return Socialite::driver('google')->redirect();
    }

    public function getGoogleCallback(){

        $users = Socialite::driver('google')->stateless()->user();

        $authUser = $this->findOrCreateUser($users, 'google');
        if($authUser){
            $account_name = User::where('id', $authUser->user)->first();
            Session::put('id', $account_name->id);
            Session::put('full_name', $account_name->full_name);
        }else{
            $account_name = User::where('id', $authUser->user)->first();
            Session::put('id', $account_name->id); 
            Session::put('full_name', $account_name->full_name);
        }

        return redirect('dang-nhap')->with('message1', 'Đăng kí thành công với mật khẩu: "google". Vui lòng đăng nhập để đổi lại mật khẩu!');
    }

    public function findOrCreateUser($users, $provider){
        $authUser = Social::where('provider_user_id', $users->id)->where('provider_user_email', $users->email)
                    ->first();
        if($authUser){
            return $authUser;
        }else{
            $user_new = new Social([
                'provider_user_id' => $users->id,
                'provider_user_email' => $users->email,
                'provider' => strtoupper($provider)
            ]);

            $user = User::where('email', $users->email)->first();
            if(!$user){
                $user = User::create([
                    'full_name' => $users->getName(),
                    'email' => $users->email,
                    'password' => bcrypt('google'),
                    'level' => 0,
                    'phone' => '',
                    'address' => '',
                    'remember_token	' => ''
                ]);
            }
            $user_new->user = $user->id;
            $user_new->save();
            return $user_new;
        }
    }

    public function getSignin(){
        return view('page.dangki');
    }

    public function postSignin(Request $req){
        $this->validate($req,
            [
                'email'=>'required|email|unique:users,email',
                'password'=>'required|min:3|max:20',
                'fullname'=>'required',
                're_password'=>'required|same:password'
            ],
            [
                'email.required'=>'Vui lòng nhập email',
                'email.email'=>'Không đúng định dạng email',
                'email.unique'=>'Email đã có người sử dụng',
                'password.required'=>'Vui lòng nhập mật khẩu',
                're_password.same'=>'Mật khẩu không giống nhau',
                'password.min'=>'Mật khẩu ít nhất 3 kí tự'
            ]);
        $user = new User();
        $user->full_name = $req->fullname;
        $user->email = $req->email;
        $user->password = Hash::make($req->password);
        $user->phone = $req->phone;
        $user->address = $req->address;
        $user->level = 0;
        $user->save();
        return redirect()->back()->with('thanhcong','Tạo tài khoản thành công');
    }

    public function postLogin(Request $req){
        $rules = [
            'email' =>'required|email',
            'password' => 'required|min:3'
        ];
        $messages = [
            'email.required' => 'Email là trường bắt buộc',
            'email.email' => 'Email không đúng định dạng',
            'password.required' => 'Mật khẩu là trường bắt buộc',
            'password.min' => 'Mật khẩu phải chứa ít nhất 3 ký tự',
        ];
        $validator = Validator::make($req->all(), $rules, $messages);
        
        
        if ($validator->fails()) {
            // Điều kiện dữ liệu không hợp lệ sẽ chuyển về trang đăng nhập và thông báo lỗi
            return redirect('page.dangnhap')->withErrors($validator)->withInput();
        } else {
            // Nếu dữ liệu hợp lệ sẽ kiểm tra trong csdl
            $email = $req->input('email');
            $password = $req->input('password');
            

            if( Auth::attempt(['email' => $email, 'password' =>$password])) {
                // Kiểm tra đúng email và mật khẩu sẽ chuyển trang
                
                Session::put('email', $email);
                Session::put('password', $password);
                return redirect('./');
            } else {
                // Kiểm tra không đúng sẽ hiển thị thông báo lỗi
                Session::flash('error', 'Email hoặc mật khẩu không đúng!');
                return redirect('dang-nhap');
            }
        }
        
    }
    public function postLogout(){
        Auth::logout();
        return redirect()->route('trang-chu');
    }

    public function getQuenMatKhau(){
        return view('page.quenmatkhau');
    }

    public function postRecoverPass(Request $request){
        $data = $request->all();
        $now = Carbon::now('Asia/Ho_Chi_Minh')->format('d-m-Y H:i:s');

        $title_mail = "Mail lấy lại mật khẩu Van Shop".' '.$now;
        $user = User::where('email', $data['email'])->get();
        foreach($user as $key ){
            $user_id = $key->id;
        }

        if($user){
            $count = $user->count();
            if($count == 0){
                return redirect()->back()->with('error', 'Email chưa được đăng kí để khôi phục mật khẩu!');
            }else{
                $random_token = Str::random();
                $user_token = User::find($user_id);
                $user_token->remember_token = $random_token;
                $user_token->save();

                $to_mail = $data['email'];
                $link_reset_pass = url('/update-new-pass?email='.$to_mail.'&token='.$random_token);

                $data = array("name"=>$title_mail, "body"=>$link_reset_pass, "email"=>$data['email']);
                Mail::send('page.forget_pass_notify', ['data'=>$data], function($message) use ($title_mail, $data){
                    $message->to($data['email'])->subject($title_mail);
                    $message->from($data['email'], $title_mail);
                });

                return redirect()->back()->with('message', 'Gửi mail thành công, vui lòng đăng nhập gmail để reset password!');
            }
        }


    }

    public function getUpdatePass(){
        return view('page.updatepass');
    }

    public function postResetPass(Request $request){
        $data = $request->all();
        $random_token = Str::random();
        $user = User::where('email', '=', $data['email'])->where('remember_token', '=', $data['token'])->get();
        $count = $user->count();
        if($count > 0){
            foreach($user as $key){
                $user_id = $key->id;
            }
            $reset = User::find($user_id);
            $reset->password = bcrypt($data['password']);
            $reset->remember_token = $random_token;
            $reset->save();

            return redirect()->back()->with('message', 'Cập nhật mật khẩu thành công!');
        }else{
            return redirect()->back()->with('error', 'Vui lòng nhập lại mail vì linh đã quá hạn!');
        }
    }

    public function postAddLienHe(Request $request){
        
        $to_mail = $request->your_email;
        $subject = $request->your_subject;
        $data = array("name"=>$request->your_name, "body"=>$request->your_message);

        Mail::send('page.mail.mail_lienhe', $data, function($message) use ($to_mail, $subject){
            $message->to($to_mail)->subject($subject);
            $message->from($to_mail, $subject);
        });
        
        return redirect('lien-he')->with('message', 'Gửi mail thành công!');
    }
}
