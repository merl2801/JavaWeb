<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%
String name = request.getParameter("store-name");
name = new String(name.getBytes("8859_1"), "UTF-8");
String address = request.getParameter("address");
address = new String(address.getBytes("8859_1"), "UTF-8");
String phone = request.getParameter("phone");
phone = new String(phone.getBytes("8859_1"), "UTF-8");
String time = request.getParameter("time");
time = new String(time.getBytes("8859_1"), "UTF-8");
String product = request.getParameter("product");
product = new String(product.getBytes("8859_1"), "UTF-8");
%> --%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta http-equiv="content-type" charset="UTF-8">
        <title>店舗詳細</title>
        <link rel="stylesheet" href="./css/entry.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/entry.css">
    </head>

    <body>
        <main class="container">
            <h1 class="text-center p-5">店舗詳細</h1>

            <form action="" method="post">
                <div class="row mb-3">
                    <div class="form-group col-md-12 ">
                        <label class="form-label">店舗名</label>
                        <label class="form-control">${sessionScope.UserMarketName}</label>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="form-group col-md-12 ">
                        <label class="form-label">住所</label>
                        <label class="form-control">${sessionScope.UserMarketAddress}</label>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="form-group col-md-6 ">
                        <label class="form-label" for="Inputphone">電話番号</label>
                        <label class="form-control">${sessionScope.UserMarketPhone}</label>
                    </div>

                    <div class="form-group col-md-6 ">
                        <label class="form-label" for="Inputtime">営業時間</label>
                        <label class="form-control">${sessionScope.UserMarketBusiness_hours}</label>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="form-group mb-3">
                        <label for="" class="form-label">取扱商品</label>
                        <label class="form-control">${sessionScope.UserMarketProduct_handle}</label>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="upload-image md-3 alert-warning">
                        <label for="" class="form-label">店舗画像</label>
                        <span class="text-danger">*</span>
                        <input type="file" multiple>

                    </div>
                </div>

                <div class="d-grid mb-3">
                    <button class="btn btn-primary">登録</button>
                </div>
            </form>
        </main>
        <footer>

        </footer>
    </body>

    </html>