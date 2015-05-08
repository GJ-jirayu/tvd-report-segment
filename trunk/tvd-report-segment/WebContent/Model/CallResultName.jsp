<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
CallResultName

SELECT CALL_RESULT_NAME
FROM
(SELECT 
'All' as CALL_RESULT_NAME
from dual
UNION
SELECT DISTINCT CALL_RESULT_NAME
FROM DIM_CALLINFO
)CALL_RESULT_NAME
ORDER BY CALL_RESULT_NAME

*/
String  query=" select CALL_RESULT_NAME";
query+=" from";
query+=" (SELECT ";
query+=" 'All' as CALL_RESULT_NAME ,0 as sq1";
query+=" from dual";
query+=" UNION";
query+=" SELECT DISTINCT";
query+=" CALL_RESULT_NAME,1 as sq1";
query+=" FROM DIM_CALLINFO";
query+=" )CALL_RESULT_NAME";
query+=" ORDER BY sq1,CALL_RESULT_NAME";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
