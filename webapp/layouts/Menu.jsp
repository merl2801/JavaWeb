<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/menu.css">
        <link rel="stylesheet" href="./css/index.css">
         <link rel="stylesheet" href="./css/login.css">
         <link rel="stylesheet" href="./css/regist.css">
        <title>owl-squad</title>
    </head>
<body>
    <div class="header">
        <div>
            <div class="pie pie1" onclick="document.body.classList.remove('active')">
                <div class="pie-color pie-color1">
                    <a href="./login.jsp">
                        <!-- <svg class="card-menu" viewBox="0 0 100 100" width="100" height="100">
              <path d="M12 16h-10v-4h10v-4l6 6-6 6zM32 0v26l-12 6v-6h-12v-8h2v6h10v-18l8-4h-18v8h-2v-10z"></path>
            </svg> -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="ionicon card-menu" viewBox="0 0 512 512" width="50" height="50"><title>Log In</title><path d="M192 176v-40a40 40 0 0140-40h160a40 40 0 0140 40v240a40 40 0 01-40 40H240c-22.09 0-48-17.91-48-40v-40" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M288 336l80-80-80-80M80 256h272"/></svg>
                    </a>
                </div>
            </div>
            <div class="pie pie2" onclick="document.body.classList.remove('active')">
                <div class="pie-color pie-color2">
                    <a href="<%=request.getContextPath()%>/User_market">
                     
                        <svg xmlns="http://www.w3.org/2000/svg" class="ionicon list-market" viewBox="0 0 512 512"><title>List</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M160 144h288M160 256h288M160 368h288"/><circle cx="80" cy="144" r="16" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/><circle cx="80" cy="256" r="16" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/><circle cx="80" cy="368" r="16" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/></svg>
                    
                    </a>
                </div>
            </div>
            <div class="pie pie3" onclick="document.body.classList.remove('active')">
                <div class="pie-color pie-color3">
                    <a href="./index.jsp">
                        <!-- <svg class="cart" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" width="100" height="100">
              <path d="M32 19l-6-6v-9h-4v5l-6-6-16 16v1h4v10h10v-6h4v6h10v-10h4z"></path>

            </svg> -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="ionicon cart" viewBox="0 0 512 512" width="50" height="50">
                            <title>Home</title>
                            <path d="M80 212v236a16 16 0 0016 16h96V328a24 24 0 0124-24h80a24 24 0 0124 24v136h96a16 16 0 0016-16V212" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/><path d="M480 256L266.89 52c-5-5.28-16.69-5.34-21.78 0L32 256M400 179V64h-48v69" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/></svg>
                    </a>
                </div>
            </div>
            <div class="menu" onclick="document.body.classList.toggle('active')">
                <svg class="hamburger" xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 100 100">
          <g fill="none" stroke="#000" stroke-width="7.999" stroke-linecap="round">
            <path d="M 55,26.000284 L 24.056276,25.999716" />
            <path d="M 24.056276,49.999716 L 75.943724,50.000284" />
            <path d="M 45,73.999716 L 75.943724,74.000284" />
            <path d="M 75.943724,26.000284 L 45,25.999716" />
            <path d="M 24.056276,73.999716 L 55,74.000284" />
          </g>
        </svg>
            </div>
        </div>

        <div class="map">
            <a href="./map.jsp">
                <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" class="ionicon map-search" viewBox="0 0 512 512">
          <path d="M313.27 124.64L198.73 51.36a32 32 0 00-29.28.35L56.51 127.49A16 16 0 0048 141.63v295.8a16 16 0 0023.49 14.14l97.82-63.79a32 32 0 0129.5-.24l111.86 73a32 32 0 0029.27-.11l115.43-75.94a16 16 0 008.63-14.2V74.57a16 16 0 00-23.49-14.14l-98 63.86a32 32 0 01-29.24.35zM328 128v336M184 48v336" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32"/>
        </svg>
            </a>
        </div>
    </div>

</body>
</html>