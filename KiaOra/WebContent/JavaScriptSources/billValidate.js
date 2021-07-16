function validateInsertBillForm(){
	
	var amount = document.forms["billInsert"]["amount"].value;
	var date = document.forms["billInsert"]["date"].value;
	var dueDate =  document.billInsert.dueDate.value;
	var dueEmpty = document.forms["billInsert"]["dueDate"].value;
	var currentDate = new Date();
	dueDate = new Date(dueDate);
	
	if(amount == ""){
		alert("Please enter the amount in the bill");
		return false;
	}
	
	if(amount < 1){
		alert("Please enter a valid bill amount");
		return false;
	}
	
	if(date == ""){
		alert("Please enter the date received");
		return false;
	}
	
	if(date < 1 || date > 31){
		alert("Please enter a valid date");
		return false;
	}
	
	if(dueEmpty == ""){
		alert("Please enter the due date");
		return false;
	}
	
	if(dueDate < currentDate){
		alert("The due date should be entered correctly!");
		return false;
	}
}
