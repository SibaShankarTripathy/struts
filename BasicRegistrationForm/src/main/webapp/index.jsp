<!-- Step-2 this is a JSP page where I only mention  HTML code. -->

<!-- This below Declarative tag is used to declare struts tag -->
<!-- To use this struts tag we need an URI of that tag and to use that tag as specify as struts tag we need one prefix also. -->
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="sts"%>

<h2>Basic Registration Form</h2>

<sts:form action="register" method="post">
	<table>
		<tr>
			<td>ID:</td>
			<td><sts:text property="id" /></td>
		</tr>
		<tr>
			<td>Name:</td>
			<td><sts:text property="name" /></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><sts:text property="email" /></td>
		</tr>
		<tr>
			<td>Gender(Male)</td>
			<td><sts:radio property="gender" value="male" /></td>
		</tr>
		<tr>
			<td>Gender(Female)</td>
			<td><sts:radio property="gender" value="female" /></td>
		</tr>
		<tr>
			<td>Address:</td>
			<td><sts:textarea property="address" /></td>
		</tr>
		<tr>
			<td>Hobbies:</td>
			<td><sts:checkbox property="hobbies" value="movies">MOVIES</sts:checkbox></td>
			<td><sts:checkbox property="hobbies" value="cricket">CRICKET</sts:checkbox></td>
			<td><sts:checkbox property="hobbies" value="baseball">BASEBALL</sts:checkbox></td>
			<td><sts:checkbox property="hobbies" value="football">FOOTBALL</sts:checkbox></td>
		</tr>
		<tr>
			<td><sts:submit value="Register" /></td>
		</tr>

	</table>

</sts:form>

<!-- When you press SUBMIT button it will re direct to web.xml file then start Step-3 process -->