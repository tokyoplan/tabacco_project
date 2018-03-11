<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>


<title>Kibum's project</title>




<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);

@import
	url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300)
	;

html {
	margin-top: 40px;
}

.accent {
	font-size: 20px;
	color: red;
	font-weight: bold;
}

body {
	position: relative;
}
</style>

<script src="https://code.jquery.com/jquery-3.2.1.js"></script>


<link rel="stylesheet" href="style.css" type="text/css" />


<script type="text/javascript" src="import.js"></script>


<link
	href='http:http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
	rel='stylesheet' type='text/css'>




<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);

.title {
	font-size: 50px;
	font-weight: bold;
	color: #980000;
	font-family: 'Nanum Pen Script';
}

.accent {
	color: #980000;
	font-size: 30px;
	font-family: 'Nanum pen Script';
	font-weight: bold;
}
#kesi {
	color: #980000;
	font-size: 30px;
	font-family: 'Nanum pen Script';
	font-weight: bold;
	align:right;
	
}
#board{
 cursor: hand;
	cursor: pointer;

}

</style>
</head>
<body>
	<center>
		<p class="title">
			MusicLounge <img src="images/plane.png">
		</p>
	</center>
	
	<c:if test="${!empty user }">

		<marquee behavior="alternate" scrolldelay="200" direction="right">
			<span class="accent">-------------Hello-------------</span>
				
				
		</marquee>
	</c:if>
	<embed src="" hidden="true" style="height: 100%" loop="false"></embed>
	
	<div class="contents" align="left">
		<div id="icon_box" style="height: 10px;">
			<!--움직임 -->
			<div class="icon_wrap">
				<c:if test="${empty user }">
					<img id="img_iphone" src="images/login2.png" alt="dw"
						onclick="location.href='loginForm.jsp'" />

					<p class="title">login</p>
				</c:if>
				<c:if test="${!empty user }">
					<img id="img_iphone" src="images/loginsuck.png" alt="dw"
						onclick="location.href='/Kibums/logout.do'" />
					<p class="title">logout</p>
				</c:if>
				<br /> 

				<c:if test="${empty user }">
					<img id="img_iphone1" src="images/member.png" alt="dw"
						onclick="location.href='joinform.jsp'" />



					<p class="title">join</p>
					
					<br/>
					
				
					
				  
				</c:if>
				
				
				<br /> <img id="img_iphone2" src="images/twit.png"
					alt="dw" onclick="location.href='https://twitter.com/CROSSROADD'" />

				<p class="title">twitter</p>


				<br /> <img id="img_iphone3"
					src="images/upload3.png" alt="dw"
					onclick="location.href='upload.jsp'" />
				<p class="title">upload</p>
				
				
				<c:if test="${!empty user }">
				  <img id="img_iphone1" src="images/review.png" alt="dw"
				  onclick="location.href='Board.jsp'"/>
						
                 	<p class="title">review</p>
                 	
                 	</c:if>
			 
			</div>

		</div>
	</div>

	<c:if test="${!empty user }">

		<!-- Main Content -->


		<div id="main">

			<div id="product-window"></div>

			<div class="musics collection-products collection-music">


				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/2zxhlhg70u5cimr/B%2Ast%2Ard.zip">
						<img class="product-img"
						src="images/bastardcover_medium.png?v=1350593200"
						alt="Tyler The Creator - Bastard" />
					</a>
				</div>





				<div class="thumb column ">
					<a href="http://www.mediafire.com/file/rzjxnoroani3wnc/domoxalchemist_no_idols.zip">
						<img class="product-img"
						src="images/the_alchemist_and_domo_genesis_no_idols_medium.jpg?v=1350675696"
						alt="Domo Genesis - No Idols" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/y65ozlu4qexg4y4/Rolling-Papers.zip">
						<img class="product-img"
						src="images/Rolling_Papers_medium.png?v=1350590563"
						alt="Domo Genesis - Rolling Papers" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/5scz2qp7uf91alq/Domo-Genesis-Under-The-Influence.zip">
						<img class="product-img"
						src="images/cover_medium.png?v=1351494420"
						alt="Domo Genesis - Under The Influence" />
					</a>
				</div>





				<div class="thumb column last">
					<a href="http://www.mediafire.com/file/t4ua910azv30xve/Earl.zip">
						<img class="product-img" src="images/earl_medium.png?v=1350584492"
						alt="Earl Sweatshirt - Earl" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/d6ixaa8rncz5uwu/Frank-Ocean-nostalgia-ULTRA.zip">
						<img class="product-img"
						src="images/hood_cover_1_medium.jpeg?v=1348505029"
						alt="FRANK OCEAN: NOSTALGIA, ULTRA" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/p3o9rbz1mb5eop8/The-Dena-Tape.zip">
						<img class="product-img"
						src="images/Hodgy_Beats_The_Dena_Tape_medium.jpg?v=1350590690"
						alt="Hodgy Beats - The Dena Tape" />
					</a>
				</div>





				<div class="thumb column ">
					<a href="http://www.mediafire.com/file/s06slvuy4xe93xl/EP-2.zip">
						<img class="product-img"
						src="images/hodgy_cover_final_medium.jpg?v=1350584868"
						alt="Hodgy Beats - Untitled EP" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/8era2a72k5jfkkb/MellowHype-INSA.zip">
						<img class="product-img"
						src="images/Hodgy_Beats_Untitled_EP2_medium.jpg?v=1370133305"
						alt="Hodgy Beats - Untitled EP 2" />
					</a>
				</div>





				<div class="thumb column last">
					<a
						href="http://www.mediafire.com/file/2o28288cd7e63i1/YelloWhite.zip">
						<img class="product-img"
						src="images/07_02_INSA-2_medium.jpg?v=1404490067"
						alt="MellowHype - INSA" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/2o28288cd7e63i1/YelloWhite.zip">
						<img class="product-img" src="images/mh_medium.png?v=1350587965"
						alt="MellowHype - YelloWhite" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/2o28288cd7e63i1/YelloWhite.zip">
						<img class="product-img"
						src="images/White_Ice_medium.jpg?v=1369776357"
						alt="Mike G -  White Ice (Chopped Not Slopped)" />
					</a>
				</div>





				<div class="thumb column ">
					<a href="http://www.mediafire.com/file/s06slvuy4xe93xl/EP-2.zip">
						<img class="product-img"
						src="images/ali_cover_medium.jpg?v=1350588802" alt="Mike G - Ali" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://download1121.mediafire.com/tr5mc12bgryg/w14x163m0ssobfe/5th-Echelon.zip">
						<img class="product-img"
						src="images/awardtourep_cover_medium.jpg?v=1351494739"
						alt="Mike G - The Award Tour EP" />
					</a>
				</div>





				<div class="thumb column last">
					<a href="http://www.mediafire.com/file/5sdezn988cuoi2e/Radical.zip">
						<img class="product-img"
						src="images/OFWGKTA_Radical-front-large_medium.jpg?v=1350669860"
						alt="Odd Future - Radical" />
					</a>
				</div>





				<div class="thumb column ">
					<a href="http://www.mediafire.com/file/5sdezn988cuoi2e/Radical.zip">
						<img class="product-img"
						src="images/tape1_medium.jpg?v=1350592701"
						alt="Odd Future - The Odd Future Tape" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/tvoicv9gg1956t6/the_of_tape.zip">
						<img class="product-img"
						src="images/5th_echelon_front_cover_medium.jpg?v=1351112603"
						alt="The Jet Age of Tomorrow - 5th Echelon" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/l6syn0992cf4vt3/The_JellyFish_Mentality_Bonus_2-2.zip">
						<img class="product-img"
						src="images/jellyfish_mentality_bonus_medium.jpg?v=1369760942"
						alt="The Jet Age of Tomorrow - The JellyFish Mentality Bonus" />
					</a>
				</div>





				<div class="thumb column ">
					<a
						href="http://www.mediafire.com/file/zz7fmq54j5um5x4/The-Jet-Age-Of-Tomorrow-The-JellyFish-Mentality-LP.zips">
						<img class="product-img"
						src="images/jellyfish_mentality_front_medium.jpg?v=1369328916"
						alt="The Jet Age of Tomorrow - The JellyFish Mentality LP" />
					</a>
				</div>





				<div class="thumb column last">
					<a
						href="http://www.mediafire.com/file/zz7fmq54j5um5x4/The-Jet-Age-Of-Tomorrow-The-JellyFish-Mentality-LP.zip">
						<img class="product-img"
						src="images/Front_Cover_medium.png?v=1351112824"
						alt="The Jet Age of Tomorrow - Voyager" />
					</a>
				</div>

			</div>

		</div>
		<!-- /#main -->
		<!-- Footer -->

		<!-- 로그인  -->
	</c:if>
	
	


<c:if test="${empty user }">

	<!-- Main Content -->
	
	
	<div id="main">

		<div id="product-window"></div>

		<div class="musics collection-products collection-music">


			<div class="thumb column ">
					<img class="product-img"
					src="images/bastardcover_medium.png?v=1350593200"
					alt="Tyler The Creator - Bastard" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/the_alchemist_and_domo_genesis_no_idols_medium.jpg?v=1350675696"
					alt="Domo Genesis - No Idols" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/Rolling_Papers_medium.png?v=1350590563"
					alt="Domo Genesis - Rolling Papers" />
			</div>





			<div class="thumb column ">
					<img class="product-img" src="images/cover_medium.png?v=1351494420"
					alt="Domo Genesis - Under The Influence" />
			</div>





			<div class="thumb column last">
					<img class="product-img" src="images/earl_medium.png?v=1350584492"
					alt="Earl Sweatshirt - Earl" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/hood_cover_1_medium.jpeg?v=1348505029"
					alt="FRANK OCEAN: NOSTALGIA, ULTRA" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/Hodgy_Beats_The_Dena_Tape_medium.jpg?v=1350590690"
					alt="Hodgy Beats - The Dena Tape" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/hodgy_cover_final_medium.jpg?v=1350584868"
					alt="Hodgy Beats - Untitled EP" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/Hodgy_Beats_Untitled_EP2_medium.jpg?v=1370133305"
					alt="Hodgy Beats - Untitled EP 2" />
			</div>





			<div class="thumb column last">
					<img class="product-img"
					src="images/07_02_INSA-2_medium.jpg?v=1404490067"
					alt="MellowHype - INSA" />
			</div>





			<div class="thumb column ">
					<img class="product-img" src="images/mh_medium.png?v=1350587965"
					alt="MellowHype - YelloWhite" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/White_Ice_medium.jpg?v=1369776357"
					alt="Mike G -  White Ice (Chopped Not Slopped)" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/ali_cover_medium.jpg?v=1350588802" alt="Mike G - Ali" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/awardtourep_cover_medium.jpg?v=1351494739"
					alt="Mike G - The Award Tour EP" />
			</div>





			<div class="thumb column last">
					<img class="product-img"
					src="images/OFWGKTA_Radical-front-large_medium.jpg?v=1350669860"
					alt="Odd Future - Radical" />
			</div>





			<div class="thumb column ">
					<img class="product-img" src="images/tape1_medium.jpg?v=1350592701"
					alt="Odd Future - The Odd Future Tape" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/5th_echelon_front_cover_medium.jpg?v=1351112603"
					alt="The Jet Age of Tomorrow - 5th Echelon" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/jellyfish_mentality_bonus_medium.jpg?v=1369760942"
					alt="The Jet Age of Tomorrow - The JellyFish Mentality Bonus" />
			</div>





			<div class="thumb column ">
					<img class="product-img"
					src="images/jellyfish_mentality_front_medium.jpg?v=1369328916"
					alt="The Jet Age of Tomorrow - The JellyFish Mentality LP" />
			</div>





			<div class="thumb column last">
					<img class="product-img"
					src="images/Front_Cover_medium.png?v=1351112824"
					alt="The Jet Age of Tomorrow - Voyager" />
			</div>

		</div>

	</div>
	<!-- /#main -->
	<!-- Footer -->

	<!-- 로그인  -->
</c:if>
</body>
</html>