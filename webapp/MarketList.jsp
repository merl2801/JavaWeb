<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><script src="https://cdn.tailwindcss.com"></script>

</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
            <div>
                <a href="index" class="navbar-brand"> Owl Squad </a>
            </div>

            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/market_list" class="nav-link">スーパー</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="row">
        <div class="col-12">
            <p class="text-center fs-1" style="color: rgb(31, 165, 47);">スーパーリスト</p>
                    <hr>
                    <div class="container text-left p-3">

                        <a href="<%=request.getContextPath()%>/market_new" class="btn btn-success">スーパー追加</a>
                    </div>
        </div>
        <br>
       
        <div class="container">

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Image</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Address</th>
                    </tr>
                </thead>
                    <tbody>
                        <c:forEach var="market" items="${listMarket}">   
                            <tr>
                                <td>                                
                                    <c:out value="${market.id}" />
                                </td>
                                
                                <td>                                
                                    <c:out value="${market.name}" />
                                </td>
                                
                                <td>                                
                                 <img src = "./uploadImages/<c:out value="${market.image}" />">
                                </td>
                                
                                <td>                                
                                    <c:out value="${market.title}" />
                                </td>
                                
                                <td>                                
                                    <c:out value="${market.description}" />
                                </td>
                                
                                <td>                                
                                    <c:out value="${market.address}" />
                                </td>
    
                                   <td><a href="market_edit?id=<c:out value='${market.id}' />">編集</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="market_delete?id=<c:out value='${market.id}' />">消し</a></td>
    
                            </tr>
                        </c:forEach>
                    </tbody>
            </table>
        </div>

    </div>

</body>
</html>