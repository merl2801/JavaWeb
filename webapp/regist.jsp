<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ include file="../layouts/Menu.jsp" %>

        <div class="logo">
            <img src="./images/Owl_Search.jpg" alt="">

        </div>
        <h2 class="text-center p-5">ユーザー登録</h2>

        <main class="container">
            <form action="register" method="post" id="register-form">

                <div class="row mb-3">
                    <div class="form-group col-md-12 ">
                        <label class="form-label" for="InputName">氏名</label>
                        <span class="text-danger">*</span>
                        <input id="InputName" class="form-control" type="text" name="name" required>
                    </div>

                    <div class="form-group col-md-12 ">
                        <label class="form-label" for="InputEmail">Email</label>
                        <span class="text-danger">*</span>
                        <input id="InputEmail" class="form-control" type="email" name="email" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="form-group col-md-12 ">
                        <label class="form-label" for="InputName">パスワード</label>
                        <span class="text-danger">*</span>
                        <input id="InputPassword" class="form-control" type="password" name="password" required>
                    </div>


                </div>

                <div class="d-grid mb-3">
                    <button class="btn btn-primary" name="signup" id="signup" value="Register">ログイン</button>
                </div>

            </form>

        </main>