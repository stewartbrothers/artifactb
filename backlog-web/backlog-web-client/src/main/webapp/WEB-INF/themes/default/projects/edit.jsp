<%--
  Created by IntelliJ IDEA.
  User: gerwood
  Date: 11/04/2009
  Time: 5:57:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../layout/header.jspf"%>
<div id="work-area">
<form:form commandName="project" cssClass="edit-project edit">
<div class="title">Editing: ${project.title} <span class="id">(${project.projectId})</span></div>
    <table>
        <colgroup>
            <col class="form-tags" />
        </colgroup>
        <tbody>
        <%--<tr>--%>
            <%--<th>Id</th>--%>
            <%--<td><form:input path="projectId" /></td>--%>
        <%--</tr>--%>
        <tr>
            <th>Title</th>
            <td><form:input path="title" accesskey="t" cssStyle="width: 200px;" maxlength="128" /></td>
            <th>Owner</th>
            <td><form:input path="owner" accesskey="o" cssStyle="width: 200px;" maxlength="128" /></td>
        </tr>
        <tr>
            <th>State</th>
            <td>
                <form:select path="state">
                    <form:option value="new">New</form:option>
                    <form:option value="accepted">Accepted</form:option>
                    <form:option value="in-progress">In Progress</form:option>
                    <form:option value="complete">Complete</form:option>
                    <form:option value="abandoned">Abandoned</form:option>
                </form:select>
            </td>
            <th>Team</th>
            <td><form:input path="team" accesskey="w" cssStyle="width: 200px;" maxlength="128" /></td>
        </tr>
        <tr>
            <th>Description</th>
            <td colspan="3"><form:textarea path="description" cssStyle="width: 100%; height: 150px;"/></td>
        </tr>
        </tbody>
        <tfoot>
            <tr>
                <th></th>
                <td>
                    <input type="submit" class="save-button" value="Save" />
                </td>
            </tr>
        </tfoot>
    </table>
</form:form>
</div>
<%@ include file="../layout/footer.jspf"%>
