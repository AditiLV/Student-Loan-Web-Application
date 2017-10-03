function loadDoc() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            myFunction(this);
        }
    };
    xhttp.open("GET", "contactinfor.xml", true);
    xhttp.send();
}
function myFunction(xml) {
    var i;
    var xmlDoc = xml.responseXML;
    root = xmlDoc.documentElement;
    var x = root.getElementsByTagName("info");
    var table = "";
    table += "<tr><td>Mailing Address</td><td  id=\"middletable\">" + x[0].getAttribute("mailing-address") +
        "</td></tr><tr><td>Toll Free Phone Number</td><td \style\=\"color:blue\" id=\"middletable\"><u>" +
      x[0].getAttribute("toll-free-phone") + "<u></td></tr><tr><td>Direct Phone Number</td><td \style\=\"color:blue\" id=\"middletable\"><u>" + x[0].getAttribute("direct-phone") +
        "<u></td></tr><tr><td>Email Address</td><td  id=\"middletable\">" + x[0].getAttribute("email") +
      "</td></tr><tr><td>Web Site</td><td  id=\"middletable\">" + x[0].getAttribute("website") + "</td></tr>";

    document.getElementById("demo").innerHTML = table;
}


