$(function(){
	$( "#tabs" ).tabs({active: 0,});
	
	// オールチェック
	$('td#checkAllTab1 input').click(function() {
		$('.checkStateTab1').prop('checked', $(this).prop('checked'));
	});

	// オールチェック
	$('td#checkAllTab2 input').click(function() {
		$('.checkStateTab2').prop('checked', $(this).prop('checked'));
	});
});