<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	<form:form modelAttribute="orderForm" action="${flowExecutionUrl}">
		<table style="width: 100%">
			<tr >
				<td colspan="2">
					<form:errors path="books" cssClass="error"/>
				</td>
			</tr>
			<tr style="height: 10px;"/>
			<tr>
				<td><spring:message code="label.page.products.select.book" /></td>
				<td>
					<form:select path="book" items="${selectableBooks}" itemLabel="title" itemValue="id"/>
				</td>
			</tr>
			<tr>
				<td><spring:message code="label.page.products.select.quantity"/></td>
				<td>
					<form:input path="quantity" />
					<span style="margin-left: 5px">
						<form:errors path="quantity" cssClass="error"/>
					</span>
				</td>
			</tr>
			<tr height="10px"/>
			<tr align="right">
				<td colspan="2">
					<button type="submit" id="add" name="_eventId_add"><spring:message code="label.page.products.select.add.book"/></button>		
				</td>
			</tr>
		</table>
		
		<p />
			<h3><spring:message code="label.page.products.select.selected.books"/></h3>
			<div style="margin-top: 10px; margin-bottom: 10px;">
			<table style="width: 100%;" rules="groups">
				<thead>
					<tr>
						<th width="80%" align="left"><spring:message code="label.page.products.select.book.name"/></th>
						<th width="20%" align="left"><spring:message code="label.page.products.select.book.quantity"/></th>
					</tr>
				</thead>
				<tbody>
				<tr height="10px"/>
			<c:forEach items="${orderForm.books}" var="book">
				<tr>
					<td>${book.key.title}</td>
					<td>${book.value}</td>
				</tr>
			</c:forEach>
			<tr height="20px"/>
			</tbody>
		</table>
		</div>
	
	
		<div align="right" style="margin-bottom: 20px;" >
			<button type="submit" id="return" name="_eventId_return"><spring:message code="label.page.products.select.cancel"/></button>
			<button type="submit" id="cancel" name="_eventId_reset"><spring:message code="label.page.products.select.reset"/></button>
			<button type="submit" id="continue" name="_eventId_next"><spring:message code="label.page.products.select.next"/></button>
		</div>
	</form:form>
