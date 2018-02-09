<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-9">
				<div class="row">
					<div class="col-lg-12">
						<c:if test="${userClickProducts ==true}">

							<ol class="breadcrumb">
								<li><a href="${contextRoot}/home">Home</a></li>
								<li class="active">All Products</li>
							</ol>
						</c:if>



					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="container">
		<div class="row">
			<%@include file="./shared/category.jsp"%>


			<div class="col-sm-9 padding-right">
				<div class="features_items">
					<!--features_items-->
					<h2 class="title text-center">Features Items</h2>

					<c:forEach items="${allBooks}" var="book">


						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="${images}/covers/${book.category.name}/${book.bookCode}.jpg" alt="" />
										<h2>Rs ${book.salePrice}</h2>
										<p>${book.name}</p>
										<a href="#" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>

								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add
												to wishlist</a></li>
									</ul>
								</div>
							</div>
						</div>


					</c:forEach>
				</div>


			</div>
			<!--features_items-->
		</div>




	</div>

	<div class="row">
		<div class="col-sm-5 padding-left"></div>
		<div class="col-sm-8 pull-right">
			<ul class="pagination">
				<li class="active"><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">&raquo;</a></li>
			</ul>
		</div>
	</div>
</div>
</div>

