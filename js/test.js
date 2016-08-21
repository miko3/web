$(function(){
	// タブ
	//$( "#tabs" ).tabs();

	// オールチェック
	$('td#checkAll input').click(function() {
		$('.checkState').prop('checked', $(this).prop('checked'));
	});
});