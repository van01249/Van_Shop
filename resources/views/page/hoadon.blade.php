@extends('master')
@section('title')
Trang danh sách đơn hàng
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
            @if(Session::has('message'))
                            <div class="alert alert-success">{{Session::get('message')}}</div>
                        @elseif (Session::has('error'))
                            <div class="alert alert-danger">{{Session::get('error')}}</div>
                        @endif
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
                        <th>Tổng tiền thanh toán</th>
                        <th>Chi tiết</th>
                        <th>Hủy đơn hàng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($donhang as $dh)
                    <tr class="even gradeC" align="center">
                        <td>{{$dh->id_order}}</td>
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
                        <td>{{$dh->total + $dh->fee_ship}}</td>
                        <td class="center"><i class="fa fa-edit  fa-fw"></i><a href="history-detail/{{$dh->id_order}}"> Chi tiết</a></td>
                        <td>
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal">Hủy đơn hàng</button>

                            <form action="{{route('updatestatus')}}" method="GET">
                                {{-- @foreach($donhang as $dh) --}}
                                    <input type="hidden" name="bill_id" value="{{$dh->id_order}}">
                                {{-- @endforeach --}}
                                <!-- Modal -->
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog">
        
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Lý do hủy đơn hàng</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p><textarea class="lydo" name="lydo" rows="5" required placeholder="Lý do hủy đơn hàng (Bắt buộc)"></textarea></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                            <button type="submit" class="btn btn-success">Gửi</button>
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
            <div style="margin-left:300px">
                {{$donhang->render()}}
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
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