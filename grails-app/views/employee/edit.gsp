<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-employee" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.employee}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.employee}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.employee}" method="PUT">
                <g:hiddenField name="version" value="${this.employee?.version}" />
                <fieldset class="form">
<div > <span class="attributes">  FullName: </span>  <span class="fields"><g:textField class="name" name="name" placeholder="${employee.name}" /></span> </div>
<br />
<div ><span class="nameattribute">ProfileImage: </span> <span class="pifield"> <g:radio name="profile" value="Ellipse -1.png" class="radio"/><g:img dir="images" file="Ellipse -1.png" width="40" height="40"/>
<g:radio name="profile" value="Ellipse -2.png" /><g:img dir="images" file="Ellipse -2.png" width="40" height="40"/>
<g:radio name="profile" value="Ellipse -3.png"/><g:img dir="images" file="Ellipse -3.png" width="40" height="40"/>
<g:radio name="profile" value="Ellipse -4.png" /><g:img dir="images" file="Ellipse -4.png" width="40" height="40"/></span></div >
<br />
<div >  <span class="attributes">  Gender : </span> <span class="gfields"> <g:radio name="gender" value="male" /> Male <g:radio name="gender" value="female" /> Female </span> </div> <br />
<div >  <span class="attributes"> Departments :  </span> <span class="dfields">  <g:checkBox name="departments" value="Enginner" /> Engineer <g:checkBox name="departments" value="Sales" /> Sales <g:checkBox name="departments" value="Finance" /> Finance </span></div> <br />
<div > <span class="attributes"> Salary :</span> <span class="sfields"> <g:field type="number" name="salary" min="10000" max="1000000" /> </span> </div> <br />
<div >  <span class="attributes">StartDate : </span> <span class="datefields">  <g:datePicker name="startDate" value="${new Date()}"
                                                                                                                noSelection="['':'-Choose-']"/> </span></div> <br />

</fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
