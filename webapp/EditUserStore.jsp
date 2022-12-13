<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


        <%-- <%
	if(session.getAttribute("Uname")==null){
		response.sendRedirect("regist.jsp");
	}
%>
            --%>


            <%@ include file="../layouts/logout.jsp" %>
                <main class="container">
                    <h1 class="text-center p-5">店舗登録</h1>

                    <!--  Form Store-->
                    <form action="store_insert" method="post">
                        <div class="row mb-3">
                            <div class="form-group col-md-12 ">
                                <label class="form-label">店舗名</label>

                                <input class="form-control" type="text" value="<c:out value='${EStore.name}' />" name="name" style="ime-mode:active" required>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="form-group col-md-12 ">
                                <label class="form-label">住所</label>

                                <input class="form-control" type="text" value="<c:out value='${EStore.address}' />" name="address" style="ime-mode:active" required>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="form-group col-md-6 ">
                                <label class="form-label" for="Inputphone">電話番号</label>
                                <input id="Inputphone" class="form-control" type="text" value="<c:out value='${EStore.phone}' />" name="phone" required>
                            </div>

                            <div class="form-group col-md-6 ">
                                <label class="form-label" for="Inputtime">営業時間</label>
                                <input id="Inputtime" class="form-control" type="text" value="<c:out value='${EStore.business_hours}' />" name="business_hours" required>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="form-group mb-3">
                                <label for="" class="form-label">取扱商品</label>
                                <input type="text" class="form-control" value="<c:out value='${EStore.products_handled}' />" name="products_handled" style="ime-mode:active" required>
                            </div>
                        </div>

                        <!-- <div class="row mb-3">
                        <div class="upload-image md-3 alert-warning">
                            <label for="" class="form-label">店舗画像</label>
                            <span class="text-danger">*</span>
                            <input type="file" name ="image">
                            
                        </div>
                    </div> -->

                        <div class="d-grid mb-3">
                            <button type="submit" class="btn btn-primary">登録</button>
                        </div>

                        <!-- <a href="logout">ログオウ</a> -->
                    </form>
                   
                </main>