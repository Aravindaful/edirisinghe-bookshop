<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-9">
			<div class="row">
				<div class="col-lg-12">
					<c:if test="${userClickProductDetails ==true}">

						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">${book.category.name}</li>
							
						</ol>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="section">
	<div class="container">
		<div class="row">
			<%@include file="./shared/category.jsp"%>


			<div class="col-sm-9 padding-right">
				<div class="product-details">
					<!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
							<img src="${images}/product-details/1.jpg" alt="" />
							<h3>ZOOM</h3>
						</div>


					</div>
					<div class="col-sm-7">
						<div class="product-information">
							<!--/product-information-->
							<img src="images/product-details/new.jpg" class="newarrival"
								alt="" />
							<h2>${book.name}</h2>
							<p>Web ID: 1089772</p>
							<img src="${images}/product-details/rating.png" alt="" /> <span>
								<span>Rs ${book.salePrice}</span> <label>Quantity:</label> <input
								type="text" value="3" />
								<button type="button" class="btn btn-fefault cart">
									<i class="fa fa-shopping-cart"></i> Add to cart
								</button>
							</span>
							<p>

								<c:choose>
									<c:when test="${book.qty > 0}">
										<b>Availability:</b>  In Stock
					</c:when>
									<c:otherwise>
										<b>Availability:</b>
										<span style="color: red">Not In Stock</span>
									</c:otherwise>

								</c:choose>


							</p>
							<p>
								<b>Author:</b> ${book.author}
							</p>
							<p>
								<b>Publisher:</b> ${book.publisher}
							</p>
							<a href=""><img src="${images}/product-details/share.png"
								class="share img-responsive" alt="" /></a>
						</div>
						<!--/product-information-->
					</div>
				</div>
				<!--/product-details-->



				<div class="recommended_items">
					<!--recommended_items-->
					<h2 class="title text-center">recommended items</h2>


					<c:choose>

						<c:when test="${recoBooks.size() == 6}">
							<div id="recommended-item-carousel" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<div class="item active">

										<c:forEach items="${recoBooks}" begin="0" end="2"
											var="recBook">
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<img src="${images}/home/recommend1.jpg" alt="" />
															<h2>Rs ${recBook.salePrice}</h2>
															<p>${recBook.name}</p>
															<button type="button" class="btn btn-default add-to-cart">
																<i class="fa fa-shopping-cart"></i>Add to cart
															</button>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>



									</div>
									<div class="item">
										<c:forEach items="${recoBooks}" begin="3" end="5"
											var="recBook">
											<div class="col-sm-4">
												<div class="product-image-wrapper">
													<div class="single-products">
														<div class="productinfo text-center">
															<img src="${images}/home/recommend1.jpg" alt="" />
															<h2>Rs ${recBook.salePrice}</h2>
															<p>${recBook.name}</p>
															<button type="button" class="btn btn-default add-to-cart">
																<i class="fa fa-shopping-cart"></i>Add to cart
															</button>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
								<a class="left recommended-item-control"
									href="#recommended-item-carousel" data-slide="prev"> <i
									class="fa fa-angle-left"></i>
								</a> <a class="right recommended-item-control"
									href="#recommended-item-carousel" data-slide="next"> <i
									class="fa fa-angle-right"></i>
								</a>
							</div>





						</c:when>
						<c:otherwise>



							<c:forEach items="${recoBooks}" var="recBook">

								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${images}/home/product1.jpg" alt="" />
												<h2>Rs ${recBook.salePrice}</h2>
												<p>${recBook.name}</p>
												<a href="#" class="btn btn-default add-to-cart"><i
													class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>

									</div>
								</div>




							</c:forEach>




						</c:otherwise>

					</c:choose>



				</div>
				<!--/recommended_items-->

			</div>
		</div>
	</div>
</div>


