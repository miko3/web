$(function(){
	$( "#tabs" ).tabs({active: 0,});
	
	// オールチェック
	$('td#checkAll input').click(function() {
		$('.checkState').prop('checked', $(this).prop('checked'));
	});
});