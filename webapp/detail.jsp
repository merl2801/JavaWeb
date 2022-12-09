<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layouts/logout.jsp" %>
   
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
            </form>
        </main>
        