
<div class="container">
	<div class="col-sm-4">tab1</div>
	<div class="col-sm-4">tab2</div>
	<div class="col-sm-4">tab3</div>
</div>

<div class="container">
	<form>
	<table class="table table-striped">
		<thead class="thead-inverse">
			<tr>
				<td  id="checkAll">
					<input type="checkbox">
  				</td>
				<td>id</td>
				<td>name</td>
				<td>state</td>
			</tr>
		</thead>
		<tbody id="dispTable">

			<script type="text/javascript">
				getQry();
			</script>

		</tbody>
	</table>

	<button type="button" class="btn btn-success" onclick="updQry()">Update</button>
	</form>
</div>
