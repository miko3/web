<!--- ヘッダー --->
<cfinclude template="comFiles/header.cfm">

<!--- コンテンツ --->
<body>
	<cfinclude template="actFiles/test_act.cfm">

	<cfinclude template="dspFiles/test_dsp.cfm">

	<script type="text/javascript">
				getQry(0, 1);
				getQry(1, 2);
	</script>
</body>

<!--- フッター --->
<!--- <cfinclude template="templateName"> --->