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
                        <th>Tên sản phẩm</th>
                        <th>Thể loại</th>
                        <th>Đánh giá</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($sanpham as $sp)
                    <tr class="even gradeC" align="center">
                        <td>{{$sp->id}}</td>
                        <td><a href="{{route('chitietsanpham',$sp->id)}}">{{$sp->name}}</a><br><img width="100px" height="70px" src="upload/sanpham/{{$sp->image}}" alt=""></td>
                        <td>{{$sp->product_type->name}}</td>
                        <td class="center">
                            {{-- <input type="hidden" name="id_product" value="{{$sp->id}}"> --}}
                            <i class="fa fa-pencil fa-fw"></i> <a href="admin/danhgia/danhsach/{{$sp->id}}"> Quản lý</a>
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