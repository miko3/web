<!--- <cfobject component="cfqry.test_qry" name="qryTest"> --->
<!--- <cfinvoke component="#qryTest#" method="getState" returnvariable="getRus"> --->

<cfajaxproxy cfc="cfqry.test_qry" jsclassname="Qry">

<script type="text/javascript"> 
	var getQry = function(){
		// プロキシのインスタンスを作成します。 
		var q = new Qry();
		//非同期呼び出し成功時のコールバック関数設定
		q.setCallbackHandler(getQryResult);
		//非同期呼び出し失敗時のコールバック関数設定
		q.setErrorHandler(getQryFault);
		//プロキシから、User.cfcのgetName関数を呼び出す
		q.getState();
	} 

	var updQry = function(){
		// プロキシのインスタンスを作成します。 
		var q = new Qry();
		//非同期呼び出し成功時のコールバック関数設定
		q.setCallbackHandler(updQryResult);
		//非同期呼び出し失敗時のコールバック関数設定
		q.setErrorHandler(updQryFault);
		//プロキシから、User.cfcのgetName関数を呼び出す
		

		q.updState(1,1);
	} 

	var updQryResult = function(result){
		console.log(result);
	}

	var updQryFault = function(result){
		console.log(result);
	}

	//非同期呼び出し成功時のコールバック関数
	var getQryResult = function(result){
		console.log(result);

		for (var i = 0; i < result.DATA.length; i++) {
			$('tbody#dispTable').append('<tr><td><input class="checkState" type="checkbox" value="' + result.DATA[i][0] +'"></td><td>' + result.DATA[i][0] + '</td><td>' + result.DATA[i][1] + '</td><td>' + result.DATA[i][2] + '</td></tr>');
		};
		
	}
	//非同期呼び出しエラー時のコールバック関数
	var getQryFault = function(statusCode, statusMsg){
		console.log('エラー');
	}
</script>