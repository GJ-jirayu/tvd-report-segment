<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
OrderStatus

SELECT 'All' as BU_NAME
from dual
union
select BU_NAME 
from DIM_ORDER_TYPE
GROUP BY BU_NAME

*/
String  query="";
  query+=" SELECT 'All' as BU_NAME";
  query+=" from dual";
  query+=" union ";
  query+=" select BU_NAME ";
  query+=" from DIM_ORDER_TYPE";
  query+=" GROUP BY BU_NAME";

		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
