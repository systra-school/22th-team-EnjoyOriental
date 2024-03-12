<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="overflow-y: hidden;">
<head>
<meta charset="UTF-8">
    <style>
        body {
            background-image: url("/kikin/pages/pp/image/error.jpeg");
            background-size: cover; /* 画面全体に背景画像を表示 */
            background-repeat: no-repeat; /* 背景画像の繰り返しを禁止 */
        }

        .image-container {
            position: relative; /* 相対位置指定 */
            width: 1300px; /* コンテナの幅を指定 */
            height: 800px; /* コンテナの高さを指定 */
            overflow: hidden; /* コンテナからはみ出た内容を非表示にする */
        }

        .image {
            position: absolute; /* 絶対位置指定 */
            height: 250px;
        }
        
        /* 各画像の揺れるアニメーションの設定 */
        .image1 { top: 50px; left: 405px; animation: shake1 0.5s infinite alternate; }
        .image2 { top: 40px; left: 780px; animation: shake2 0.5s infinite alternate; }
        .image3 { top: 290px; left: 190px; animation: shake3 0.5s infinite alternate; }
        .image4 { top: 300px; left: 585px; animation: shake4 0.5s infinite alternate; }
        .image5 { top: 295px; left: 985px; animation: shake5 0.5s infinite alternate; }
        .image6 { top: 525px; left: 362px; animation: shake6 0.5s infinite alternate; }
        .image7 { top: 510px; left: 825px; animation: shake7 0.5s infinite alternate; }

        @keyframes shake1 {
            0% { transform: translateX(0); }
            25% { transform: translateX(5px) rotate(3deg); }
            50% { transform: translateX(-5px) rotate(-3deg); }
            75% { transform: translateX(5px) rotate(3deg); }
            100% { transform: translateX(0); }
        }

        @keyframes shake2 {
            0% { transform: translateX(0); }
            50% { transform: translateX(10px) rotate(5deg); }
            100% { transform: translateX(0); }
        }

        @keyframes shake3 {
            0% { transform: translateX(0); }
            25% { transform: translateX(-3px) rotate(-2deg); }
            75% { transform: translateX(3px) rotate(2deg); }
            100% { transform: translateX(0); }
        }

        @keyframes shake4 {
            0% { transform: translateX(0); }
            50% { transform: translateX(-8px) rotate(-4deg); }
            100% { transform: translateX(0); }
        }

        @keyframes shake5 {
            0% { transform: translateX(0); }
            25% { transform: translateX(6px) rotate(2deg); }
            75% { transform: translateX(-6px) rotate(-2deg); }
            100% { transform: translateX(0); }
        }

        @keyframes shake6 {
            0% { transform: translateX(0); }
            50% { transform: translateX(12px) rotate(6deg); }
            100% { transform: translateX(0); }
        }

        @keyframes shake7 {
            0% { transform: translateX(0); }
            25% { transform: translateX(-7px) rotate(-3.5deg); }
            75% { transform: translateX(7px) rotate(3.5deg); }
            100% { transform: translateX(0); }
        }
    </style>
    <title>You Are Idiot</title>
</head>
<body>

<div class="image-container">
    <img src="/kikin/pages/pp/image/IMG_6346.jpeg" alt="Image 1" class="image image1">
    <img src="/kikin/pages/pp/image/IMG_6346.jpeg" alt="Image 2" class="image image2">
    <img src="/kikin/pages/pp/image/IMG_6346.jpeg" alt="Image 3" class="image image3">
    <img src="/kikin/pages/pp/image/IMG_6346.jpeg" alt="Image 4" class="image image4">
    <img src="/kikin/pages/pp/image/IMG_6346.jpeg" alt="Image 5" class="image image5">
    <img src="/kikin/pages/pp/image/IMG_6346.jpeg" alt="Image 6" class="image image6">
    <img src="/kikin/pages/pp/image/IMG_6346.jpeg" alt="Image 7" class="image image7">
</div>

</body>
</html>
    
