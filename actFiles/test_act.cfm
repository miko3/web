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
		
		var updTargetNum = getTableRecords();

		// 試し
		q.updState(updTargetNum, 1);
	} 

	function getTableRecords()
	{
		var chkRec=$("input.checkStateTab1:checked").parents("tr");
		var updTargetNum  = new Array(chkRec.length);

		for(i=0;i<chkRec.length;i++){
			updTargetNum[i] = $(chkRec[i]).children("td:nth-child(1)").find('input').val();
			// for(j=1;j<=chkRec[i].children.length;j++)
			// {
			// 	$(chkRec[i]).children("td:nth-child(" + j + ")").html();
			// }
		}

		return updTargetNum;
	}

	var updQryResult = function(result){
		console.log('成功');
		$('table.tableTab1 > tbody >tr').remove();
		$('table.tableTab2 > tbody >tr').remove();
		getQry(0,1);
		getQry(1,2);
	}

	var updQryFault = function(result){
		console.log(result);
	}

	//非同期呼び出し成功時のコールバック関数
	var getQryResult = function(result, tabNum){
		for (var i = 0; i < result.DATA.length; i++) {
			$('.tableTab' + tabNum).append('<tr><td><input class="checkStateTab' + tabNum + '" type="checkbox" value="' + result.DATA[i][0] +'"></td><td>' + result.DATA[i][0] + '</td><td>' + result.DATA[i][1] + '</td><td>' + result.DATA[i][2] + '</td></tr>');
		};
	}

	//非同期呼び出しエラー時のコールバック関数
	var getQryFault = function(statusCode, statusMsg){
		console.log('エラー');
	}
</script>
