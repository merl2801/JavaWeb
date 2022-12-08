<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        
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
                    <h1>店舗リスト</h1>
                </div>

            </header>

            <main class="container">

                <div class="row gx-5">

                    <!-- サイドバー -->
                    <div class="col-sm-3 border side-bar bg-white p-3">

                        <h3 class="border-bottom fs-5 pb-2 m-0">条件を絞り込む</h3>
                        <div class="searches_side_conditions">
                            <h4 class="mt-2">地域</h4>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                <label class="form-check-label" for="flexRadioDefault1">
                          0 - 10m
                        </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                <label class="form-check-label" for="flexRadioDefault2">
                          11 -20m
                        </label>
                            </div>
                        </div>

                    </div>

                    <!-- メインコンテンツ -->
                    <div class="main-content col-sm-9">
                        <c:forEach var="Umarket" items="${UlistMarket}">
                            <div class="store-list bg-white p-3 mb-2">
                                <!-- 店舗名 -->
                                <h4 class="pb-2 border-bottom m-0">
                                    <c:out value="${Umarket.name}" />
                                </h4>

                                <div class="card border-0" style="max-width: auto;">
                                    <div class="row g-0">
                                        <div class="col-md-4">
                                            <img class="img-fluid mt-2" src="./uploadImages/<c:out value="${Umarket.image} " />">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card-body mt-2 py-0">
                                                <p class="card-text">
                                                    <c:out value="${Umarket.description}" />
                                                </p>
                                                <p class="card-text"><small class="text-muted"><c:out value="${Umarket.address}" /></small></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </main>