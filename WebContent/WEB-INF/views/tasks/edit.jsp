<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
                <h2>id：${tasks.id}のタスク編集ページ</h2>
                <form method="POST" action="${pageContext.request.contextPath}/update">
                    <label for="content">タスク内容</label><br />
                    <input type="text" name="content" value="${tasks.content}" /><br /><br />
                    <button type="submit">登録</button><br />
                </form>
                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
                <p><a href="#" onclick="confirmDestroy();">このメッセージを削除する</a></p>
                <form method="POST" action="${pageContext.request.contextPath}/destroy">
                    <input type="hidden" name="_token" value="${_token}" />
                </form>
                <script>
                function confirmDestroy() {
                    if(confirm("本当に削除してよろしいですか？")) {
                        document.forms[1].submit();
                    }
                }
                </script>
            </div>
        </div>
    </body>
</html>