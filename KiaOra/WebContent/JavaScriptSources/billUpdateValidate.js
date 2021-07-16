function validateUpdateBillForm(){
	var amount = document.forms["billUpdate"]["amount"].value;
	var dueEmpty = document.forms["billUpdate"]["dueDate"].value;
	var dueDate =  document.billUpdate.dueDate.value;
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
	
	if(dueEmpty == ""){
		alert("Please enter the due date");
		return false;
	}
	
	if(dueDate < currentDate){
		alert("The due date should be entered correctly!");
		return false;
	}
}