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