<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="./css/example.css">
    </head>

    <body>
        <main class="container">

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
            <div class="row">
              <div class="col-3 p-3 bg-warning">
                    コンテンツ１
                </div> 
                <div class="col-9 p-3">
                    <c:forEach var="Umarket" items="${UlistMarket}">
                        <div class="antialiased font-sans">
                            <div class="flex items-center justify-center pt-2.5">
                                <div class="max-w-md md:max-w-6xl px-2">
                                    <div class="bg-white shadow-xl rounded-lg overflow-hidden md:flex">
                                        <div class="bg-cover bg-bottom h-56 md:h-auto md:w-96">
                                           <img src = "./uploadImages/<c:out value="${Umarket.image}" />">
                                        </div>
                                        <div>

                                            <div class="p-4 md:p-5">
                                                <p class="font-bold text-xl md:text-2xl">
                                                    <c:out value="${Umarket.name}" />
                                                </p>
                                                <p class="text-gray-700 md:text-lg">
                                                    <c:out value="${Umarket.description}" />
                                                </p>
                                            </div>
                                            <div class="p-4 md:p-5 bg-gray-100">
                                                <div class="sm:flex sm:justify-between sm:items-center">
                                                    <div>
                                                        <div class="text-lg text-gray-700"><span class="text-gray-900 font-bold"></span>
                                                            <c:out value="${Umarket.address}" />
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </main>
    </body>

    </html>