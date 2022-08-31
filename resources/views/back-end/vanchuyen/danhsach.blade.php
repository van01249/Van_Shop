@extends('back-end.master')
@section('title')
Trang danh sách phí vận chuyển
@endsection
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Phí vận chuyển
                    <small>Danh sách</small>
                </h1>
            </div>

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
                        <th>Tên thành phố</th>
                        <th>Tên quận huyện</th>
                        <th>Tên xã phường</th>
                        <th>Phí vận chuyển</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $fee)
                    <tr class="even gradeC" align="center">
                        <td>{{$fee->id}}</td>
                        <td>{{$fee->city->name}}</td>
                        <td>{{$fee->province->name}}</td>
                        <td>{{$fee->wards->name}}</td>
                        <td>{{$fee->fee_ship}}</td>>
                        <td class="center">
                            {{-- <i class="fa fa-trash-o  fa-fw"></i><a href="admin/vanchuyen/xoa/{{$fee->id}}"> Xóa</a> --}}
                            <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#myModal">Xóa</button>

                            <form action="admin/vanchuyen/xoa/{{$fee->id}}" method="GET">
            
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