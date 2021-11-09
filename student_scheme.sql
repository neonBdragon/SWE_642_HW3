<%
session = request.getSession(false);
Customer cust = new Customer();
cust = (Customer) session.getAttribute("customer");
String firstName = cust.getFirstName();
String lastName = cust.getLastName();

out.println("First Name: " + firstName);
out.println("Last Name: " + lastName);
%>

