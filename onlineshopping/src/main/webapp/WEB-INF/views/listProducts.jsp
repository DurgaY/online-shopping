<div class="container">

	<div class="row">


		<!-- Would be to display sidebar -->
		

			<%@include file="./shared/sidebar.jsp"%>

		

		<!-- to display the actual products -->
		<!-- Added breadcrumb component -->
			

				<div class="col-lg-9">
				
				 <div class="row">
				   <div class="col-md-12">

					<c:if test="${userClickAllProducts == true}">
					
						<script>
							window.categoryId = '';
						</script>
					
						<ul class="breadcrumb">


							<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
							<li class="breadcrumb-item active">All Products</li>


						</ul>
					</c:if>
					
					
					<c:if test="${userClickCategoryProducts == true}">
						<script>
							window.categoryId = '${category.id}';
						</script>
					
						<ol class="breadcrumb">


							<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
							<li class="breadcrumb-item active">Category</li>
							<li class="breadcrumb-item active">${category.name}</li>


						</ol>
					</c:if>
					
					</div>
				</div>
			</div>

			</div>
	
		
</div>
		
		