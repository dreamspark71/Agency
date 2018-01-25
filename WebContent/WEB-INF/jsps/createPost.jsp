<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student - Spring Hibernate Project</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/bootstrap.css"
	type="text/css" />
</head>

<body>

	<jsp:include page="header.jsp"></jsp:include>

	<hr />

	<form action="${pageContext.request.contextPath}/savePost"
		method="post"
		<%-- enctype="multipart/form-data" --%> commandName="post">
		<div class="row">
			<div class="col-md-6 push-md-3">

				<h3>Create Post</h3>
				<div class="form-group row">
					<label class="col-md-3">Name</label> <input type="text"
						name="title" class="col-md-3" />
				</div>
				<div class="form-group row">
					<label class="col-md-3">Description</label> <input type="text"
						name="description" class="col-md-3" />
				</div>
				<div class="form-group row">
					<label class="col-md-3">Price</label> <input type="text"
						name="price" class="col-md-3" />
				</div>
				<div class="form-group row">
					<label class="col-md-3"> Category : </label>
					<form:select path="categories" name="categoryName">
						<form:option value="NONE" label="--- Select ---" />
						<form:options items="${categories}" itemValue="name"
							itemLabel="name" />
					</form:select>
				</div>


			</div>

			<%-- <div class="col-md-3 mx-auto">
				<img style="margin-top: 5%;"
					src="<c:url value="/static/images/default-icon.png"/>"
					class="img-fluid img-thumbnail h-25"> <label><b>Upload
						Photo</b> </label> <input class="btn btn-default" type="file"
					name="photoUpload" size="50" />
			</div> --%>
		</div>
		<!-- <div class="row push-md-6 col-md-3">

			<input style="margin-top: -246px; position: absolute;" type="submit"
				class="btn btn-primary mx-auto" value="save">
		</div> -->
		<button type="submit" class="btn btn-primary" value="save"
			style="margin-left: 48%">Save</button>
	</form>
</body>
</html>