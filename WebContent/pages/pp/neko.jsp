<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html style="overflow-y: hidden;">
<head>
<title>Error</title>
<meta charset="UTF-8">
    <style>
        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0; }
            100% { opacity: 1; }
        }

        .blink-text {
            animation: blink 1s linear infinite; /* アニメーションの継続時間を5秒に設定 */
        }

    </style>
</head>
<body style="background-color: black;">
<div style="color: red;font-size: 52.5px;text-align: left; font-weight: bold;">
<p class="blink-text">Error code: 0x001B4F<br>
Error message: <br>
A fatal error has occurred within the system. This error code represents an abnormality detected by the system. Please notify the administrator.
<p onclick="window.location.href = '/kikin/pages/pp/error.jsp';" style="cursor: pointer;">>>Click Me<<</p>
</div>
</body>
</html>