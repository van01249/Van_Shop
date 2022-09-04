@extends('back-end.master')
@section('title')
Trang danh sách chi tiết đơn hàng
@endsection
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
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
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    <tr align="center">
                        <th>Mã</th>
                        <th>Tên khách hàng</th>
                        <th>Ngày đặt</th>
                        <th>Thành tiền</th>
                        <th>Hình thức thanh toán</th>
                        <th>Trạng thái đơn hàng</th>
                        <th>Phí vận chuyển</th>
                        <th>Tổng tiền</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($bill as $dh)
                    <tr class="even gradeC" align="center">
                        <td>{{$dh->id}}</td>
                        <td>{{$dh->customer->name}}</td>
                        <td>{{$dh->date_order}}</td>
                        <td>{{$dh->total}}</td>
                        <td>{{$dh->payment}}</td>
                        <td>
                            @foreach ($bill as $item => $or)
                                    @if ($or->status==0)
                                        <form>
                                            <select name="staus_bill" class="form-control order_details">
                                                <option value="">---Chọn tình trạng đơn hàng---</option>
                                                <option id="{{$or->id}}" selected value="0">Chưa xử lý - Chờ giao hàng</option>
                                                <option id="{{$or->id}}" value="1">Đã xử lý - Đã giao hàng</option>
                                                <option id="{{$or->id}}" value="3">Đang xử lý - Đang giao hàng</option>
                                                <option id="{{$or->id}}" value="2">Hủy đơn hàng - Đã giao hàng</option>
                                            </select>
                                        </form>
                                    @elseif ($or->status==1)
                                        <form>
                                            <select name="staus_bill" class="form-control order_details">
                                                <option value="">---Chọn tình trạng đơn hàng---</option>
                                                <option id="{{$or->id}}" disabled value="0">Chưa xử lý - Chờ giao hàng</option>
                                                <option id="{{$or->id}}" selected value="1">Đã xử lý - Đã giao hàng</option>
                                                <option id="{{$or->id}}" value="3">Đang xử lý - Đang giao hàng</option>
                                                <option id="{{$or->id}}" disabled value="2">Hủy đơn hàng - Đã giao hàng</option>
                                            </select>
                                        </form>
                                    @elseif ($or->status==3)
                                        <form>
                                            <select name="staus_bill" class="form-control order_details">
                                                <option value="">---Chọn tình trạng đơn hàng---</option>
                                                <option id="{{$or->id}}" value="0">Chưa xử lý - Chờ giao hàng</option>
                                                <option id="{{$or->id}}" value="1">Đã xử lý - Đã giao hàng</option>
                                                <option id="{{$or->id}}" selected value="3">Đang xử lý - Đang giao hàng</option>
                                                <option id="{{$or->id}}" value="2">Hủy đơn hàng - Đã giao hàng</option>
                                            </select>
                                        </form>
                                    @else
                                        <form>
                                            <select name="staus_bill" class="form-control order_details">
                                                <option value="">---Chọn tình trạng đơn hàng---</option>
                                                <option id="{{$or->id}}" value="0">Chưa xử lý - Chờ giao hàng</option>
                                                <option id="{{$or->id}}" value="1">Đã xử lý - Đã giao hàng</option>
                                                <option id="{{$or->id}}" value="3">Đang xử lý - Đang giao hàng</option>
                                                <option id="{{$or->id}}" selected value="2">Hủy đơn hàng</option>
                                            </select>
                                        </form>
                                    @endif
                                @endforeach
                        </td>
                        <td>{{$dh->fee_ship}}</td>
                        
                        <td>{{$dh->total + $dh->fee_ship}}</td>
                        <td class="center">
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
            <form action="">
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead>
                    {{-- <tr>
                        <td colspan="6"> 
                                
                        </td>
                    </tr> --}}
                    <tr align="center">
                        <th>ID</th>
                        <th>Mã đơn hàng</th>
                        <th style="width: 300px;">Tên sản phẩm</th>
                        <th>Tồn kho</th>
                        <th>Số lượng</th>
                        <th>Đơn giá</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($bill_detail as $ctdh)
                    <tr class="even gradeC" align="center">
                        <td>{{$ctdh->id}}</td>
                        <td>{{$ctdh->id_bill}}</td>
                        <td>{{$ctdh->product->name}}</td>
                        <td>{{$ctdh->product->amount}} sản phẩm</td>
                                <td>
                                    {{$ctdh->quantity}}
                                    <input type="hidden" style="width: 100px;" class="order_qty_{{$ctdh->id_product}}" name="qty_billdetail" value="{{$ctdh->quantity}}" >
                                    
                                    <input type="hidden" name="order_product_id" class="order_product_id" value="{{$ctdh->id_product}}">
                                    
                                </td>
                        <td>{{$ctdh->unit_price}}</td>
                        <td class="center">
                            {{-- <i class="fa fa-trash-o  fa-fw"></i> --}}
                            <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal1">Xóa</button>

                            {{-- <form action="admin/chitietdonhang/xoa/{{$ctdh->id}}" method="GET"> --}}
            
                                <div id="myModal1" class="modal fade" role="dialog">
                                    <div class="modal-dialog">
        
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Bạn có chắc chắn muốn xóa?</h4>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                                            {{-- <button type="submit" class="btn btn-danger">Xóa</button> --}}
                                            <a type="button" class="btn btn-danger" href="admin/chitietdonhang/xoa/{{$ctdh->id}}"> Xóa</a>
                                        </div>
                                        </div>
        
                                    </div>
                                </div>
                            {{-- </form> --}}
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
<!-- /#page-wrapper -->

<script src="source/assets/dest/js/jquery.js"></script>
<script src="source/assets/dest/vendors/jqueryui/jquery-ui-1.10.4.custom.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="source/assets/dest/vendors/bxslider/jquery.bxslider.min.js"></script>
<script src="source/assets/dest/vendors/colorbox/jquery.colorbox-min.js"></script>
<script src="source/assets/dest/vendors/animo/Animo.js"></script>
<script src="source/assets/dest/vendors/dug/dug.js"></script>
<script src="source/assets/dest/js/scripts.min.js"></script>
<script src="source/assets/dest/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script src="source/assets/dest/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="source/assets/dest/js/waypoints.min.js"></script>
<script src="source/assets/dest/js/wow.min.js"></script>
<!--customjs-->
<script src="source/assets/dest/js/custom2.js"></script>

<script type="text/javascript">
	
    $('.order_details').change(function(){
        var order_status = $(this).val();
        var order_id = $(this).children(":selected").attr("id");
        var _token = $('input[name="_token"]').val();

        qty=[];
        $("input[name='qty_billdetail']").each(function(){
            qty.push($(this).val());
        });

        order_product_id = [];
        $("input[name='order_product_id']").each(function(){
            order_product_id.push($(this).val());
        });

        $.ajax({
            url : '{{url('/admin/donhang/capnhatsoluong')}}',
            method: 'GET',
            data:{_token:_token, order_status:order_status, order_id:order_id, qty:qty, order_product_id:order_product_id},

            success:function(data){
                alert('Cập nhật trạng thái đơn hàng thành công!');
                location.reload();
            }
        });


    });

</script>
@endsection