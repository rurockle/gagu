<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../inc/headder.jsp"></jsp:include>

<!-- subpage.css paging.css BSW  -->
<link rel="stylesheet" href="css/subpage.css">
<link rel="stylesheet" href="../css/paging.css">

</head>
<body>
<jsp:include page="../inc/top.jsp"></jsp:include>

<div class="gtco-section">
<div class="gtco-container">
    <div class="row gtco-heading">
    <h2>공지사항</h2>
    </div>
    <div id="board">
        <table id="notice">
            <tbody><tr>
                <th class="tno">NO.</th>
                <th class="ttitle">제목</th>
                <th class="tdate">등록일자</th>
                <th class="tread">조회수</th>
            </tr>
            <!--여기다가 XXX.get() 받아오는 내용 적어주세요!-->
            <tr><!--onclick="이동할 주소" 추가해야합니다-->
                <td class="dno">번호</td>
                <td class="dtitle">제목</td>
                <td class="ddate">등록일</td>
                <td class="dread">조회수</td>
            </tr>
            <!--아래단은 표시해둔 곳 까지 지워주세요!-->
            
            <tr onclick="location.href='content.jsp?num=48'">
                <td class="dno">48</td>
                <td class="dtitle">여기는 </td>
                
                <td class="ddate">2020/07/16</td>
                <td class="dread">68</td>
            </tr>
            
            <tr onclick="location.href='content.jsp?num=47'">
                <td class="dno">47</td>
                <td class="dtitle">아무말입니다</td>
                
                <td class="ddate">2020/07/16</td>
                <td class="dread">41</td>
            </tr>
            
            <tr onclick="location.href='content.jsp?num=46'">
                <td class="dno">46</td>
                <td class="dtitle">기능구현하면</td>
                
                <td class="ddate">2020/07/15</td>
                <td class="dread">137</td>
            </tr>
            
            <tr onclick="location.href='content.jsp?num=45'">
                <td class="dno">45</td>
                <td class="dtitle">지워주세요</td>
               
                <td class="ddate">2020/07/15</td>
                <td class="dread">175</td>
            </tr>
            
            <tr onclick="location.href='content.jsp?num=44'">
                <td class="dno">44</td>
                <td class="dtitle">게시판팀화이팅</td>
                
                <td class="ddate">2020/07/15</td>
                <td class="dread">18</td>
            </tr>
            
            <tr onclick="location.href='content.jsp?num=43'">
                <td class="dno">43</td>
                <td class="dtitle">호호홓</td>
                
                <td class="ddate">2020/07/15</td>
                <td class="dread">60</td>
            </tr>
            
            <tr onclick="location.href='content.jsp?num=42'">
                <td class="dno">42</td>
                <td class="dtitle">뾰로로로로록</td>
               
                <td class="ddate">2020/07/15</td>
                <td class="dread">20</td>
            </tr>
            
            <tr onclick="location.href='content.jsp?num=39'">
                <td class="dno">39</td>
                <td class="dtitle">><</td>
                
                <td class="ddate">2020/07/15</td>
                <td class="dread">15</td>
            </tr>
            <!--여기까지!!!-->
        </tbody></table>
        
        
        <!--페이징처리-->
        <div id="page_control">
            <!-- 이전추가 -->
           
            <a href="#" id="first"></a>
            <a href="#" id="prev"></a>

            <!-- 숫자계산해서 넘기는 부분 -->
            
            <a href="#" class="pagenum" >1</a><!--
            --><a href="#" class="pagenum" >2</a>
            
            <!-- 이후추가 -->
            <a href="#" id="next"></a>
            <a href="#" id="last"></a>
        </div>
                
    
    </div>


</div>
</div>
<jsp:include page="../inc/bottom.jsp"></jsp:include>
</body>
</html>