﻿<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Patient-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Patient-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Patient-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Patient-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Patient-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Patient-"+id+".xml");
  else if (id == "PacienteCl-4")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.1/Patient-PacienteCl-4.html");
  else if (id == "PacienteCl-3")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.1/Patient-PacienteCl-3.html");
  else if (id == "PacienteCl-5")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.1/Patient-PacienteCl-5.html");
  else if (id == "PacienteCL2")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.1/Patient-PacienteCL2.html");
  else if (id == "PacienteCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.1/Patient-PacienteCL.html");
  else if (id == "11")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.1/Patient-11.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Patient.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /clcore/1.8.1/crpatient.asp) .
</body>
</html>
