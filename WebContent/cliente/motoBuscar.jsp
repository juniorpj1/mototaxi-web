<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Roberto - UC010</title>
</head>
<body>
	<h2>Procurar Mototaxista por Nome:</h2>
	<br />
<form method="get" action="<%=request.getContextPath()%>/cliente/MotoTaxistas2CRUD?cmd=listar&cmd=${moto.nome}" >
	<input type="text" name="nome"> 
	<input type="submit" value="Pesquisar" />

</form>
</body>
</html>