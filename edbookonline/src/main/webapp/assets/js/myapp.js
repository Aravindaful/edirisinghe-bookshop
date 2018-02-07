$(function() {
	switch (menu) {
	case 'Profile':
		$("a[name='profile']").addClass("active");
		break;
	case 'Cart':
		$("a[name='cart']").addClass("active");
		break;
	case 'Login/Register':
		$("a[name='login']").addClass("active");
		break;
	case 'Products':
		$("a[name='viewBooks'],a[name='product']").addClass("active");
		break;
	case 'ProductDetails':
		$("a[name='viewBooks'],a[name='productdetails']").addClass("active");
		break;
	case 'About Us':
		$("a[name='about']").addClass("active");
		break;
	case 'Contact':
		$("a[name='contact']").addClass("active");
		break;
	default:
		$("a[name='home']").addClass("active");
		break;
	}
});

function loadCategoryItems(catNam) {
 
	$.ajax({

		url : 'categorydetails',
		data : {
			categoryNam : catNam
		},
		type : 'post',
		success : function(data) {

			var catId = "";
			var datList = "";
			$.each(data, function(key, value) {

				catId = value.category.catId;
				datList += "<li><a href='"+ctx+"/productdetails/"+value.bookId+"/products'>" + value.name + "</a></li>";
			});

			$("#itemList" + catId).html(datList);

		},
		error : function() {
			alert('error');
		}
	});
}