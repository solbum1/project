<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//qna_board_list.jsp에서 보던 페이지 가져오기
	String current_page = request.getParameter("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function curr_list(){
		location.href="../qlist.do?page=<%=current_page%>";
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
<form action="../qWrite.do" method="post" enctype="multipart/form-data">	<%--파일 보낼 때는 multipart를 써야함 --%>
<table>
	<caption>게시판 글 등록</caption>
	<tr>
		<td class="left">글쓴이</td>
		<td class="right"><input type="text" name="board_name" size="15" required="required"></td>
	</tr>
	<tr>
		<td class="left">제목</td>
		<td class="right"><input type="text" name="board_subject" size="40" required="required"></td>
	</tr>
	<tr>
		<td class="left">내용</td>
		<td class="right"><textarea name="board_content" rows="15" cols="50" required="required"></textarea></td>
	</tr>
	<tr>
		<td class="left">비밀번호</td>
		<td class="right"><input type="password" name="board_pass" required="required"></td>
	</tr>
	<tr>
		<td class="left">파일첨부</td>
		<td class="right"><input class="file_t" type="file" name="board_file" id="board_file"></td>
	</tr>
	<tr>
		<td colspan="2" class="btn_align">
		<input class="btn" type="submit" value="등록">
		<input class="btn" type="button" value="취소" onclick="javascript:history.back()">
		<input class="btn" type="button" value="목록보기" onclick="curr_list()">
		</td>
	</tr>
</table>
</form>
</body>
</html>