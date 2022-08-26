<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\BillDetail;
use App\Bill;
use App\Customer;
use App\Product;
use App\ProductType;
use App\Statistic;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;

class BillsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $donhang = Bill::all();
        return view('back-end.donhang.danhsach',compact('donhang'));
    }

    public function getUpdateStatus(Request $request){

        $bill = Bill::where('id', $request->bill_id)->first();
        $bill->status = 2;
        $bill->note = $request->lydo;
        $bill->save();

        return redirect()->back()->with('message','Hủy đơn hàng thành công');
        // return view('page.hoadon', compact('donhang'))->with('thongbao', 'Hủy đơn hàng thành công!') ;
    }

    public function bill_detail($id){
        $bill_detail = BillDetail::with('product', 'bill')->where('id_bill', $id)->get();
        $bill=Bill::where('id', $id)->get();
        
        return view('back-end.donhang.chitiet',compact('bill_detail', 'bill'));
    }
    
    

    public function update_qty(Request $request){
        $data = $request->all();

        $bill = Bill::find($data['order_id']);
        
        $bill->status = $data['order_status'];
        $bill->save();

        $date_order = $bill->date_order;

        $statistic = Statistic::where('order_date' , $date_order)->first();

        if($statistic){
            $statistic_count = $statistic->count();
        }else{
            $statistic_count = 0;

        }
        if($bill->status == 1){
            $total_order = 0;
            $sales = 0;
            $profit = 0;
            $quantity = 0;
            foreach($data['order_product_id'] as $key => $product_id){
                $product = Product::find($product_id);
                $product_qty = $product->amount;
                $product_sold = $product->qty_sold;
                $price_cost = $product->price_cost;

                if($product->promotion_price == 0){
                    $product_price = $product->unit_price;
                }
                else{
                    $product_price = $product->promotion_price;
                }

                $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();

                foreach($data['qty'] as $key2 => $qty){
                    if($key == $key2){
                        $product_remain = $product_qty - $qty;
                        $product->amount = $product_remain;
                        $product->qty_sold = $product_sold + $qty;
                        $product->save();

                        $quantity += $qty;
                        $total_order += 1;
                        $sales += $product_price * $qty;
                        $profit = $sales - $price_cost*$qty;
                        
                    }
                }
            }

            if($statistic_count > 0){
                $statistic_update = Statistic::where('order_date', $date_order)->first();
                $statistic_update->sales = $statistic_update->sales + $sales;
                $statistic_update->profit = $statistic_update->profit + $profit;
                $statistic_update->quantity = $statistic_update->quantity + $quantity;
                $statistic_update->total_order = $statistic_update->total_order + $total_order;
                $statistic_update->save();
            }else{
                $statistic_new = new Statistic();
                $statistic_new->order_date = $date_order;
                $statistic_new->sales = $sales;
                $statistic_new->profit = $profit;
                $statistic_new->quantity = $quantity;
                $statistic_new->total_order = $total_order; 
                $statistic_new->save();
            }

            $now = Carbon::now('Asia/Ho_Chi_Minh')->format('d-m-Y H:i:s');
            $title_mail = "Thông báo tình trạng đơn hàng xác nhận ngày".' '.$now;
            $customer_mail = Customer::find($bill->id_customer);
            $data['email'][] = $customer_mail->email;
            $bill_detail = BillDetail::where('id_bill', $bill->id)->get();

            foreach($bill_detail as $key){
                $product_cart = Product::where('id', $key->id_product)->first();
                $cart_arr[] = array(
                    'product_name' => $product_cart->name,
                    'product_unit_price'=> $key->unit_price,
                    'product_qty' => $key->quantity,
                    'product_price' => ($key->unit_price * $key->quantity)
                        
                );
            }


            $shipping = array(
                'cus_name' => $customer_mail->name,
                'ship_name' => $customer_mail->name,
                'email' => $customer_mail->email,
                'address' => $customer_mail->address,
                'phone_number' => $customer_mail->phone_number,
                'note' => $customer_mail->note
            );

            $total = $bill->total;

            $phi_van_chuyen = $bill->fee_ship;

            Mail::send('page.mail.mail_status(1)', ['cart_arr'=>$cart_arr, 'shipping'=>$shipping, 'total'=>$total, 'phi_van_chuyen'=>$phi_van_chuyen], 
            function($message) use ($title_mail, $data){
                $message->to($data['email'])->subject($title_mail);
                $message->from($data['email'], $title_mail);
            });
        }elseif($bill->status == 0){
            foreach($data['order_product_id'] as $key => $product_id){
                $product = Product::find($product_id);
                $product_qty = $product->amount;
                $product_sold = $product->qty_sold;
                foreach($data['qty'] as $key2 => $qty){
                    if($key == $key2){
                        $product_remain = $product_qty + $qty;
                        $product->amount = $product_remain;
                        $product->qty_sold = $product_sold - $qty;
                        $product->save();
                    }
                }
            }

            
        }elseif($bill->status == 3){
            $now = Carbon::now('Asia/Ho_Chi_Minh')->format('d-m-Y H:i:s');
            $title_mail = "Thông báo tình trạng đơn hàng xác nhận ngày".' '.$now;
            $customer_mail = Customer::find($bill->id_customer);
            $data['email'][] = $customer_mail->email;
            $bill_detail = BillDetail::where('id_bill', $bill->id)->get();

            foreach($bill_detail as $key){
                $product_cart = Product::where('id', $key->id_product)->first();
                $cart_arr[] = array(
                    'product_name' => $product_cart->name,
                    'product_unit_price'=> $key->unit_price,
                    'product_qty' => $key->quantity,
                    'product_price' => ($key->unit_price * $key->quantity)
                        
                );
            }


            $shipping = array(
                'cus_name' => $customer_mail->name,
                'ship_name' => $customer_mail->name,
                'email' => $customer_mail->email,
                'address' => $customer_mail->address,
                'phone_number' => $customer_mail->phone_number,
                'note' => $customer_mail->note
            );

            $total = $bill->total;

            $phi_van_chuyen = $bill->fee_ship;

            Mail::send('page.mail.mail_status', ['cart_arr'=>$cart_arr, 'shipping'=>$shipping, 'total'=>$total, 'phi_van_chuyen'=>$phi_van_chuyen], 
            function($message) use ($title_mail, $data){
                $message->to($data['email'])->subject($title_mail);
                $message->from($data['email'], $title_mail);
            });
        }else{
            $now = Carbon::now('Asia/Ho_Chi_Minh')->format('d-m-Y H:i:s');
            $title_mail = "Thông báo tình trạng đơn hàng xác nhận ngày".' '.$now;
            $customer_mail = Customer::find($bill->id_customer);
            $data['email'][] = $customer_mail->email;
            $bill_detail = BillDetail::where('id_bill', $bill->id)->get();

            foreach($bill_detail as $key){
                $product_cart = Product::where('id', $key->id_product)->first();
                $cart_arr[] = array(
                    'product_name' => $product_cart->name,
                    'product_unit_price'=> $key->unit_price,
                    'product_qty' => $key->quantity,
                    'product_price' => ($key->unit_price * $key->quantity)
                        
                );
            }


            $shipping = array(
                'cus_name' => $customer_mail->name,
                'ship_name' => $customer_mail->name,
                'email' => $customer_mail->email,
                'address' => $customer_mail->address,
                'phone_number' => $customer_mail->phone_number,
                'note' => $customer_mail->note
            );

            $total = $bill->total;

            $phi_van_chuyen = $bill->fee_ship;

            Mail::send('page.mail.mail_status(2)', ['cart_arr'=>$cart_arr, 'shipping'=>$shipping, 'total'=>$total, 'phi_van_chuyen'=>$phi_van_chuyen], 
            function($message) use ($title_mail, $data){
                $message->to($data['email'])->subject($title_mail);
                $message->from($data['email'], $title_mail);
            });
        }



    }

    public function qty_update(Request $request){
        $data = $request->all();
        $bill_detail = BillDetail::where('id_product', $data['order_product_id'])
                        ->where('id_bill', $data['order_id'])
                        ->first();
        $bill_detail->quantity=$data['order_qty'];
        $bill_detail->save();
    }

    public function update(Request $request, $id)
    {
        $donhang = Bill::find($id);
        
        $donhang->status = $request->status_bill;
        
        $donhang->save();
        

        return redirect('admin/donhang/danhsach')->with('thongbao','Cập nhật thành công');
    }

    public function destroy($id)
    {
        $donhang = Bill::find($id);
        $khachhang = Customer::where('id',$donhang->id_customer);
        $khachhang->delete();
        $donhang->delete();
        return redirect('admin/donhang/danhsach')->with('thongbao','Xóa thành công');
    }

    public function getBillIndex(Request $request){
        
        $user_id = Auth::user()->id;
        $khach = Customer::where('user_id', $user_id)->get();
        
        $donhang = DB::table('bills')
            ->join('customer', 'bills.id_customer', '=', 'customer.id')
            ->selectRaw('bills.id as id_order, bills.status as status, 
            bills.date_order as date_order, bills.total as total, bills.note as note,
            bills.payment as payment, bills.fee_ship as fee_ship, bills.status_payment as status_payment, customer.*')
            ->where('customer.user_id','=', $user_id)
            ->orderBy('date_order','desc')
            ->orderBy('id','desc')
            ->paginate(10);

    
        return view('page.hoadon',compact('donhang'));
        
    }

    public function getBillDetail($id){
        $bill_detail = BillDetail::with('product')->where('id_bill', $id)->get();
        $donhang=Bill::where('id', $id)->get();
        return view('page.chitietdonhang',compact('bill_detail', 'donhang'));
        // return view('page.chitiethoadon');
    }
}
