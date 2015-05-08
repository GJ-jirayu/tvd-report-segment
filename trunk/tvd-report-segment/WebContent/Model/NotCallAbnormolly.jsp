<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
SELECT CALL_ABNORMALLY_NAME
FROM
(SELECT 
'All' as CALL_ABNORMALLY_NAME
from dual
UNION
SELECT DISTINCT CALL_ABNORMALLY_NAME
FROM DIM_CALLINFO
where (CALL_TYPE_NAME in (${CallTypeNameParam}))
)CALL_ABNORMALLY
ORDER BY CALL_ABNORMALLY_NAME

*/
String NotCallAbnormollyParam = request.getParameter("NotCallAbnormollyParam");
String  query=" select CALL_ABNORMALLY_NAME";
query+=" from";
query+=" (SELECT ";
query+=" 'All' as CALL_ABNORMALLY_NAME ,0 as sq1";
query+=" from dual";
query+=" UNION";
query+=" SELECT DISTINCT";
query+=" CALL_ABNORMALLY_NAME,1 as sq1";
query+=" FROM DIM_CALLINFO";
query+=" where (CALL_TYPE_NAME in ("+NotCallAbnormollyParam+"))";
query+=" )CALL_ABNORMALLY";
query+=" ORDER BY sq1,CALL_ABNORMALLY_NAME";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
