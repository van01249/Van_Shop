@extends('back-end.master')
@section('title')
Trang danh sách sản phẩm
@endsection
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Sản phẩm
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
                        <th style="width: 150px;">Tên sản phẩm</th>
                        <th style="width: 100px;">Thể loại</th>
                        <th style="width: 100px;">Số lượng còn</th>
                        <th style="width: 100px;">Đơn giá</th>
                        <th style="width: 250px;">Nội dung</th>
                        <th>Hiển thị</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($sanpham as $sp)
                    <tr class="even gradeC" align="center">
                        <td>{{$sp->id}}</td>
                        <td>{{$sp->name}}<br><img width="100px" height="70px" src="upload/sanpham/{{$sp->image}}" alt=""></td>
                        <td>{{$sp->product_type->name}}</td>
                        <td>{{$sp->amount}}</td>
                        <td>{{$sp->unit_price}}</td>
                        <td width="200px">{!!$sp->summary!!}</td>
                        <th>
                            @if ($sp->display == 0)
                            <button type="button" class="btn btn-success btn-xs" data-toggle="modal" data-target="#myModal">Hiển thị</button>

                            <form action="admin/sanpham/capnhat/{{$sp->id}}" method="GET">
            
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog">
                                        <input type="hidden" name="display" value="1">
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Bạn có chắc chắn muốn hiển thị sản phẩn lên màn hình chính?</h4>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                            <button type="submit" class="btn btn-danger">Cập nhật</button>
                                        </div>
                                        </div>
        
                                    </div>
                                </div>
                            </form>
                            @else
                            <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal">Không hiển thị</button>

                            <form action="admin/sanpham/capnhat/{{$sp->id}}" method="GET">
            
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog">
                                        <input type="hidden" name="display" value="0">
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Bạn có chắc chắn muốn không hiển thị sản phẩn lên màn hình chính?</h4>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                            <button type="submit" class="btn btn-danger">Cập nhật</button>
                                        </div>
                                        </div>
        
                                    </div>
                                </div>
                            </form>
                            @endif
                        </th>
                        <td class="center">
                            {{-- <i class="fa fa-trash-o  fa-fw"></i><a href="admin/sanpham/xoa/{{$sp->id}}"> Xóa</a> --}}
                            <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal">Xóa</button>

                            <form action="admin/sanpham/xoa/{{$sp->id}}" method="GET">
            
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
                        <td class="center" style="width:50px;"><i class="fa fa-pencil fa-fw"></i> <a href="admin/sanpham/sua/{{$sp->id}}"> Sửa</a></td>
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