<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Basic webapp</title>
  <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" charset="UTF-8" type="text/css">
</head>
<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a href="index" class="navbar-brand">
        Basic Webapp
      </a>

      <ul class="navbar-nav mr-auto">
        
      </ul>
      
      <ul class="navbar-nav">
        <li class="navbar-item">
          <button type="button" class="btn btn-success">
            新規登録
          </button>
          <button type="button" class="btn btn-success">
            ログイン
          </button>
          <button type="button" class="btn btn-light">
            ログアウト
          </button>
        </li>
      </ul>
    </nav>
  </header>

  <jsp:include page="${requestScope.yield}"/>

  <footer>
    <p>
      ServletPath: <%= request.getServletPath() %>
    </p>
    <p>
      PathInfo: <%= request.getPathInfo() %>
    </p>
  </footer>

  <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
