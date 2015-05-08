<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select EMP_STATUS
from
(SELECT 
'All' as EMP_STATUS
from dual
UNION
SELECT DISTINCT
EMP_STATUS
FROM DIM_SALES_REP
)EMP_STATUS
ORDER BY EMP_STATUS

*/
    	  String  query=" ";
    	  query+=" select EMP_STATUS";
    	  query+="  from";
    	  query+="  (SELECT ";
    	  query+="  'All' as EMP_STATUS,0 as sq";
    	  query+=" 	from dual";
    	  query+=" 	UNION";
    	  query+=" 	SELECT DISTINCT";
    	  query+=" 	EMP_STATUS,1 as sq";
    	  query+="	FROM DIM_SALES_REP";
    	  query+="	)EMP_STATUS";
    	  query+="	ORDER BY sq,EMP_STATUS";
		    	 
		    	  //out.print(query);
    	  String columns="1";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
