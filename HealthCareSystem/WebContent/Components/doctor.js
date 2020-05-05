$(document).ready(function() {
    if ($("#alertSuccess").text().trim() == "") 
    {
        $("#alertSuccess").hide();
    }
    $("#alertError").hide();
});
// SAVE ============================================
$(document).on("click", "#btnSave", function(event) {
    //Clear Alerts----------------------------
    $("#alertSuccess").text("");
    $("#alertSuccess").hide("");
    $("#alertError").text("");
    $("#alertError").hide("");
    
    //Form Validation-------------------------
    var status = validateDoctorForm();
    if (status != true)
    	{
    		$("alertError").text(status);
    		$("slertError").show();
    		return;
    	}
    // If valid
    $("#formDoctor").submit();
});
// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) {
    $("#hidDoctorIDSave").val($(this).closest("tr").find('#hidDoctorIDUpdate').val());
    $("#name").val($(this).closest("tr").find('td:eq(0)').text());
    $("#age").val($(this).closest("tr").find('td:eq(1)').text());
    $("#mail").val($(this).closest("tr").find('td:eq(2)').text());
    $("#speciality").val($(this).closest("tr").find('td:eq(3)').text());
});
// CLIENTMODEL=========================================================================
function validateDoctorForm() {

    if ($("#name").val().trim() == "") {
        return "Insert doctor name.";
    }

    if ($("#age").val().trim() == "") {
        return "Insert doctor age.";
    }

    if ($("#mail").val().trim() == "") {
        return "Insert doctor mail.";
    }

    if ($("#speciality").val().trim() == "") {
        return "Insert doctor speciality.";
    }

    return true;
}