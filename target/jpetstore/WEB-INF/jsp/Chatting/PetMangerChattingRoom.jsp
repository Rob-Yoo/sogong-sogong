<%--
  Created by IntelliJ IDEA.
  User: 00110
  Date: 2022-11-27
  Time: 오후 9:42
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html; charset=utf-8"%>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../common/IncludeTop.jsp"%>

<jsp:useBean id="ChattingRoom"
             class="org.mybatis.jpetstore.web.actions.ChattingActionBean" />

<div id="BackLink">
    <stripes:link beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean">
        Return to Main Menu
    </stripes:link>
</div>

<div id="Catalog">
    <div id="SearchContent" align="left">
        <stripes:form
                beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean">
            <stripes:text name="keyword" size="14" />
            <stripes:submit name="searchProducts" value="Search" />
        </stripes:form>
    </div id="SearchContent">
    <h2>Pet Manager Chatting List</h2>
    <table>
        <tr>
            <th>Manager ID</th>
            <th>User ID</th>
        </tr>
        <c:forEach var="managerChatList" items="${actionBean.adminChatList}">
            <tr>
                <td>${managerChatList.managerId}</td>
                <td>${managerChatList.customerId}</td>
                <td><stripes:link class="Button"
                                  beanclass="org.mybatis.jpetstore.web.actions.ChattingActionBean"
                                  event="joinChatting">
                    <stripes:param name="customerId" value="${managerChatList.customerId}"/>
                    <stripes:param name="managerId" value="${managerChatList.managerId}"/>
                    join
                </stripes:link></td>
            </tr>
        </c:forEach>
    </table>
</div>

<%@ include file="../common/IncludeBottom.jsp"%>
