<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/CodeSystem-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/CodeSystem-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/CodeSystem-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/CodeSystem-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/CodeSystem-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/CodeSystem-"+id+".xml");
  else if (id == "CSSexoListadoDeis")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSSexoListadoDeis.html");
  else if (id == "CSTiposEncuentroCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSTiposEncuentroCL.html");
  else if (id == "CSEspecialidadesDeisCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSEspecialidadesDeisCL.html");
  else if (id == "CSCodigoDNI")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSCodigoDNI.html");
  else if (id == "CSCodComunasCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSCodComunasCL.html");
  else if (id == "CSRazonNOTinm")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSRazonNOTinm.html");
  else if (id == "CSIdentificadores")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSIdentificadores.html");
  else if (id == "CSIdentidaddeGenero")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSIdentidaddeGenero.html");
  else if (id == "CSCodigoServicio")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSCodigoServicio.html");
  else if (id == "CSCodProvinciasCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSCodProvinciasCL.html");
  else if (id == "CSPrevision")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSPrevision.html");
  else if (id == "CSCodRegionCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSCodRegionCL.html");
  else if (id == "CodPais")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CodPais.html");
  else if (id == "csrazonnoencuentro")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-csrazonnoencuentro.html");
  else if (id == "CSCodigoVacunas")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSCodigoVacunas.html");
  else if (id == "CSTipoIdentificador")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSTipoIdentificador.html");
  else if (id == "CSCodigoslenguaje")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSCodigoslenguaje.html");
  else if (id == "CSCodMadurez")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSCodMadurez.html");
  else if (id == "CSNombreCampana")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSNombreCampana.html");
  else if (id == "CSCodSSalud")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSCodSSalud.html");
  else if (id == "CSRazonNOT")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/CodeSystem-CSRazonNOT.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/CodeSystem.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /clcore/1.8.10/crcodesystem.asp) .
</body>
</html>
