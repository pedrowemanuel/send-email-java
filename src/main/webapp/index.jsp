<!DOCTYPE html>
<html>
	<%
	if(session.getAttribute("user") != null) {
		response.sendRedirect("email.jsp");
			} else {
		response.sendRedirect("formlogin.jsp");
			}
	%>
</html>