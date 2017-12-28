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
<script>
	function list_submit(){
		location.href="qlist.do?page=<%=current_page%>";	
	}
	function reply_list(){
		location.href="qReplyView.do?board_num=<%=vo.getBoard_num()%>&page=<%=current_page%>";
	}
	function modify_list(){
		location.href="qModify.do?board_num=<%=vo.getBoard_num()%>&page=<%=current_page%>";
	}
	function delete_list(){
		location.href="board/qna_board_pwdCheck.jsp?board_num=<%=vo.getBoard_num()%>&page=<%=current_page%>";
	}
</script>
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
<table>
	<caption>내용보기</caption>
	<tr>
		<td class="left">제목</td>
		<td class="right"><input type="text" name="board_name" size="20" value=<%=vo.getBoard_subject() %> readonly="readonly"></td>
	</tr>
	<tr>
		<td class="left">작성자</td>
		<td class="right"><%=vo.getBoard_name() %></td>
	</tr>
	<tr>
		<td class="left">내용</td>
		<td class="right"><textarea name="board_content" rows="15" cols="50" readonly="readonly"><%=vo.getBoard_content() %></textarea></td>
	</tr>
	<tr>
		<td class="left">파일첨부</td>
		<td class="right">
		<%
		String fileName = vo.getBoard_file();
		
		if(fileName != null){
			fileName = new String(fileName.getBytes(),"UTF-8");	//파일 이름이 한글일 경우 깨지지 않도록 하기위함
		%>
		<a href="board/file_down.jsp?file_name=<%=fileName%>"><%=fileName %></a>
		<%}else{ %>
		파일 없음
		<%} %>
		</td>
	</tr>
	<tr>
		<td colspan="2" class="btn_align">
		<input class="btn" type="button" value="답변" onclick="reply_list()">
		<input class="btn" type="button" value="수정" onclick="modify_list()">
		<input class="btn" type="button" value="삭제" onclick="delete_list()">
		<input class="btn" type="button" value="목록" onclick="list_submit()">
		</td>
	</tr>
</table>
</body>
</html>