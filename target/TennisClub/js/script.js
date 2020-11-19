var pdf = new jsPDF();
var specialElementHandler = {
    "#editor":function (element, renderer){
        return true;
    }
};

function generatePDF(){

    var htmlText = document.getElementById("showContext");

    htmlText.style.display = "block";

    pdf.fromHTML($("#text").html(), 15,15,{
        "width": 170,
        "elementHandlers":specialElementHandler
    });
    pdf.save('newpdf.pdf');

    htmlText.style.display = "none";
}

