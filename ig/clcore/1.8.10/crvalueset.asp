<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/ValueSet-"+id+".xml");
  else if (id == "VSTiposServicio")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSTiposServicio.html");
  else if (id == "VSCodigosComunaCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSCodigosComunaCL.html");
  else if (id == "VSCodigoslenguaje")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSCodigoslenguaje.html");
  else if (id == "VSRazonNOTinm")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSRazonNOTinm.html");
  else if (id == "VSTipoIdentificador")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSTipoIdentificador.html");
  else if (id == "VSNombreCampana")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSNombreCampana.html");
  else if (id == "VSEspecialidadesDeisCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSEspecialidadesDeisCL.html");
  else if (id == "VSTiposEncuentroCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSTiposEncuentroCL.html");
  else if (id == "VSIdentificadores")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSIdentificadores.html");
  else if (id == "VSCodigosProvinciasCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSCodigosProvinciasCL.html");
  else if (id == "VSPrevision")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSPrevision.html");
  else if (id == "VSTiposDocClinico")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSTiposDocClinico.html");
  else if (id == "VSRazonNOT")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSRazonNOT.html");
  else if (id == "VSIdentidaddeGenero")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSIdentidaddeGenero.html");
  else if (id == "VSCodMadurez")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSCodMadurez.html");
  else if (id == "VSCodigosServiciosSalud")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSCodigosServiciosSalud.html");
  else if (id == "VSSexoListadoDeis")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSSexoListadoDeis.html");
  else if (id == "VSContactosec")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSContactosec.html");
  else if (id == "VSDiagnosticosSCT")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSDiagnosticosSCT.html");
  else if (id == "VSTiposDocumentos")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSTiposDocumentos.html");
  else if (id == "VSCodigosRegionesCL")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSCodigosRegionesCL.html");
  else if (id == "CodPais")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-CodPais.html");
  else if (id == "VSTiposVacunas")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/1.8.10/ValueSet-VSTiposVacunas.html");
  else if (id == "index")
    Response.Redirect("https://hl7chile.cl/fhir/ig/clcore/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /clcore/1.8.10/crvalueset.asp) .
</body>
</html>
