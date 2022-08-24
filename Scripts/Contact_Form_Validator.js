function validate()
{
    if (document.getElementById("validateCheck").checked) {
        alert("Form has been successfully submitted");
        return true;
    }
    else {
        alert("Please make sure the check box is checked");
        return false;
    }
}