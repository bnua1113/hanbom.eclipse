function ch(){
	if(document.frm.P_NO.value==""){
		alert("환자번호가 입력되지 않았습니다!");
		document.frm.P_NO.focus();
		return false;
	}
	if(document.frm.T_CODE.value==""){
		alert("검사코드가 선택되지 않았습니다!");
		document.frm.T_CODE.focus();
		return false;
	}
	if(document.frm.T_SDATE.value==""){
		alert("검사시작일자가 입력되지 않았습니다!");
		document.frm.T_SDATE.focus();
		return false;
	}
	if(!document.frm.T_STATUS[0].checked && !document.frm.T_STATUS[1].checked){
		alert("검사상태가 선택되지 않았습니다!");
		document.frm.T_STATUS[0].focus();
		return false;
	}
	if(document.frm.T_LDATE.value==""){
		alert("검사완료일자가 입력되지 않았습니다!");
		document.frm.T_LDATE.focus();
		return false;
	}
	if(!document.frm.T_RESULT[0].checked &&
		!document.frm.T_RESULT[1].checked &&
		!document.frm.T_RESULT[2].checked){
		alert("검사결과가 선택되지 않았습니다!");
		document.frm.T_RESULT[0].focus();
		return false;
	}
	
	alert("가입되었습니다!");
	return true;
}
