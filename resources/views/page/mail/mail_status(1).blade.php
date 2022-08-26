<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Xác nhận đơn hàng</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
<body>
    <div class="container" style="border-radius: 12px; padding: 15px">
        <p style="text-align: center">Đây là email tự động. Quý khách vui lòng không trả lời email này!</p>
        <div class="row">
            <div class="col-md-6" style="text-align: center; font-weight: bold; font-size: 30px">
                <h4 style="margin: 0"> CỬA HÀNG MỸ PHẨM VAN SHOP </h4>
                <h6 style="margin: 0"> DỊCH VỤ GIAO HÀNG - VẬN CHUYỂN CHUYÊN NGHIỆP </h6>
            </div>

            <div class="col-md-6 logo">
                <p>Chào bạn <strong>{{$shipping['cus_name']}}</strong></p>
            </div>

            <div class="col-md-12">
                <p>Bạn hoặc một ai đó đã đăng ký dịch vụ tại shop với thông tin như sau:</p>
                <h4>Thông tin đơn hàng</h4>
                <p>Dịch vụ: <strong>Đặt hàng trực tuyến</strong></p>
                <p>Tình trạng giao hàng: <strong>Đã giao hàng</strong></p>

                <h4>Thông tin người nhận</h4>
                <p>Tên người nhận: <strong>{{$shipping['ship_name']}}</strong></p>
                <p>Email: <strong>{{$shipping['email']}}</strong></p>
                <p>Địa chỉ nhận hàng: <strong>{{$shipping['address']}}</strong></p>
                <p>Số điện thoại: <strong>{{$shipping['phone_number']}}</strong></p>
                <p>Ghi chú: <strong>{{$shipping['note']}}</strong></p>

                <p><i>Nếu thông tin người nhận hàng không có chúng tôi sẽ liên hệ với người đặt hàng để
                    trao đổi thông tin đặt hàng.
                </i></p>

                <h4>Sản phẩm đã đặt</h4>
                <p>Chi phí thanh toán: <strong>{{$total}}</strong> VNĐ</p>
                <p>Chi phí vận chuyển: <strong>{{$phi_van_chuyen}}</strong> VNĐ</p>
                <p>Tổng tiền thanh toán: <strong>{{$total + $phi_van_chuyen}}</strong> VNĐ</p>
                <table border="1px">
                    <thead>
                        <tr>
                            <th>Sản phẩm</th>
                            <th>Giá tiền</th>
                            <th>Số lượng đặt</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($cart_arr as $item)
                        <tr>
                            <td><strong>{{$item['product_name']}}</strong></td>
                            <td><strong>{{$item['product_unit_price']}}</strong></td>
                            <td><strong>{{$item['product_qty']}}</strong></td>
                            <td><strong>{{$item['product_price']}}</strong></td>     
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                
            </div>
            <p>Mọi chi tiết xin liên hệ qua hotline: 0396646090. Xin cảm ơn quý khách đã đặt hàng tại shop chúng tôi! </p>
        </div>
    </div>
</body>
</html>