<!--- <cfobject component="cfqry.test_qry" name="qryTest"> --->
<!--- <cfinvoke component="#qryTest#" method="getState" returnvariable="getRus"> --->

<cfajaxproxy cfc="cfqry.test_qry" jsclassname="Qry">

<script type="text/javascript"> 

	var getQry = function(state, tabNum){
		// プロキシのインスタンスを作成します。 
		var q = new Qry();

		//非同期呼び出し成功時のコールバック関数設定
		q.setCallbackHandler(function(AjaxResults) {getQryResult(AjaxResults, tabNum);});
		//非同期呼び出し失敗時のコールバック関数設定
		q.setErrorHandler(getQryFault);
		//プロキシから、test_qry.cfcのgetName関数を呼び出す
		q.getState(state);
	} 

	var updQry = function(){
		// プロキシのインスタンスを作成します。 
		var q = new Qry();
		//非同期呼び出し成功時のコールバック関数設定
		q.setCallbackHandler(updQryResult);
		//非同期呼び出し失敗時のコールバック関数設定
		q.setErrorHandler(updQryFault);
		//プロキシから、test_qry.cfcのgetName関数を呼び出す
		
		// 試し
		q.updState(1,1);
	} 


	var updQryResult = function(result){
		// console.log(result);
	}

	var updQryFault = function(result){
		//console.log(result);
	}

	//非同期呼び出し成功時のコールバック関数
	var getQryResult = function(result, tabNum){
		//console.log(tabNum);

		for (var i = 0; i < result.DATA.length; i++) {
			$('.tableTab' + tabNum).append('<tr><td><input class="checkState" type="checkbox" value="' + result.DATA[i][0] +'"></td><td>' + result.DATA[i][0] + '</td><td>' + result.DATA[i][1] + '</td><td>' + result.DATA[i][2] + '</td></tr>');
		};
		
	}
	//非同期呼び出しエラー時のコールバック関数
	var getQryFault = function(statusCode, statusMsg){
		console.log('エラー');
	}
</script>
