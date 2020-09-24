<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                <h2>id：${tasks.id}のメッセージ詳細</h2>
                <p>タスク内容：<c:out value="${tasks.content}" /></p>
                <p>作成日時：<c:out value="${tasks.create_at}" /></p>
                <p>更新日時：<c:out value="${tasks.update_at}" /></p>

                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
            </div>
            <div id = "footer">
                by Mitsuo Ito.
            </div>
        </div>
    </body>
</html>