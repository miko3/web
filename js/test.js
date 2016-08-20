$(function(){
	$('td#checkAll input').click(function() {
		$('.checkState').prop('checked', $(this).prop('checked'));
	});
});