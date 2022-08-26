@extends('back-end.master')
@section('title')
Trang danh sách đánh giá
@endsection
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Đánh giá
                    <small>Danh sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-12">
                @if ($message = Session::get('thongbao'))
                <div class="alert alert-success alert-block">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>{{ $message }}</strong>
                </div>
                @endif
                @if (count($errors) > 0)
                <div class="alert alert-danger">
                    <strong>Lỗi!</strong> Vui lòng xem lại.
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
            </div>
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th>ID</th>
                        <th>Đánh giá</th>
                        <th>Người đánh giá</th>
                        <th>Ngày đánh giá</th>
                        <th>Tên sản phẩm</th>
                        <th>Trạng thái</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($comment as $com)
                    <tr class="even gradeC" align="center">
                        <td>{{$com->id}}</td>
                        <td>
                            {{$com->comment}} 
                            <style type="text/css">
                                ul.list_rep li{
                                    list-style-type: decimal;
                                    color: blue;
                                    margin: 5px 40px;  
                                }
                            </style>
                            <ul class="list_rep">
                                @foreach ($comment_rep as $com_rep)
                                    @if ($com_rep->comment_admin_rep == $com->id)
                                        <li>Trả lời: {{$com_rep->comment}}</li>
                                    @endif
                                @endforeach
                            </ul>
                            <form action="admin/danhgia/rep-comment">
                                <input type="hidden" name="comment_id" value="{{$com->id}}">
                                <input type="hidden" name="product_id" value="{{$com->id_product}}">
                                
                                
                                <br>
                                @if ($com->comment_status == 0)
                                    <textarea class="from-control rep_comment" name="comment_content"  cols="30" rows="3" required></textarea><br>
                                    <input type="submit" class="btn btn-default btn-xs btn-rep-comment" value="Trả lời bình luận"/>
                                @endif
                            </form>

                        </td>
                        <td>{{$com->comment_name}}</td>
                        <td>{{$com->comment_date}}</td>
                        <td style="width: 200px;"><a href="{{route('chitietsanpham',$com->id_product)}}">{{$com->product->name}}</a></td>
                        <td style="width: 180px;">
                            <form action="admin/danhgia/duyet-comment">
                                <input type="hidden" name="comment_id" value="{{$com->id}}">
                                <select name="comment_status">
                                        @if ($com->comment_status==0)
                                            <option  value="1">Bỏ duyệt</option>
                                            <option selected value="0">Duyệt</option>
                                        @else
                                            <option selected value="1">Bỏ duyệt</option>
                                            <option  value="0">Duyệt</option>
                                        @endif
                                    </option>
                                </select>
                                <input type="submit" value="Cập nhật">
                            </form>
                        </td>
                        <td class="center">
                            {{-- <i class="fa fa-trash-o  fa-fw"></i><a href="admin/danhgia/xoa/{{$com->id}}"> Xóa</a> --}}
                            <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal">Xóa</button>

                            <form action="admin/danhgia/xoa/{{$com->id}}" method="GET">
            
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog">
        
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Bạn có chắc chắn muốn xóa?</h4>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                            <button type="submit" class="btn btn-danger">Xóa</button>
                                        </div>
                                        </div>
        
                                    </div>
                                </div>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->


@endsection