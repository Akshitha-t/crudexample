$(document).ready(function () {
    var updatedEmployee = {
        id: 1, // Replace with the actual employee ID
        name: "Updated Name",
        salary:"Updated Salary",
        designation: "Updated Designation"
    };

    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/updateEmployeeAjax",
        data: JSON.stringify(updatedEmployee),
        success: function (data) {
            console.log(data); // Success message
        },
        error: function (error) {
            console.error("Error updating employee:", error);
        }
    });
});
