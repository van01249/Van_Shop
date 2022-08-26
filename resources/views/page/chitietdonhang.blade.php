@extends('master')
@section('title')
Trang danh sách chi tiết đơn hàng
@endsection
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Đơn hàng
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
                        <th>Mã đơn hàng</th>
                        <th>Ngày đặt</th>
                        <th>Tổng tiền sản phẩm</th>
                        <th>Hình thức thanh toán</th>
                        <th>Trạng thái đơn hàng</th>
                        <th>Tình trạng đơn hàng</th>
                        <th>Phí vận chuyển</th>
                        <th>Ghi chú</th>
                        <th>Tổng tiền thanh toán</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($donhang as $dh)
                    <tr class="even gradeC" align="center">
                        <td>{{$dh->id}}</td>
                        <td>{{$dh->date_order}}</td>
                        <td>{{$dh->total}}</td>
                        <td>{{$dh->payment}}</td>
                        <td>
                            @if ($dh->status==0)
                                            Chưa giao hàng
                                        @elseif ($dh->status==1)
                                            Đã giao hàng
                                        @elseif ($dh->status==3)
                                            Đang giao hàng
                                        @else
                                            Hủy đơn hàng
                                        @endif   
                        </td>
                        <td>
                            @if ($dh->status_payment == 0)
                                Chưa thanh toán
                            @else
                                Đã thanh toán
                            @endif
                        </td>
                        <td>{{$dh->fee_ship}}</td>
                        <td>{{$dh->note}}</td>
                        <td>{{$dh->total + $dh->fee_ship}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- /.row -->
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Chi tiết đơn hàng
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
            <form action="">
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th>ID</th>
                        <th>Mã đơn hàng</th>
                        <th style="width: 300px;">Tên sản phẩm</th>
                        
                        <th>Số lượng</th>
                        <th>Đơn giá</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($bill_detail as $ctdh)
                    <tr class="even gradeC" align="center">
                        <td>{{$ctdh->id}}</td>
                        <td>{{$ctdh->id_bill}}</td>
                        <td>{{$ctdh->product->name}}</td>
                        {{-- <td>{{$ctdh->product->amount}} sản phẩm</td> --}}
                                <td>
                                    {{$ctdh->quantity}}
                                    <input type="hidden" style="width: 100px;" class="order_qty_{{$ctdh->id_product}}" name="qty_billdetail" value="{{$ctdh->quantity}}" >
                                    
                                    <input type="hidden" name="order_product_id" class="order_product_id" value="{{$ctdh->id_product}}">
                                    
                                </td>
                        <td>{{$ctdh->unit_price}}</td>
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
<!-- /#page-wrapper -->


<div id="footer" class="color-div" >
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
                <div class="widget">
                    <h4 class="widget-title">Thông tin</h4>
                    <div>
                        <ul>
                            <li><a href="{{route('gioithieu')}}"><i class="fa fa-chevron-right"></i> Giới thiệu</a></li>
                            <li><a href="{{route('lienhe')}}"><i class="fa fa-chevron-right"></i> Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
             <div class="col-sm-10">
                <div class="widget">
                    <h4 class="widget-title">Liên hệ chúng tôi</h4>
                    <div>
                        <div class="contact-info">
                            <i class="fa fa-map-marker"></i>
                            <p>237 Lĩnh Nam, Hoàng Mai, Hà Nội</p><br>
                        </div>
                    </div>
                </div>
              </div>
            </div>
            <div class="col-sm-3">
                <div class="widget">
                    <h4 class="widget-title">Đăng ký bản tin</h4>
                    <form action="#" method="post">
                        <input type="email" name="your_email">
                        <button class="pull-right" type="submit">Đăng kí <i class="fa fa-chevron-right"></i></button>
                    </form>
                </div>
            </div>
        </div> <!-- .row -->
    </div> <!-- .container -->
</div> <!-- #footer -->
@endsection