<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
SELECT CALL_TYPE_NAME
FROM
(SELECT 
'All' as CALL_TYPE_NAME
from dual
UNION
SELECT DISTINCT CALL_TYPE_NAME
FROM DIM_CALLINFO
)CALL_TYPE_NAME
ORDER BY CALL_TYPE_NAME

*/
String  query=" select CALL_TYPE_NAME";
  query+=" from";
  query+=" (SELECT ";
  query+=" 'All' as CALL_TYPE_NAME ,0 as sq1";
  query+=" from dual";
  query+=" UNION";
  query+=" SELECT DISTINCT";
  query+=" CALL_TYPE_NAME,1 as sq1";
  query+=" FROM DIM_CALLINFO";
  query+=" )CALL_TYPE_NAME";
  query+=" ORDER BY sq1,CALL_TYPE_NAME";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
