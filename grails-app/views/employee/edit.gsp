<!DOCTYPE html>
<html>
    <head>
        <head>
        <title>Create Employee Payroll</title>
    <g:if env="development"><asset:stylesheet src="edit.css"/></g:if>
    </head>

   
        <header class="header-content header">
<div class="logo-content">
<img routerLink="" src="logo.png" alt="">
<div>
<span class="emp-text"> EMPLOYEE </span><br>
            <span class="emp-text emp-payroll"> PAYROLL</span>
</div>
    </div>
</header>

    <body>
            <g:form resource="${this.employee}" method="PUT">
                <g:hiddenField name="version" value="${this.employee?.version}" />
<div > <span class="attributes">  FullName: </span>  <span class="fields"><g:textField class="name" name="name" value="${employee.name}" /></span> </div>
<br />
<div ><span class="nameattribute" >ProfileImage: </span> <span class="pifield" > <g:radio name="profile" value="Ellipse -1.png" class="radio" /><g:img dir="images" file="Ellipse -1.png" width="40" height="40"/>
<g:radio name="profile" value="Ellipse -2.png" /><g:img dir="images" file="Ellipse -2.png" width="40" height="40"/>
<g:radio name="profile" value="Ellipse -3.png"/><g:img dir="images" file="Ellipse -3.png" width="40" height="40"/>
<g:radio name="profile" value="Ellipse -4.png" /><g:img dir="images" file="Ellipse -4.png" width="40" height="40"/></span></div >
<br />
<div >  <span class="attributes">  Gender : </span> <span class="gfields"> <g:radio name="gender" value="male" /> Male <g:radio name="gender" value="female" /> Female </span> </div> <br />
<div >  <span class="attributes"> Departments :  </span> <span class="dfields">  <g:checkBox name="departments" value="Enginner" checked="false" /> Engineer <g:checkBox name="departments" value="Sales" checked="false" /> Sales <g:checkBox name="departments" value="Finance" checked="false" /> Finance <g:checkBox name="departments" value="Others" checked="false" /> Other </span></div> <br />
<div > <span class="attributes"> Salary :</span> <span class="sfields"> <g:field type="number" name="salary" min="10000" max="1000000" value="${employee.salary}"/> </span> </div> <br />
<div >  <span class="attributes">StartDate : </span> <span class="datefields">  <g:datePicker name="startDate" value="${new Date()}"
                                                                                                                noSelection="['':'-Choose-']"/> </span></div> <br />

                    <input class="button" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />

            </g:form>
        </div>
    </body>
</html>
