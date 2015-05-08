<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%
  tv.tvdirect.service.connectionJNDI jndi = new tv.tvdirect.service.connectionJNDI();
  
        
		  String  query=" SELECT STARTTIME,FINISHTIME FROM JOBLOG";
		  query+="  WHERE JOBNAME='Segment_Report'";
		  
    	  String columns="1,2";
          jndi.selectByIndexDwh(query, columns);
          out.println(jndi.getData());
        

//out.print("[[\"process_empty\"]]");
  %>
