function print(){
	
	var element = document.getElementById("stockdetails");
	var opt = {
	  margin:       1,
	  filename:     'MonthlyStockDetails_report.pdf',
	  image:        { type: 'jpeg', quality: 0.98 },
	  html2canvas:  { scale: 2 },
	  jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait' }
	};
	 
	html2pdf().from(element).set(opt).save();
}

/*form validation*/
function validateStreport(){

	/*check the columns are null or not*/
	if( document.St_pass_DataAndYear.year.value == "" ) {
			alert( "Please provide the year!" );
			document.St_pass_DataAndYear.year.focus() ;
			return false;
		 }
}