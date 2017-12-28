<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="style/style2.css" rel="stylesheet">
	<script>
		function search(){
			if(searchform.searchword.value==""){
				alert('검색어를 넣으세요');
				searchform.searchword.focus();
				return;
			}
			searchform.submit();
		}
	</script>
</head>
<body>
<%
		//Servlet에서 담아놓은 정보 가져오기
		
		
%>
		<table class="top_table">
			<caption>게시판 목록</caption>
			<tr class="tr_title">
				<th width="40px">번호</th>
				<th width="300px">제목</th>
				<th width="80px">작성자</th>
				<th width="100px">날짜</th>
				<th width="50px">조회수</th>
			</tr>
<%		for(BoardVO Vo:vo){	%>
			<tr class="tr_top">
				<%-- <td><%=Vo.getBoard_num()%></td> --%>
				<td class="td_align"><%=id_num %></td>
				<td align="left"><a href="qHitUpdate.do?board_num=<%=Vo.getBoard_num()%>&page=<%=current_page%>">
				<%-- 이건 내가 한 것
				<%int re_lev = Vo.getBoard_re_lev();
				while(re_lev>0){
					out.print("&nbsp;");
					re_lev=re_lev-1;}%>
				--%>
				<%
					if(Vo.getBoard_re_lev() != 0){
						for(int j=0;j<=Vo.getBoard_re_lev()*2;j++){	//곱하기 1을 한 이유는 나중에 간격 조정하기 쉽게 하려고
							out.print("&nbsp;");
						}
					}
				%>
					
				<%=Vo.getBoard_subject() %></a></td>	
									<%--제목에 board_num이 몇번인지 링크 걸기, a 태그는 get방식임, 연달아 보내고 싶으면 &을 씀 --%>
									<%--board_num으로 새로 db를 갔다와야함 --%>
				<td><%=Vo.getBoard_name() %></td>
				<td><%=Vo.getBoard_date() %></td>
				<td><%=Vo.getBoard_readcount() %></td>
			</tr>
<%
	//글번호 감소
	id_num--;
}%>
<tr>
	<td colspan="5">
		<%
		//if(searchword==null){
			//[이전] 나오게 하기
			if(current_page<=1){
				out.print("");
			}else{
				out.print("<a href=qlist.do?page="+(current_page-1)+">");
				out.print("[이전]</a>");
			}
		
			for(int i=start_page;i<=end_page;i++){
				if(i==current_page){
					out.print(" "+i+" ");
				}else{
					out.print(" <a href=qlist.do?page="+i+">"+i+"</a> ");
				}
			}
			
			if(current_page>=total_page){
				out.print("");
			}else{
				out.print("<a href=qlist.do?page="+(current_page+1)+">");
				out.print("[다음]</a>");
			}
		//}else{
			
		//}
		%>
	</td>
</tr>
</table>
<table	class="bottom_table">
			<tr>
				<td colspan="5" class="td_align">
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td colspan="5" class="btn_align">
					<form action="qSearch.do" method="post" name="searchform">
						<select class="btn" name="searchCondition">
							<option value="board_name">작성자</option>
							<option value="board_subject">제목</option>
							<option value="board_content">글내용</option>
						</select>
						<input type="text" class="btn" size="10" name="searchword" required="required"/>
						<input type="button" class="btn" value="검색" onclick="search()">
					</form>
				</td>
				<td align="right">
				<a href="board/qna_board_write.jsp?page=<%=current_page%>">[글쓰기]</a>
				</td>
			</tr>
</table>
</body>
</html>