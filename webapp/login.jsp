<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <%@ include file="../layouts/Menu.jsp" %>

        <header>


            <!-- ロゴ -->
            <div class="logo">
                <a href="./index.jsp">

                    <img src="./images/Owl_Search.jpg" alt="">
                </a>
            </div>

            <!-- タイトル -->
            <div class="theme mt-3 text-center ">
                <h1>ログイン</h1>
            </div>

        </header>

        <main class="container">

            <form action="login" method="post" id="login-form">

                <!-- アカウント -->
                <div class="mt-3 form-group d-flex align-items-center">
                    <span class="user"></span>
                    <input type="text" name="userName" id="userName" placeholder="アカウント" required>
                </div>

                <!-- パスワード -->
                <div class="mt-3 form-group">
                    <span class="pwd"></span>
                    <span class="user"></span>
                    <input type="password" name="password" id="password" placeholder="パスワード" required>
                </div>

                <!-- buttons -->
                <button class="btn mt-3">Login</button>

            </form>

            <!-- アカウント作成ページに移行 -->
            <div class="text-center mt-4">
                <a href="./regist.jsp" style="text-decoration: none; color: #03A9F4;">新規登録</a>
            </div>

        </main>