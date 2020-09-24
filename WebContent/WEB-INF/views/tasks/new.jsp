<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タスクリスト</title>
    </head>
    <body>
        <div id = "wrapper">
            <div id = "header">
                <h1>タスク管理アプリケーション</h1>
            </div>
            <div id = "content">
                <h2>新規タスク登録ページ</h2>
                <form method="POST" action="${pageContext.request.contextPath}/create">
                    <label for="content">タスク内容</label><br />
                    <input type="text" name="content" /><br /><br />
                    <button type="submit">登録</button><br />
                </form>
                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
            </div>
            <div id = "footer">
                by Mitsuo Ito.
            </div>
        </div>
    </body>
</html>
