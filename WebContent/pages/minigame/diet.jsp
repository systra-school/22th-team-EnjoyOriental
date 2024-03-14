<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let's!diet!</title>

<style>
  body {
    overflow: hidden; /* 画面外に要素が出ないようにする */
    margin: 0; /* デフォルトのマージンを除去 */
  }
  img {
  	width:300px;
  	height:200px;
    position: absolute;
    width: 100px; /* 画像のサイズを調整 */
    
  }

	.jump{
		   /*animationプロパティここから*/
    animation-name: bounce;
    animation-duration: 1s;
    animation-iteration-count: infinite;
    animation-timing-function: linear;
    transform-origin: center bottom;
	}
	@keyframes bounce {
    0%   { transform: scale(1.0, 1.0) translate(0%, 0%); } /* 初期状態 */
    30%  { transform: scale(1.5, 0.5) translate(0%, 0%); } /* 地面に着地し、その変動で潰れだす */
    40%  { transform: scale(1.0, 1.0) translate(0%, 0%); } /* 潰れた反動で一瞬元に戻る */
    50%  { transform: scale(0.8, 1.3) translate(0%, -70%); } /* 潰れた反動で縦に伸び、その勢いでバウンド開始 */
    60%  { transform: scale(1.0, 1.0) translate(0%, -120%); } /* 潰れた反動が終り、空中で元に戻る */
    100% { transform: scale(1.0, 1.0) translate(0%, 0%); } /* 初期状態に戻る */
	}
	.rotation{
    transform-origin: center bottom;
    transform: rotate(0deg);
    animation: rotate 10s linear infinite;
	}
	@keyframes rotate {
	    0% {
	        transform: rotate(0deg);
	    }
	    100% {
	        transform: rotate(360deg);
	    }
	}
	.rotation2{
    transform-origin: center bottom;
    transform: rotate(0deg);
    animation: rotate2 10s linear infinite;
	}
	@keyframes rotate2 {
	    0% {
	        transform: rotate(360deg);
	    }
	    100% {
	        transform: rotate(0deg);
	    }
	}
	.rotation3{
    transform-origin: center bottom;
    transform: rotate(0deg);
    animation: rotate3 2s linear infinite;
	}
	@keyframes rotate3 {
	    0% {
	        transform: rotate(0deg);
	    }
	    100% {
	        transform: rotate(360deg);
	    }
	}
	input{
		width:180px;
		height:80px;
		font-size:60px;
		color: black;
		border:none;
		text-align:right;
		
	}
</style>
</head>
<body style = "overflow:hidden;">
	<div style="text-align:center; font-size:60px;">Let's!diet!  体重<input id="result" type="text" value = "70.0" readonly>kg</div>
	<%--<img src = "/kikin/pages/minigame/image/oni1.gif">--%>

		<div>
		<div style = "position: fixed; z-index:1;"id="movingImage"><img src = "/kikin/pages/minigame/image/sa-mon.gif" onclick = "cnt1(this)"></div>
 		<div style = "position: fixed; z-index:2;"id="movingImage2"><img src = "/kikin/pages/minigame/image/be-kon.gif" onclick = "cnt2()"></div>
		<div style = "position: fixed; z-index:3;"id="movingImage3"><img src = "/kikin/pages/minigame/image/bonresu.gif" onclick = "cnt2()"></div>
		<div style = "position: fixed; z-index:4;"id="movingImage4"><img src = "/kikin/pages/minigame/image/sa-mon2.gif" onclick = "cnt1()"></div>
		<div style = "position: fixed; z-index:5;"id="movingImage5"><img src = "/kikin/pages/minigame/image/ika.gif" onclick = "cnt1()"></div>
		<div style = "position: fixed; z-index:6;"id="movingImage6"><img src = "/kikin/pages/minigame/image/kome.gif" onclick = "cnt1()"></div>
		<div style = "position: fixed; z-index:7;"id="movingImage7"><img src = "/kikin/pages/minigame/image/niku.gif" onclick = "cnt2()"></div>
		<div style = "position: fixed; z-index:8;"id="movingImage8"><img src = "/kikin/pages/minigame/image/oni2.gif" onclick = "cnt1()"></div>
		<div style = "position: fixed; z-index:9;"id="movingImage9"><img src = "/kikin/pages/minigame/image/oni3.gif" onclick = "cnt1()"></div>
		<div style = "position: fixed; z-index:10;"id="movingImage10"><img src = "/kikin/pages/minigame/image/toro.gif" onclick = "cnt1()"></div>
		<div style = "position: fixed; z-index:11;"id="movingImage11"><img src = "/kikin/pages/minigame/image/uni.gif" onclick = "cnt1()"></div>	
		<div style = "position: fixed; z-index:12;"id="movingImage12"><img src = "/kikin/pages/minigame/image/syo-to.gif" onclick = "cnt3()"></div>
		<div style = "position: fixed; z-index:13;"id="movingImage13"><img src = "/kikin/pages/minigame/image/sakana2.gif" onclick = "cnt1()"></div>
		<div style = "position: fixed; z-index:14;"id="movingImage14"class ="jump"><img src = "/kikin/pages/minigame/image/sakana.gif" onclick = "cnt1()"></div>
		<div style = "position: fixed; z-index:0;margin:0 1300px;"class ="jump"><img src = "/kikin/pages/minigame/image/tako.gif" onclick = "cnt1()"></div>
		<div style = "position: fixed; z-index:0;margin:450px 400px;"class ="jump"><img src = "/kikin/pages/minigame/image/oni5.gif" onclick = "cnt2()"></div>
		<div style = "position: fixed; z-index:0;margin:150px 900px;"class ="rotation"><img src = "/kikin/pages/minigame/image/azarasi.gif" onclick = "cnt3()"></div>
		<div style = "position: fixed; z-index:0; margin:250px 750px;"class ="rotation2"><img src = "/kikin/pages/minigame/image/gorira.gif" onclick = "cnt4()"></div>
		<div style = "position: fixed; z-index:0;margin:500px 300px;"class ="rotation3"><img src = "/kikin/pages/minigame/image/oni4.gif" onclick = "cnt2()"></div>
		<div style = "position: fixed; z-index:0;"><img src = "/kikin/pages/minigame/image/syoboneko.gif" onclick = "cnt4()"></div>
		<div style = "position: fixed; z-index:0; margin:400px 1300px;"><img src = "/kikin/pages/minigame/image/tya-han.gif" onclick = "cnt3()"></div>
		<div style = "position: fixed; z-index:0; margin:450px 0  0 0;"><img src = "/kikin/pages/minigame/image/uinna-.gif" onclick = "cnt2()"></div>
		</div>
<script type="text/javascript">


//画像ごとにクリックイベントリスナーを追加

function cnt1(image){
	 var cnt = parseFloat(document.getElementById('result').value)
	 if(cnt < 120 && cnt >= 115){
		 document.getElementById('result').value = 120;
	 }else if(cnt < 115){
		 cnt += 0.5;
		 document.getElementById('result').value = cnt;
	 }
	 if(cnt >= 70){
		 document.getElementById('result').style.color = 'red';
	 }else{
		 document.getElementById('result').style.color = 'black';
	 }
}
function cnt2(image){
	 var cnt = parseFloat(document.getElementById('result').value)
	 if(cnt < 120 && cnt >= 115){
		 document.getElementById('result').value = 120;
	 }else if(cnt < 115){
		 cnt += 1;
		 document.getElementById('result').value = cnt;
	 }
	 if(cnt >= 70){
		 document.getElementById('result').style.color = 'red';
	 }else{
		 document.getElementById('result').style.color = 'black';
	 }
}
function cnt3(image){
	 var cnt = parseFloat(document.getElementById('result').value)
	 if(cnt < 120 && cnt >= 115){
		 document.getElementById('result').value = 120;
	 }else if(cnt < 115){
		 cnt += 3;
		 document.getElementById('result').value = cnt;
	 }
	 if(cnt >= 70){
		 document.getElementById('result').style.color = 'red';
	 }else{
		 document.getElementById('result').style.color = 'black';
	 }
	 
}

function cnt4(image){
	 var cnt = parseFloat(document.getElementById('result').value)
	 if(cnt > 50.5){
		 cnt -= 0.5;
		 document.getElementById('result').value = cnt;
	 }else if(cnt <= 50.5){
		 document.getElementById('result').value = 50;
	 }
	 if(cnt >= 70){
		 document.getElementById('result').style.color = 'red';
	 }else{
		 document.getElementById('result').style.color = 'black';
	 }
}

 //画像1
 var img = document.getElementById('movingImage');
 var x = Math.random() * window.innerWidth, y = Math.random() * window.innerHeight;
 var dx = 4, dy = 1; // 画像の移動速度と方向

 function moveImage() {
   x += dx;
   y += dy;

   // 画面の端に達したら反転
   if (x <= 0 || x >= window.innerWidth - img.offsetWidth) {
     dx = -dx;
   }
   if (y <= 0 || y >= window.innerHeight - img.offsetHeight) {
     dy = -dy;
   }

   img.style.left = x + 'px';
   img.style.top = y + 'px';

   requestAnimationFrame(moveImage); // 次のフレームで関数を再度実行
 }

 moveImage(); // 関数を初回実行
 
//画像2
var img2 = document.getElementById('movingImage2');
var x2 = Math.random() * window.innerWidth, y2 = Math.random() * window.innerHeight;
var dx2 = 2, dy2 = 2; // 画像の移動速度と方向

function moveImage2() {
  x2 -= dx2;
  y2 += dy2;

  // 画面の端に達したら反転
  if (x2 <= 0 || x2 >= window.innerWidth - img2.offsetWidth) {
    dx2 = -dx2;
  }
  if (y2 <= 0 || y2 >= window.innerHeight - img2.offsetHeight) {
    dy2 = -dy2;
  }

  img2.style.left = x2 + 'px';
  img2.style.top = y2 + 'px';

  requestAnimationFrame(moveImage2); // 次のフレームで関数を再度実行
}

moveImage2(); // 関数を初回実行

//画像3
var img3 = document.getElementById('movingImage3');
var x3 = Math.random() * window.innerWidth, y3 = Math.random() * window.innerHeight;
var dx3 = -3, dy3 = 0; // 画像の移動速度と方向

function moveImage3() {
  x3 += dx3;
  y3 += dy3;

  // 画面の端に達したら反転
  if (x3 <= 0 || x3 >= window.innerWidth - img3.offsetWidth) {
    dx3 = -dx3;
  }
  if (y3 <= 0 || y3 >= window.innerHeight - img3.offsetHeight) {
    dy3 = -dy3;
  }

  img3.style.left = x3 + 'px';
  img3.style.top = y3 + 'px';

  requestAnimationFrame(moveImage3); // 次のフレームで関数を再度実行
}

moveImage3(); // 関数を初回実行

//画像4
var img4 = document.getElementById('movingImage4');
var x4 = Math.random() * window.innerWidth, y4 = Math.random() * window.innerHeight;
var dx4 = -6, dy4 = -1; // 画像の移動速度と方向

function moveImage4() {
  x4 -= dx4;
  y4 += dy4;

  // 画面の端に達したら反転
  if (x4 <= 0 || x4 >= window.innerWidth - img4.offsetWidth) {
    dx4 = -dx4;
  }
  if (y4 <= 0 || y4 >= window.innerHeight - img4.offsetHeight) {
    dy4 = -dy4;
  }

  img4.style.left = x4 + 'px';
  img4.style.top = y4 + 'px';

  requestAnimationFrame(moveImage4); // 次のフレームで関数を再度実行
}

moveImage4(); // 関数を初回実行

//画像5
var img5 = document.getElementById('movingImage5');
var x5 = Math.random() * window.innerWidth, y5 = Math.random() * window.innerHeight;
var dx5 = 4, dy5 = 4; // 画像の移動速度と方向

function moveImage5() {
  x5 -= dx5;
  y5 += dy5;

  // 画面の端に達したら反転
  if (x5 <= 0 || x5 >= window.innerWidth - img5.offsetWidth) {
    dx5 = -dx5;
  }
  if (y5 <= 0 || y5 >= window.innerHeight - img5.offsetHeight) {
    dy5 = -dy5;
  }

  img5.style.left = x5 + 'px';
  img5.style.top = y5 + 'px';

  requestAnimationFrame(moveImage5); // 次のフレームで関数を再度実行
}

moveImage5(); // 関数を初回実行

//画像6
var img6 = document.getElementById('movingImage6');
var x6 = Math.random() * window.innerWidth, y6 = Math.random() * window.innerHeight;
var dx6 = 5, dy6 = -1; // 画像の移動速度と方向

function moveImage6() {
  x6 -= dx6;
  y6 += dy6;

  // 画面の端に達したら反転
  if (x6 <= 0 || x6 >= window.innerWidth - img6.offsetWidth) {
    dx6 = -dx6;
  }
  if (y6 <= 0 || y6 >= window.innerHeight - img6.offsetHeight) {
    dy6 = -dy6;
  }

  img6.style.left = x6 + 'px';
  img6.style.top = y6 + 'px';

  requestAnimationFrame(moveImage6); // 次のフレームで関数を再度実行
}

moveImage6(); // 関数を初回実行

//画像7
var img7 = document.getElementById('movingImage7');
var x7 = Math.random() * window.innerWidth, y7 = Math.random() * window.innerHeight;
var dx7 = -3, dy7 = -3; // 画像の移動速度と方向

function moveImage7() {
  x7 -= dx7;
  y7 += dy7;

  // 画面の端に達したら反転
  if (x7 <= 0 || x7 >= window.innerWidth - img7.offsetWidth) {
    dx7 = -dx7;
  }
  if (y7 <= 0 || y7 >= window.innerHeight - img7.offsetHeight) {
    dy7 = -dy7;
  }

  img7.style.left = x7 + 'px';
  img7.style.top = y7 + 'px';

  requestAnimationFrame(moveImage7); // 次のフレームで関数を再度実行
}

moveImage7(); // 関数を初回実行

//画像8
var img8 = document.getElementById('movingImage8');
var x8 = Math.random() * window.innerWidth, y8 = Math.random() * window.innerHeight;
var dx8 = 1, dy8 = -9; // 画像の移動速度と方向

function moveImage8() {
  x8 -= dx8;
  y8 += dy8;

  // 画面の端に達したら反転
  if (x8 <= 0 || x8 >= window.innerWidth - img8.offsetWidth) {
    dx8 = -dx8;
  }
  if (y8 <= 0 || y8 >= window.innerHeight - img8.offsetHeight) {
    dy8 = -dy8;
  }

  img8.style.left = x8 + 'px';
  img8.style.top = y8 + 'px';

  requestAnimationFrame(moveImage8); // 次のフレームで関数を再度実行
}

moveImage8(); // 関数を初回実行

//画像9
var img9 = document.getElementById('movingImage9');
var x9 = Math.random() * window.innerWidth, y9 = Math.random() * window.innerHeight;
var dx9 = -5, dy9 = 5; // 画像の移動速度と方向

function moveImage9() {
  x9 -= dx9;
  y9 += dy9;

  // 画面の端に達したら反転
  if (x9 <= 0 || x9 >= window.innerWidth - img9.offsetWidth) {
    dx9 = -dx9;
  }
  if (y9 <= 0 || y9 >= window.innerHeight - img9.offsetHeight) {
    dy9 = -dy9;
  }

  img9.style.left = x9 + 'px';
  img9.style.top = y9 + 'px';

  requestAnimationFrame(moveImage9); // 次のフレームで関数を再度実行
}

moveImage9(); // 関数を初回実行

//画像10
var img10 = document.getElementById('movingImage10');
var x10 = Math.random() * window.innerWidth, y10 = Math.random() * window.innerHeight;
var dx10 = -10, dy10 = -2; // 画像の移動速度と方向

function moveImage10() {
  x10 -= dx10;
  y10 += dy10;

  // 画面の端に達したら反転
  if (x10 <= 0 || x10 >= window.innerWidth - img10.offsetWidth) {
    dx10 = -dx10;
  }
  if (y10 <= 0 || y10 >= window.innerHeight - img10.offsetHeight) {
    dy10 = -dy10;
  }

  img10.style.left = x10 + 'px';
  img10.style.top = y10 + 'px';

  requestAnimationFrame(moveImage10); // 次のフレームで関数を再度実行
}

moveImage10(); // 関数を初回実行

//画像11
var img11 = document.getElementById('movingImage11');
var x11 = Math.random() * window.innerWidth, y11 = Math.random() * window.innerHeight;
var dx11 = 2, dy11 = 2; // 画像の移動速度と方向

function moveImage11() {
  x11 -= dx11;
  y11 += dy11;

  // 画面の端に達したら反転
  if (x11 <= 0 || x11 >= window.innerWidth - img11.offsetWidth) {
    dx11 = -dx11;
  }
  if (y11 <= 0 || y11 >= window.innerHeight - img11.offsetHeight) {
    dy11 = -dy11;
  }

  img11.style.left = x11 + 'px';
  img11.style.top = y11 + 'px';

  requestAnimationFrame(moveImage11); // 次のフレームで関数を再度実行
}

moveImage11(); // 関数を初回実行

//画像12
var img12 = document.getElementById('movingImage12');
var x12 = Math.random() * window.innerWidth, y12 = Math.random() * window.innerHeight;
var dx12 = 1, dy12 = 4; // 画像の移動速度と方向

function moveImage12() {
  x12 -= dx12;
  y12 += dy12;

  // 画面の端に達したら反転
  if (x12 <= 0 || x12 >= window.innerWidth - img12.offsetWidth) {
    dx12 = -dx12;
  }
  if (y12 <= 0 || y12 >= window.innerHeight - img12.offsetHeight) {
    dy12 = -dy12;
  }

  img12.style.left = x12 + 'px';
  img12.style.top = y12 + 'px';

  requestAnimationFrame(moveImage12); // 次のフレームで関数を再度実行
}

moveImage12(); // 関数を初回実行

//画像13
var img13 = document.getElementById('movingImage13');
var x13 = Math.random() * window.innerWidth, y13 = Math.random() * window.innerHeight;
var dx13 = 4, dy13 = 3; // 画像の移動速度と方向

function moveImage13() {
  x13 -= dx13;
  y13 += dy13;

  // 画面の端に達したら反転
  if (x13 <= 0 || x13 >= window.innerWidth - img13.offsetWidth) {
    dx13 = -dx13;
  }
  if (y13 <= 0 || y13 >= window.innerHeight - img13.offsetHeight) {
    dy13 = -dy13;
  }

  img13.style.left = x13 + 'px';
  img13.style.top = y13 + 'px';

  requestAnimationFrame(moveImage13); // 次のフレームで関数を再度実行
}

moveImage13(); // 関数を初回実行

//画像14
var img14 = document.getElementById('movingImage14');
var x14 = Math.random() * window.innerWidth, y14 = Math.random() * window.innerHeight;
var dx14 = 1, dy14 = 5; // 画像の移動速度と方向

function moveImage14() {
  x14 -= dx14;
  y14 += dy14;

  // 画面の端に達したら反転
  if (x14 <= 0 || x14 >= window.innerWidth - img14.offsetWidth) {
    dx14 = -dx14;
  }
  if (y14 <= 0 || y14 >= window.innerHeight - img14.offsetHeight) {
    dy14 = -dy14;
  }

  img14.style.left = x14 + 'px';
  img14.style.top = y14 + 'px';

  requestAnimationFrame(moveImage14); // 次のフレームで関数を再度実行
}

moveImage14(); // 関数を初回実行

</script>

</body>
</html>