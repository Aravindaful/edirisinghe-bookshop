$(function(){
	switch(menu){
	case 'Profile':$("#profile").addClass("active");break;
	case 'Cart':$("#cart").addClass("active");break;
	case 'Login/Register':$("#login").addClass("active");break;
	case 'Products':$("a[name='viewBooks']").addClass("active");break;
	case 'ProductDetails':$("#viewBooks").addClass("active");break;
	case 'About Us':$("#about").addClass("active");break;
	case 'Contact':$("#contact").addClass("active");break;
	default:
		$("#home").addClass("active");break;
	}
});