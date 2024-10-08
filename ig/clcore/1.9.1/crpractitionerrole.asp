<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/PractitionerRole-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/PractitionerRole-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/PractitionerRole-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/PractitionerRole-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/PractitionerRole-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/PractitionerRole-"+id+".xml");
  else if (id == "EjemploEspecialidadCL2")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.9.1/PractitionerRole-EjemploEspecialidadCL2.html");
  else if (id == "EjemploEspecialidadCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.9.1/PractitionerRole-EjemploEspecialidadCL.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/PractitionerRole.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /clcore/1.9.1/crpractitionerrole.asp) .
</body>
</html>
