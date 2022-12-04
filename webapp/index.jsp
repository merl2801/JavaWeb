<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ include file="../layouts/Menu.jsp" %>
          
            <main class="container">
          <!-- タイトル -->
                <div class = main>
                
                <section id="banner">
                    <div class="container">
                        <h1 for="">Owl Search</h1>
                    </div>
                </section>

                <section id="radio">
                    <form action="" method="GET">
                        <div class="container radio">
                            <!-- <h3>検索方法</h3>
                            <ul>
                                <li><input type="radio" name="place" value="local" checked>地図から検索</li>
                                <li><input type="radio" name="place" value="search">店舗名を入力して検索</li>
                            </ul> -->
                        </div>
                    </form>
                    <form action="" method="post">
                        <div class="row mb-3 form-field">
                            <h3 class="form-label">店舗名</h3>
                            <div>
                                <span class="text-danger"></span>
                                <input type="text" class="form-control" name="name">
                            </div>
                        </div>

                        <div class="button-search d-grid gap-2 col-6 mx-auto">
                            <button class="btn btn-primary">検索</button>
                        </div>
                    </form>

                </section>
                </div>
            </main>