<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//입력 변수
	String	type				= "view";	//view, insert, modify
	String	id					= "1";
	String	passwd				= "1";
	String	name				= "1";
	String	zip1				= "1";
	String	zip2				= "1";
	String	addr1				= "1";
	String	addr2				= "1";
	String	tel1				= "1";
	String	tel2				= "1";
	String	age					= "1";
	String	email				= "1";
	String	gender				= "male";

	//출력 변수
	/* 		id					= "";
			passwd				= "";
			name				= "";
			zip1				= "";
			zip2				= "";
			addr1				= "";
			addr2				= "";
			tel1				= "";
			tel2				= "";
			age					= "";
			email				= "";
			gender				= "";
			 */
	//CSS
	/*
	left
	right
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script>
	function zip_chk(){
		location.href="../qZip.do";
	}
	
	function register_check(form){
		
		if(form.id.value.length==0){
			alert('아이디를 확인해 주세요');
			form.id.focus();
			return;
		}else if(form.passwd.value.length==0){
			alert('비밀번호를 확인해 주세요');
			form.passwd.focus();
			return;
		}else if(form.name.value.length==0){
			alert('이름을 확인해 주세요');
			form.name.focus();
			return;
		}else if(form.zip1.value.length==0){
			alert('주소를 확인해 주세요');
			form.zip1.focus();
			return;
		}else if(form.zip2.value.length==0){
			alert('주소를 확인해 주세요');
			form.zip2.focus();
			return;
		}else if(form.addr1.value.length==0){
			alert('주소를 확인해 주세요');
			form.addr1.focus();
			return;
		}else if(form.addr2.value.length==0){
			alert('주소를 확인해 주세요');
			form.addr2.focus();
			return;
		}else if(form.tel1.value.length==0){
			alert('연락처를 확인해 주세요');
			form.tel1.focus();
			return;
		}else if(form.tel2.value.length==0){
			alert('연락처를 확인해 주세요');
			form.tel2.focus();
			return;
		}else if(form.age.value.length==0){
			alert('나이를 확인해 주세요');
			form.age.focus();
			return;
		}else if(form.email.value.length==0){
			alert('이메일을 확인해 주세요');
			form.email.focus();
			return;
		}else if(form.gender.value.length==0){
			alert('성별을 확인해 주세요');
			form.gender.focus();
			return;
		}else{
			form.submit();
		}
	}
</script>
</head>
<body>
<form action="regist.do" method="post">
<table>
	<%	if(type.equals("view")){ %>
		<caption>회원 정보 보기</caption>
	<%	}else if(type.equals("modify")){ %>
		<caption>회원 정보 수정</caption>
	<%	}else{ %>
		<caption>회원가입</caption>
	<%	} %>	
	<tr>
		<td><label>아이디</label>
		<td><input type="text" name="id" placeholder="ID"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=id %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=id %>
		<%	}else{ %>
		
		<%	} %>
		></td>
	</tr>
	<tr>
		<td><label>비밀번호</label>
		<td><input type="password" name="passwd" placeholder="비밀번호"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=passwd %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=passwd %>
		<%	}else{ %>
		
		<%	} %>
		></td>
	</tr>
	<tr>
		<td><label>이름</label>
		<td><input type="text" name="name" placeholder="이름"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=name %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=name %>
		<%	}else{ %>
		
		<%	} %>
		></td>
	</tr>
	<tr>
		<td rowspan="2"><label>우편번호</label>
		<td>
		<input type="text" name="zip1"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=zip1 %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=zip1 %>
		<%	}else{ %>
		
		<%	} %>
		>-<input type="text" name="zip2"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=zip2 %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=zip2 %>
		<%	}else{ %>
		
		<%	} %>
		>
		<input type="button" class="zip_btn" value="우편번호찾기" onclick="zip_chk()">
		</td>
	</tr>
	<tr>
		<td><input type="text" name="addr1"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=addr1 %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=addr1 %>
		<%	}else{ %>
		
		<%	} %>
		></td>
	</tr>
	<tr>
		<td><label>상세주소</label>
		<td><input type="text" name="addr2" placeholder="상세주소"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=addr2 %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=addr2 %>
		<%	}else{ %>
		
		<%	} %>
		></td>
	</tr>
	<tr>
		<td><label>연락처1</label>
		<td><input type="text" name="tel1" placeholder="연락처1"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=tel1 %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=tel1 %>
		<%	}else{ %>
		
		<%	} %>
		></td>
	</tr>
	<tr>
		<td><label>연락처2</label>
		<td><input type="text" name="tel2" placeholder="연락처2"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=tel2 %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=tel2 %>
		<%	}else{ %>
		
		<%	} %>
		></td>
	</tr>
	<tr>
		<td><label>나이</label>
		<td><input type="text" name="age" placeholder="나이"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=age %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=age %>
		<%	}else{ %>
		
		<%	} %>
		></td>
	</tr>
	<tr>
		<td><label>이메일</label>
		<td><input type="email" name="email" placeholder="이메일"
		<%	if(type.equals("view")){ %>
		readonly="readonly"value=<%=email %>
		<%	}else if(type.equals("modify")){ %>
		value=<%=email %>
		<%	}else{ %>
		
		<%	} %>
		></td>
	</tr>
	<tr>
		<td><label>성별</label>
		<td>
		<%	if(type.equals("view")){
				if(gender.equals("male")){%>
					<input type="radio" name="gender" value="남"checked="checked" >남
					<input type="radio" name="gender" value="여"disabled="disabled">여
		<%		}else{%>
					<input type="radio" name="gender" value="남"disabled="disabled">남
					<input type="radio" name="gender" value="여"checked="checked">여
		<%		}
			}else if(type.equals("modify")){ 
				if(gender.equals("male")){%>
					<input type="radio" name="gender" value="남"checked="checked">남
					<input type="radio" name="gender" value="여">여
		<%		}else{%>
					<input type="radio" name="gender" value="남">남
					<input type="radio" name="gender" value="여"checked="checked">여
		<%		}	
			}else{ %>
			<input type="radio" name="gender" value="남">남
			<input type="radio" name="gender" value="여">여
		<%	} %>
			
		</td>
	</tr>
	<tr>
		<td colspan="2" class="btn_align">
			<input type="button" value="전송" onclick="register_check(this.form)">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>
</body>
</html>