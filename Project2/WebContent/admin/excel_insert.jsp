<%@page import="member.model.LoginDAO"%>
<%@page import="member.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.io.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="jxl.*" %>  
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%   
String savePath = application.getRealPath("upload"); // 저장할 디렉토리   
 System.out.print(savePath);
 int sizeLimit = 30 * 1024 * 1024 ; // 용량제한   
 String formName = "";   
 String fileName = "";   
 Vector vFileName = new Vector();   
 Vector vFileSize = new Vector();   
 String[] aFileName = null;   
 String[] aFileSize = null;   
 long fileSize = 0;   
 
 MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "euc-kr", new DefaultFileRenamePolicy());   
 
 Enumeration formNames = multi.getFileNames();    
 
 while (formNames.hasMoreElements()) 
 {    
  formName = (String)formNames.nextElement();    
  fileName = multi.getFilesystemName(formName);    
  
  if(fileName != null)  // 파일이 업로드 되면
  {      
   fileSize = multi.getFile(formName).length();   
   vFileName.addElement(fileName);   
      vFileSize.addElement(String.valueOf(fileSize));    
  }    
 
 }   
    
 aFileName = (String[])vFileName.toArray(new String[vFileName.size()]);   
 aFileSize = (String[])vFileSize.toArray(new String[vFileSize.size()]);   
%>  
  
<%   
Workbook workbook = Workbook.getWorkbook(new File(savePath + "/" + fileName));    
Sheet sheet = workbook.getSheet(0);   
 
 int col = sheet.getColumns();  // 시트의 컬럼의 수를 반환한다.    
 int row = sheet.getRows();   // 시트의 행의 수를 반환한다.  
 System.out.println("row:"+row+"col:"+col);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 
<title>Insert title here</title>
</head>
<body>



<%
	
                                                      
 
//      Record를 읽어 배열로 저장
  
     for (int i = 2 ; i < row; i++)            // 수동 : 테이블 형태의 방식
  {     
      String id  = sheet.getCell(0,i).getContents(); //첫번째 인자가 열 값, 두번째 인자값이 행 값..!
      String pass  = sheet.getCell(1,i).getContents();  
      String name  = sheet.getCell(2,i).getContents(); 
      String dept  = sheet.getCell(3,i).getContents();
      String semester = sheet.getCell(4,i).getContents();
      String tel  = sheet.getCell(5,i).getContents();
      String email  = sheet.getCell(6,i).getContents();
      String addr  = sheet.getCell(7,i).getContents();
      String job  = sheet.getCell(8,i).getContents();
      String status  = sheet.getCell(9,i).getContents();
      String total = sheet.getCell(10,i).getContents();
      String t_credit  =sheet.getCell(11,i).getContents();
     	System.out.println(id+","+pass+","+name+","+dept+","+semester+","+tel+","+email+","+addr+","+job+","+status+","+total+","+t_credit);
      MemberDTO dto = new MemberDTO(id,dept,name,email,tel,addr,Integer.parseInt(semester),status,job,pass,Integer.parseInt(total),Integer.parseInt(t_credit));
      LoginDAO dao = new LoginDAO();
      dao.insert(dto);
 }
 
%>
<script language=javascript>
 alert("등록이 완료되었습니다.");
 history.back();
</script>
 

</body>
</html>