$(document).ready(function() {
    if ($("#alertSuccess").text().trim() == "") 
    {
        $("#alertSuccess").hide();
    }
    $("#alertError").hide();
});
// SAVE ============================================
$(document).on("click", "#btnSave", function(event) 
{
    // Clear alerts---------------------
    $("#alertSuccess").text("");
    $("#alertSuccess").hide();
    $("#alertError").text("");
    $("#alertError").hide();
    // Form validation-------------------
    var status = validateDoctorForm();
    if (status != true) 
    {
        $("#alertError").text(status);
        $("#alertError").show();
        return;
    }
    // If valid------------------------
    var type = ($("#hidDoctorIDSave").val() == "") ? "POST" : "PUT";
    $.ajax(
    	{
    		url : "DoctorAPI",
    		type : type,
    		data : $("#formDoctor").serialize(),
    		dataType : "text",
    		complete : function(response, status)
    		{
    		onDoctorSaveComplete(response.responseText, status);
    		}
    	});
});

function onDoctorSaveComplete(response, status)
{
	if(status == "success" ){
		var resultSet =JSON.parse(response);
		
		if (resultSet.status.trim() == "success")
			{
				$("#alertSuccess").text("Successfully saved.");
				$("#alertSuccess").show();
				
				$("#divDoctorGrid").html(resultSet.data);
			}else if (resultSet.status.trim() == "error")
			{
				$("#alertError").text(resultSet.data);
				$("#alertError").show();
			}
	}else if (status == "error")
			{
				$("#alertError").text("Error while saving.");
				$("#alertError").show();
			} else
			{
				$("#alertError").text("Unknown error while saving..");
				$("#alertError").show();
			}
		$("#hidDoctorIDSave").val("");
		$("#formDoctor")[0].reset();
		
}

// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) {
    $("#hidDoctorIDSave").val($(this).closest("tr").find('#hidDoctorIDUpdate').val());
    $("#doctorName").val($(this).closest("tr").find('td:eq(0)').text());
    $("#doctorAge").val($(this).closest("tr").find('td:eq(1)').text());
    $("#doctorMail").val($(this).closest("tr").find('td:eq(2)').text());
    $("#doctorSpeciality").val($(this).closest("tr").find('td:eq(3)').text());
  
});

// REMOVE==================================================
$(document).on("click", ".btnRemove", function(event)
		{
		$.ajax(
		{
		url : "DoctorAPI",
		type : "DELETE",
		data : "doctorID=" + $(this).data("doctorid"),
		dataType : "text",
		complete : function(response, status)
		{
		onDoctorDeleteComplete(response.responseText, status);
		}
	});
});

function onDoctorDeleteComplete(response, status)
{
if (status == "success")
	{
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success")
			{
				$("#alertSuccess").text("Successfully deleted.");
				$("#alertSuccess").show();
				$("#divDoctorGrid").html(resultSet.data);
			} else if (resultSet.status.trim() == "error")
			{
				$("#alertError").text(resultSet.data);
				$("#alertError").show();
			}
	} else if (status == "error")
	{
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else
	{
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}
// CLIENTMODEL=========================================================================
function validateDoctorForm() {

    if ($("#doctorName").val().trim() == "") {
        return "Insert doctor name.";
    }

    if ($("#doctorAge").val().trim() == "") {
        return "Insert doctor age.";
    }

    if ($("#doctorMail").val().trim() == "") {
        return "Insert doctor mail.";
    }

    if ($("#doctorSpeciality").val().trim() == "") {
        return "Insert doctor speciality.";
    }
    
    return true;
}