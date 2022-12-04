<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
            <div>
                <a href="#" class="navbar-brand"> Owl Squad </a>
            </div>

            <ul class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/market_list" class="nav-link">スーパー</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <c:if test="${market != null}">
                            <form action="market_update" method="post" enctype="multipart/form-data">
                </c:if>
                <c:if test="${market == null}">
                            <form action="market_insert" method="post" enctype="multipart/form-data">
                </c:if>

                <caption>
                    <h2>
                        <c:if test="${market != null}">
                                    編集
                        </c:if>
                        <c:if test="${market == null}">
                                    追加
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${market != null}">
                    <input type="hidden" name="id" value="<c:out value='${market.id}' />" />
                </c:if>

                <fieldset class="form-group">
                    <label>スーパーの名前</label> 
                    <input type="text" value="<c:out value='${market.name}' />" class="form-control" name="name" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>スーパー写真</label> <input type="file" value="<c:out value='${market.image}' />"  name="image">
                </fieldset>

                <fieldset class="form-group">
                    <label>スーパータイトル</label> <input type="text" value="<c:out value='${market.title}' />" class="form-control" name="title">
                </fieldset>

                <fieldset class="form-group">
                    <label>スーパーの説明</label> <input type="text" value="<c:out value='${market.description}' />" class="form-control" name="description">
                </fieldset>

                <fieldset class="form-group">
                    <label>スーパーのアドレス</label> <input type="text" value="<c:out value='${market.address}' />" class="form-control" name="address">
                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
            	</form>

            </div>
        </div>
    </div>
</body>
</html>