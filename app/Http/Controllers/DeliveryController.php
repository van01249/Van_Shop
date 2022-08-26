<?php

namespace App\Http\Controllers;

use App\City;
use App\PhiShip;
use App\Province;
use App\Wards;
use Illuminate\Http\Request;

class DeliveryController extends Controller
{   
    public function danhsach(){
        $data = PhiShip::all();
        return view('back-end.vanchuyen.danhsach', compact('data'));
    }
    public function index(){
        $city = City::orderBy('matp', 'ASC')->get();
        return view('back-end.vanchuyen.them', compact('city'));
    }

    public function select(Request $request){
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

    public function them(Request $request){
        $data = $request->all();
        $phi = new PhiShip();
        $phi->matp = $data['city'];
        $phi->maqh = $data['province'];
        $phi->xaid = $data['wards'];
        $phi->fee_ship = $data['phi'];
        $phi->save();
    }

    public function destroy($id)
    {
        $fee = PhiShip::find($id);
        $fee->delete();
        return redirect('admin/vanchuyen/danhsach')->with('thongbao','Xóa thành công');
    }
}
