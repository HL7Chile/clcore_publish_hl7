<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Composition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Composition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Composition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Composition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Composition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Composition-"+id+".xml");
  else if (id == "CompositionClEj")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/Composition-CompositionClEj.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/Composition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /clcore/1.8.10/crcomposition.asp) .
</body>
</html>
