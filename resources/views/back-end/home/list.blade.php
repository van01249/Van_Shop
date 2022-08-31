@extends('back-end.master')
@section('title')
Trang quản trị
@endsection
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Trang
                    <small>Quản trị</small>
                </h1>
            </div class="row">
            <div class="col-lg-12">
                <div class="col-lg-3 btn btn-primary">
                    <div class="card">
                        <div class="card-header">
                            <h3><strong>Tổng thể loại</strong></h3>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                            <h3><i class="fa fa-bar-chart" aria-hidden="true"></i>
                                {{$theloai->count()}}</h3>
                            </p>
                            <a href="admin/theloai/danhsach" class="btn btn-primary">Xem tất cả</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 btn btn-secondary">
                    <div class="card">
                        <div class="card-header">
                            <h3><strong>Tổng sản phẩm</strong></h3>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                            <h3><i class="fa fa-cube" aria-hidden="true"></i>
                                {{$sanpham->count()}}</h3>
                            </p>
                            <a href="admin/sanpham/danhsach" class="btn btn-primary">Xem tất cả</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 btn btn-success">
                    <div class="card">
                        <div class="card-header">
                            <h3><strong>Tổng đơn hàng</strong></h3>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                            <h3><i class="fa fa-list-alt" aria-hidden="true"></i>
                                {{$donhang->count()}}</h3>
                            </p>
                            <a href="admin/donhang/danhsach" class="btn btn-primary">Xem tất cả</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 btn btn-danger">
                    <div class="card">
                        <div class="card-header">
                            <h3><strong>Tổng khách hàng</strong></h3>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                            <h3><i class="fa fa-users" aria-hidden="true"></i>
                                {{$khachhang->count()}}</h3>
                            </p>
                            <a href="admin/khachhang/danhsach" class="btn btn-primary">Xem tất cả</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="col-lg-3 btn btn-warning">
                    <div class="card">
                        <div class="card-header">
                            <h3><strong>Tổng tin tức</strong></h3>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                            <h3><i class="fa fa-newspaper-o" aria-hidden="true"></i>
                                {{$tintuc->count()}}</h3>
                            </p>
                            <a href="admin/tintuc/danhsach" class="btn btn-primary">Xem tất cả</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 btn btn-info">
                    <div class="card">
                        <div class="card-header">
                            <h3><strong>Tổng slide</strong></h3>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                            <h3><i class="fa fa-sliders" aria-hidden="true"></i>
                                {{$slide->count()}}</h3>
                            </p>
                            <a href="admin/slide/danhsach" class="btn btn-primary">Xem tất cả</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 btn btn-link">
                    <div class="card">
                        <div class="card-header">
                            <h3><strong>Tổng người dùng</strong></h3>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                            <h3><i class="fa fa-users" aria-hidden="true"></i>
                                {{$quantri->count()}}</h3>
                            </p>
                            <a href="admin/user/danhsach" class="btn btn-primary">Xem tất cả</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->
    <style type="text/css">
        /* p.title_thongke{
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        } */
    </style>
    <div class="row">
        
        <h1><p class="title_thongke">Thống kê đơn hàng doanh số</p></h1>
        <form autocomplete="off">
            <div class="col-md-2">
                <p>Từ ngày:</p> <input type="text" name="" id="datepicker" class="form-control">
                <input type="button" name="" id="btn-dashboard-filter" class="btn btn-primary btn-sm" value="Lọc kết quả">
            </div>
            <div class="col-md-2">
                <p>Đến ngày</p> <input type="text" name="" id="datepicker2" class="form-control">    
            </div>

            <div class="col-md-2">
                <p>Lọc theo:</p>
                <select name="" id="" class="dashboard-filter form-control">
                    <option>--Chọn--</option>
                    <option value="7ngay">7 ngày qua</option>
                    <option value="thangtruoc">Tháng trước</option>
                    <option value="thangnay">Tháng này</option>
                    <option value="365ngay">365 ngày qua</option>
                </select>
            </div>
        </form>
        
    </div>
    <div class="col=md-12">
        <div id="myfirstchart" style="height: 250px;"></div>
    </div>
    
    </div>
<!-- /.container-fluid -->

</div>
<!-- /#page-wrapper -->

@endsection