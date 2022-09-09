@extends('back-end.master')
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
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th>Mã</th>
                        <th>Tên khách hàng</th>
                        <th>Ngày đặt</th>
                        <th>Tình trạng đơn hàng</th>
                        <th>Hình thức thanh toán</th>
                        <th>Trạng thái giao hàng</th>
                        {{-- <th>Ghi chú</th> --}}
                        {{-- <th>Tổng tiền</th> --}}
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($donhang as $dh)
                    <tr class="even gradeC" align="center">
                        <td>{{$dh->id}}</td>
                        <td>{{$dh->customer->name}}</td>
                        <td>{{$dh->date_order}}</td>
                        <td>
                            @if ($dh->status_payment == 0)
                                Chưa thanh toán
                            @else
                                Đã thanh toán
                            @endif
                        </td>
                        <td>{{$dh->payment}}</td>
                        <td>@if ($dh->status==0)
                            Chưa giao hàng
                        @elseif ($dh->status==1)
                            Đã giao hàng
                        @elseif ($dh->status==3)
                            Đang giao hàng
                        @else
                            Hủy đơn hàng
                        @endif  </td>
                        {{-- <td>{{$dh->note}}</td> --}}
                        {{-- <td>{{$dh->total + $dh->fee_ship}} </td> --}}
                        <td class="center"><i class="fa fa-edit  fa-fw"></i><a href="admin/donhang/chitiet/{{$dh->id}}"> Chi tiết</a></td>
                        <td class="center">
                            @if($dh->status == 0 )
                            <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal">Xóa</button>

                            <form action="admin/donhang/xoa/{{$dh->id}}" method="GET">
            
                                <div id="myModal" class="modal fade" role="dialog">
                                    <div class="modal-dialog">
        
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Bạn có chắc chắn muốn xóa?</h4>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
                                            <button type="submit" class="btn btn-danger">Xóa</button>
                                        </div>
                                        </div>
        
                                    </div>
                                </div>
                            </form>
                            @endif
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