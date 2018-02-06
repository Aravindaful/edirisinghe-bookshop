<div class="col-sm-3">
	<div class="left-sidebar">
		<h2>Category</h2>
		<div class="panel-group category-products" id="accordian">
			<!--category-productsr-->
			<c:forEach items="${categories}" var="category">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordian"
								href="#item${category.catId}"> <span
								class="badge pull-right"><i
									onclick="loadCategoryItems('${category.name}')"
									class="fa fa-plus"></i></span> ${category.name}
							</a>
						</h4>
					</div>
					<div id="item${category.catId}" class="panel-collapse collapse">
						<div class="panel-body">
							<ul>
								<div id="itemList${category.catId}">
									 
								</div>

							</ul>
						</div>
					</div>






				</div>
			</c:forEach>



		</div>
		<!--/category-products-->







	</div>
</div>
