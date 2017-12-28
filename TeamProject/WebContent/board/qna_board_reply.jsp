<%@page import="java.util.Vector"%>
<%@page import="board.dao.BoardDAO"%>
<%@page import="board.vo.BoardVO" %>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardVO vo = (BoardVO) request.getAttribute("vo");
	//qna_board_list.jsp에서 보던 페이지 가져오기
	String current_page = request.getParameter("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table,tr,td{
		border:1px solid white;		 
	}
	table{		
		width:600px;
		margin-left: auto;
    	margin-right: auto;
		padding:10px;		
	}
	td.left{
		width:100px;
		background-color: #FFBB00;
		text-align:center;
	}
	td.right{
		background-color: #FAECC5;
	}
	td.btn_align{
		background-color: #FFBB00;
		text-align:center;
	}
	input.btn{
		text-align:center;
		height:30px;
	}
	input.file_t{
		height:25px;
	}
</style>
</head>
<body>
<form action="qReply.do?page=<%=current_page%>" method="post" enctype="multipart/form-data">	<%--파일 보낼 때는 multipart를 써야함 --%>
<table>
	<caption>답글달기</caption>
	<tr>
		<td class="left">제목</td>
		<td class="right"><input type="text" name="board_subject" size="15" value="Re: <%=vo.getBoard_subject() %>" required="required"></td>
	</tr>
	<tr>
		<td class="left">작성자</td>
		<td class="right"><input type="text" name="board_name" size="15" required="required"></td>
	</tr>
	<tr>
		<td class="left">내용</td>
		<td class="right"><textarea name="board_content" rows="15" cols="50" required="required">Re: <%=vo.getBoard_content() %></textarea></td>
	</tr>
	<tr>
		<td class="left">파일첨부</td>
		<td class="right"><input class="file_t" type="file" name="board_file" id="board_file"></td>
	</tr>
	<tr>
		<td class="left">비밀번호</td>
		<td class="right"><input type="password" name="board_pass" required="required"></td>
	</tr>
	<tr>
		<td colspan="2" class="btn_align">
		<input class="btn" type="submit" value="등록">
		<input class="btn" type="button" value="취소" onclick="javascript:history.back()">
		</td>
	</tr>
</table>
<input type="hidden" name="board_num" value="<%=vo.getBoard_num() %>">
<input type="hidden" name="board_re_ref" value="<%=vo.getBoard_re_ref() %>">
<input type="hidden" name="board_re_seq" value="<%=vo.getBoard_re_seq() %>">
<input type="hidden" name="board_re_lev" value="<%=vo.getBoard_re_lev() %>">
</form>
</body>
</html>