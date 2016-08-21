<head>
	<title>ColdFusionテスト環境</title>

	<!--- jQuery関連 --->
	<cfset jqText="<script src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>">
	<cfset jqText= jqText & "<link rel='stylesheet' href='//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css'>">

	<!--- Javascript関連 --->
	<cfset jsText="<script type='text/javascript' src='js/bootstrap.min.js'></script>">
	<cfset jsText= jsText & "<script type='text/javascript' src='js/test.js'></script>">

	<!--- CSS関連 --->
	<cfset cssText="<link href='css/bootstrap.min.css' rel='stylesheet'>">
	<cfset cssText= cssText & "<link href='css/test.css' rel='stylesheet'>">

	<cfhtmlhead text="#jqText##cssText##jsText#">
</head>