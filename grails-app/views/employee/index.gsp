<!DOCTYPE html>
<html>
    <head>
        <title>Employee Payroll</title>
    <g:if env="development"><asset:stylesheet src="index.css"/></g:if>

    </head>
<header class="header-content header">
<div class="logo-content">
<div>
<span class="emp-text"> EMPLOYEE </span><br>
            <span class="emp-text emp-payroll"> PAYROLL</span>
</div>
    </div>
</header>

    <body>
<div class="emp"> <g:link class="create" action="create">Add Employee</g:link> </div>
     <div class="table-main">


<table id="display" class="table">

<tr>
<th></th>
                <th>Name</th>
<th>Gender</th>
                <th>Department</th>
<th>Salary</th>
                <th>Start Date</th>
                <th>Actions</th>
</tr>
              <g:each in="${employeeList}" var="p">
                <td>
<g:img dir="images" file="${p.profile}" width="40" height="40"/>
                </td>
<td>${p.name}</td>
                <td>${p.gender}</td>
<td>

${p.departments}

                </td>
<td> ${p.salary}</td>
                <td>${p.startDate}</td>

<td>
<g:form resource="${this.employee}" method="DELETE">
<input type="submit" formaction="/employee/edit/${p.id}" value="Edit" class="edit" >
<input type="submit" formaction="/employee/delete/${p.id}" value="Delete" class="delete" >
            </g:form>
</td>
            </tr>
</g:each>
</table>
    </body>
</html>
