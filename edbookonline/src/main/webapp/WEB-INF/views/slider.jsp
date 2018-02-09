<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
						
						
						
						
						
						
						
						
							<div class="item active">
								<div class="col-sm-6">
									<h1> ${allBooks[0].name}</h1>
									<h2>${allBooks[0].publisher}</h2>
									<p>${allBooks[0].description}</p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="${images}/covers/${allBooks[0].category.name}/${allBooks[0].bookCode}.jpg" class="girl img-responsive" alt="" />
								
								</div>
							</div>
						
							
							<c:forEach items="${allBooks}" var="sbook" begin="1" end="2">
							
							   <div class="item">
								<div class="col-sm-6">
									<h1> ${sbook.name}</h1>
									<h2>${sbook.publisher}</h2>
									<p>${sbook.description}</p>
									<button type="button" class="btn btn-default get">Get it now</button>
								</div>
								<div class="col-sm-6">
									<img src="${images}/covers/${sbook.category.name}/${sbook.bookCode}.jpg" class="girl img-responsive" alt="" />
								
								</div>
							</div>
							</c:forEach>
							
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section>