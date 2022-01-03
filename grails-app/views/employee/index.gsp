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
<fieldset class="buttons">
               <a href="/employee/edit/${p.id}"><g:img dir="images" file="create-black-18dp.svg"/></a>
                    <a href="/employee/delete/${p.id}" ><g:img dir="images" file="delete-black-18dp.svg"/></a>
</fieldset>
            </g:form>
            </tr>
</g:each>
</table>


    </body>
</html>
