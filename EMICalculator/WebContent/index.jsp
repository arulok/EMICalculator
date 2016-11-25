<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<%
	Integer princ = null;
	Integer term = null;
	Integer rate = null;
	Double payment = null;
	
	if (session.getAttribute("payment") != null){
		princ = ((Integer)(session.getAttribute("princ")));
		term = ((Integer)(session.getAttribute("term")));
		rate = ((Integer)(session.getAttribute("rate")));
		payment = ((Double)(session.getAttribute("payment")));
		
		session.removeAttribute("princ");
		session.removeAttribute("term");
		session.removeAttribute("rate");
		session.removeAttribute("payment");
	}

%>

<body>
	WELCOME TO DEMO BANK !!!
	<p>
	<center>
		<form name="calc" method="POST" action="CalculatorServlet">
			<table width=60% border=0>
				<tr>
					<th bgcolor="#aaaaaa" width=50%><font color=YELLOW>Description</font></th>
					<th bgcolor="#aaaaaa" width=50%><font color=YELLOW>Data
							Entry</font></th>
				</tr>
				<tr>
					<td bgcolor="#eeeee">Loan Amount</td>
					<td bgcolor="#aaeeaa" align=right><input type=text name=loan value="<%=princ!=null?princ:""%>"
						size=10></td>
				</tr>
				<tr>
					<td bgcolor="#eeeee">Loan Length in Months</td>
					<td bgcolor="#aaeeaa" align=right><input type=text name=months value="<%=term!=null?term:""%>"
						size=10></td>
				</tr>
				<tr>
					<td bgcolor="#eeeee">Interest Rate</td>
					<td bgcolor="#aaeeaa" align=right><input type=text name=rate
						size=10 value="<%=rate!=null?rate:""%>"></td>
				</tr>
				<tr>
					<td bgcolor="#eeeee">Monthly Payment</td>
					<td bgcolor="#eeaaaa" align=right><em>Calculated</em> 
					<input type=text name=pay size=10 value="<%=payment!=null?payment:""%>">
					</td>
				</tr>
				<tr>
					<td bgcolor="#aaeeaa" align=center><input type="submit"
						value=Calculate></td>
					<td bgcolor="#eeeeaa" align=center><input type=reset
						value=Reset></td>
				</tr>
			</table>
		</form>
		<font size=1>Enter only numeric values (no commas), using
			decimal points where needed.<br> Non-numeric values will cause
			errors.
		</font>
	</center>
	</a>
	</font>
	</p>
</body>
</html>