<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
         
    	  //String query="SELECT current date FROM sysibm.sysdummy1";
/*
select CUSTOMER_SUBSTATUS_CODE
,CUSTOMER_SUBSTATUS_NAME
from
(SELECT 
'All' as CUSTOMER_SUBSTATUS_CODE
,'All' as CUSTOMER_SUBSTATUS_NAME
from dual
UNION
SELECT CUSTOMER_SUBSTATUS_CODE,
CUSTOMER_SUBSTATUS_NAME
FROM DIM_CUSTOMER
where (CUSTOMER_STATUS_CODE in (${CustomerStatusParam}))
group by CUSTOMER_SUBSTATUS_CODE,CUSTOMER_SUBSTATUS_NAME
)CUSTOMER_SUBSTATUS
order by CUSTOMER_SUBSTATUS_NAME
*/
String CustomerStatusParam = request.getParameter("CustomerStatusParam");
String  query=" select CUSTOMER_SUBSTATUS_CODE,CUSTOMER_SUBSTATUS_NAME";
  query+=" from";
  query+=" (SELECT ";
  query+=" 'All' as CUSTOMER_SUBSTATUS_CODE";
  query+=" ,'All' as CUSTOMER_SUBSTATUS_NAME";
  query+=" from dual";
  query+=" UNION";
  query+=" SELECT DISTINCT";
  query+=" CUSTOMER_SUBSTATUS_CODE";
  query+=" ,CUSTOMER_SUBSTATUS_NAME";
  query+=" FROM DIM_CUSTOMER";
  //query+=" where (CUSTOMER_STATUS_CODE in ('1'))";
  query+=" where (CUSTOMER_STATUS_CODE in ("+CustomerStatusParam+"))";
  query+=" group by CUSTOMER_SUBSTATUS_CODE,CUSTOMER_SUBSTATUS_NAME";
  query+=" )CUSTOMER_SUBSTATUS";
  query+=" ORDER BY CUSTOMER_SUBSTATUS_NAME";
		    	 
		    	  //out.print(query);
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
  %>
