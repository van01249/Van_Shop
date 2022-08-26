<?php

namespace App\Http\Controllers;

use App\Comment;
use App\Product;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function index()
    {
        $sanpham = Product::all();
        return view('back-end.danhgia.ds_sanpham',compact('sanpham'));
    }

    public function getComment($id){
        $comment = Comment::with('product')->where('id_product', $id)->where('comment_admin_rep', '=', 0)->get();
        $comment_rep = Comment::with('product')->where('id_product', $id)->where('comment_admin_rep', '>', 0)->get();
        return view('back-end.danhgia.ds_danhgia',compact('comment', 'comment_rep'));
    }

    public function getDuyet(Request $request){
        $comment = Comment::find($request->comment_id);
        $comment->comment_status = $request->comment_status;
        $comment->save();

        return redirect()->back()->with('thongbao','Cập nhật thành công');
    }
    public function getDelete($id_com){
        // $product = Product::find($id_pro);
        $comment = Comment::find($id_com);
        // unlink("upload/sanpham/".$sanpham->image);
        $comment->delete();
        return redirect()->back()->with('thongbao','Xóa thành công');

    }

    public function repComment(Request $request){
        $comment = new Comment();
        $comment->comment =  $request->comment_content;
        $comment->comment_name =  'Admin VanShop';
        $comment->id_product =  $request->product_id;
        $comment->comment_status = 0;
        $comment->comment_admin_rep = $request->comment_id;
        $comment->save();

        return redirect()->back()->with('thongbao','Trả lời thành công');
    }
}
