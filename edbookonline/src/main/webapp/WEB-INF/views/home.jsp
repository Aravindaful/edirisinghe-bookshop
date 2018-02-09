<!--slider-->
	<%@include file="slider.jsp" %>
	
	<section>
		<div class="container">
			<div class="row">
				<%@include file="./shared/category.jsp" %>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						
						
						
						<c:forEach items="${allBooks}" var="book" begin="3" end="8">
						
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="${images}/covers/${book.category.name}/${book.bookCode}.jpg" alt="" />
											<h2>Rs ${book.salePrice}</h2>
											<p>${book.name}</p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
										
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
									</ul>
								</div>
							</div>
						</div>
						
						
						</c:forEach>
						
						
						
						
						
						
						
						
						
					</div><!--features_items-->
					
					
					
					
					
				</div>
			</div>
		</div>
	</section>