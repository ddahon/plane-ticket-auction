<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="check.jsp"%>
<title>login success</title>
<style>
body{
background-color:yellow;
}
 #a { 
    width:50%;
	height:200px;
	border: 1px dashed ;
    background-color:lightyellow;
    text-align:center;
}
</style>
</head>
<body>
 	 	<nav class="navbar navbar-default navbar-fixed-top">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="index.jsp">
	      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
		  <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
		  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
		  </svg>
		  </a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="recherche.jsp">Buy</a></li>
	        <li><a href="login.jsp">Sell</a></li>
	        <li><a href="login.jsp">Login</a></li>
		 <li><a href="logout.jsp">Logout</a></li>
	      </ul>
	    </div>
	  </div>
	</nav> 
				<!--left bar↓-->
				<div class="personal-leftlist fl">
					<div class="personal-sideitem">
						<div class="personal-headtxt">account management</div>
						<ul>
							<li>
								<a href="#" class="active">user center</a>
							</li>
							<li>
								<a href="#">information</a>
							</li>
							<li>
								<a href="account-information.html">account center</a>
							</li>
							
						</ul>
					</div>
					<div class="personal-sideitem">
						<div class="personal-headtxt">trade management</div>
						<ul>
							<li>
								<a href="#">order</a>
							</li>
							<li>
								<a href="#">bonus</a>
							</li>
							
						</ul>
					</div>
					<div class="personal-sideitem">
						<div class="personal-headtxt">service center</div>
						<ul>
							<li>
								<a href="#">contact us</a>
							</li>
						
							<li>
								<a href="#">help center</a>
							</li>
						</ul>
					</div>
				</div>
				<!--left check↑-->
				<div class="personal-rightlist fl">
					<div class="personal-userInfo clearfix">
						<div class="personal-userInfo-l fl">
							<div class="personal-infowrap">
								<a href="#">
									<img src="img/personal-headportrait.jpg" alt="" />
								</a>
								<div class="personal-name">
									<div class="name">123</div>
								</div>
							</div>
							<div class="personal-infogrow">
								<div class="personal-grownum clearfix">
									<span class="fl">
										<a href="#">points >></a>
									</span>
									<span class="fr">
										<span>0</span>
									<span>/</span>
									<span>1</span>
									</span>
								</div>
								<div class="personal-process">
									<div class="personal-num"></div>
								</div>
							</div>
						</div>
						<div> class="personal-userInfo-r-item fl clearfix">
								<div class="personal-label fl">
									my wallet
								</div>
								<div class="personal-content fl clearfix">
									<a href="#" class="lipin-b fl">
										<span>$</span>
										<span>0.00</span>
									</a>
									<i class="icon-kaiyan fl"></i>
									<a href="#" class="lipin-n fl">
										**
									</a>
									<i class="icon-biyan fl"></i>
								</div>
							</div>
							<div> class="personal-userInfo-r-item fl clearfix">
								<div> class="personal-label fl">
									coupon
								</div>
								<div class="personal-content fl">
									<a href="#">
										<span>0</span>
										
									</a>
								</div>
							</div>
											
					<div> class="personal-undone">
						<div class="undone-hd">
							<h3 class="clearfix">
								<span>unfinished order</span>
								<span>（1）</span>
								<a href="order-list.html">a</a>
							</h3>
						</div>
						<div> class="undone-hb">
							<table> border="0" cellspacing="" cellpadding=""><thead></thead>
								<tbody>
									<tr>
										<td class="undone-col1 clearfix">
											<div class="picList fl clearfix">
												<a href="goods-details.html">
													<img src="img/undonepro1.png"/>
												</a>
											</div>
											<div class="express fl">
												<div class="cell">
													<span>package</span>
													<span>1</span>
												</div>
											</div>
											<div class="status fl">
												<div class="cell">
													<span style="color: #f33;">upaid</span>
												</div>
											</div>
										</td>
										<td class="undone-col2">
											<span>$</span>
											<span>159.00</span>
										</td>
										<td class="undone-col3">
											<div class="payfor">
												<div style="margin-bottom: 4px;">
													<div class="payfora relative">
														<span style="padding-right: 5px;">pay</span>
														<span>00:00</span>
														<div class="payforahover absolute"></div>
													</div>
												</div>
												<div>
													<a href="#">more infomation</a>
												</div>
												<div>
													<a href="#" class="nopay">cancle order</a>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="undone-col1 clearfix">
											<div class="picList fl clearfix">
												<a href="goods-details.html">
													<img src="img/undonepro1.png"/>
												</a>
											</div>
											<div class="express fl">
												<div class="cell">
													<span>name</span>
													<span>1</span>
												</div>
											</div>
											<div class="status fl">
												<div class="cell">
													<span style="color: #f33;">unpaid</span>
												</div>
											</div>
										</td>
										<td class="undone-col2">
											<span>$</span>
											<span>159.00</span>
										</td>
										<td class="undone-col3">
											<div class="payfor">
												<div style="margin-bottom: 4px;">
													<div class="payfora relative">
														<span style="padding-right: 5px;">pay</span>
														<span>00:00</span>
														<div class="payforahover absolute"></div>
													</div>
												</div>
												<div>
													<a href="#">more information</a>
												</div>
												<div>
													<a href="#" class="nopay">cancel order</a>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td class="undone-col1 clearfix">
											<div class="picList fl clearfix">
												<a href="goods-details.html">
													<img src="img/undonepro1.png"/>
												</a>
											</div>
											<div class="express fl">
												<div class="cell">
													<span>package</span>
													<span>1</span>
												</div>
											</div>
											<div class="status fl">
												<div class="cell">
													<span style="color: #f33;">upaid</span>
												</div>
											</div>
										</td>
										<td class="undone-col2">
											<span>$</span>
											<span>159.00</span>
										</td>
										<td class="undone-col3">
											<div class="payfor">
												<div style="margin-bottom: 4px;">
													<div class="payfora relative">
														<span style="padding-right: 5px;">pay</span>
														<span>00:00</span>
														<div class="payforahover absolute"></div>
													</div>
													
												</div>
												<div>
													<a href="#">more information</a>
												</div>
												<div>
													<a href="#" class="nopay">cancel order</a>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer"></div>
		<script src="js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/head-foot.js" type="text/javascript" charset="utf-8"></script>

		<script type="text/javascript">
			$(document).ready(function() {
				//eyes open 
				$(".icon-kaiyan").click(function() {
					$(this).siblings(".lipin-b").css("display", "none");
					$(this).siblings(".lipin-n").css("display", "block");
					$(this).css("display", "none");
					$(this).siblings(".icon-biyan").css("display", "block");
				});
				$(".icon-biyan").click(function() {
					$(this).siblings(".lipin-n").css("display", "none");
					$(this).siblings(".lipin-b").css("display", "block");
					$(this).css("display", "none");
					$(this).siblings(".icon-kaiyan").css("display", "block");
				});
				//pay
				$(".payfora").click(function () {
					$(location).attr("href","shopping-pay.html");
				});
				//cancel
				$(".nopay").click(function () {
					$(this).parents("tr").remove();
				});
			});
		</script>
	</body>

</html>
