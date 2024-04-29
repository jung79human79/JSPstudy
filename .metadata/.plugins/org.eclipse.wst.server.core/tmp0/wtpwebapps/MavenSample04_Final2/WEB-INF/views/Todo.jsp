<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
<%@page import="com.smhrd.model.TodolistVO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>ConNect</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/finalimglogo.png">

    <link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/vendor/owl-carousel/css/owl.theme.default.min.css">
    <link href="assets/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/dragdrop.css" rel="stylesheet">
    
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Sortable/1.14.0/Sortable.min.js" 
         integrity="sha512-zYXldzJsDrNKV+odAwFYiDXV2Cy37cwizT+NkuiPGsa9X1dOz04eHvUWVuxaJ299GvcJT31ug2zO4itXBjFx4w==" 
         crossorigin="anonymous" 
         referrerpolicy="no-referrer">
    </script>




</head>

<body>



    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->


    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <a href="goindex.do" class="brand-logo">
                <img class="logo-abbr" src="assets/images/finalimglogo.png" alt="" width = "40px" height = "40px">
                <img class="logo-compact" src="assets/images/logo-text.png" alt="">
                <img class="brand-title" src="assets/images/finalmainlogo.png" alt="" height = "40px">
            </a>


            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
         <div class="header-content">
            <nav class="navbar navbar-expand">
               <div class="collapse navbar-collapse justify-content-between">
                  <div class="header-left">
                     <div class="search_bar dropdown">
                        <span class="search_icon p-3 c-pointer" data-toggle="dropdown">
                           <i class="mdi mdi-magnify"></i>
                        </span>
                        <div class="dropdown-menu p-0 m-0">
                           <form>
                              <input class="form-control" type="search" placeholder="Search"
                                 aria-label="Search">
                           </form>
                        </div>
                     </div>
                  </div>

                  <ul class="navbar-nav header-right">
                     <li class="nav-item dropdown notification_dropdown"><a
                        class="nav-link" href="Scrap.jsp" role="button"> <!-- data-toggle="dropdown" -->
                           <img class = "scrapright" src="assets/images/scrap.png" height="18px" width="27px">
                           <!--  <div class="pulse-css"></div> -->
                     </a>
               
                     <div>
                     <span style="color:#593BDB; font-weight: 700;">${profile.userId}님</span>
                  </div>
                        </li>
                     <li class="nav-item dropdown header-profile"><a
                        class="nav-link" href="#" role="button" data-toggle="dropdown">
                           <i class="mdi mdi-account"></i>
                     </a>
                        <div class="dropdown-menu dropdown-menu-right">
                           <a href="gopage-mypage.do" class="dropdown-item"> <i
                              class="icon-user"></i> <span class="ml-2">MyPage </span>
                           </a> 
                           <a href="gopage-login.do" class="dropdown-item"> <i
                              class="icon-key"></i> <span class="ml-2">Logout </span>
                           </a>
                        </div></li>
                  </ul>
               </div>
            </nav>
         </div>
      </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="quixnav">
            <div class="quixnav-scroll">
                <ul class="metismenu" id="menu">
                   <li class="nav-label first">MENU</li>
                    <<li><a href="goindex.do" aria-expanded="false"><img
                     src="assets/images/contesttab.png" width="18px" height="18px"
                     style="margin-right: 5px;"><span class="nav-text">CONTEST</span></a></li>
               <li><a href="goQuickView.do" aria-expanded="false"><img
                     src="assets/images/quickviewtab.png" width="18px" height="18px"
                     style="margin-right: 5px;"><span class="nav-text">QUICK
                        VIEW</span></a></li>
               <li><a href="goCalendar.do" aria-expanded="false"><img
                     src="assets/images/calendartab.png" width="18px" height="18px"
                     style="margin-right: 5px;"><span class="nav-text">CALENDAR</span></a></li>
               <li><a href="SelectTodoAll.do" aria-expanded="false"><img
                     src="assets/images/todotab.png" width="18px" height="18px"
                     style="margin-right: 5px;"><span class="nav-text">TO
                        DO</span></a></li>
               <li><a href="goDocument.do" aria-expanded="false"><img
                     src="assets/images/documenttab.png" width="18px" height="18px"
                     style="margin-right: 5px;"><span class="nav-text">DOCUMENT</span></a></li>
                                </ul>
                            </li>  
                            <li><a href="gopage-lock-screen.do">Lock Screen</a></li> -->
                        </ul>
                    </li>
                </ul>
            </div>


        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->
      
        <!--**********************************
            Content body start
        ***********************************-->
     <div class="content-body">
            <!-- row -->
            <div class="ourtodotitle">
               <strong>
                 <form action="todoChageTitle.do" method="post">
                     <h2><input id="showHide" name="title" type="text" placeholder="${TodoTitle}" style="border: none;"></h2>
                     <input id="firstTitle" name="titleName" type="hidden" value="${TodoTitle}">
                   <input type="hidden" type="submit" value="나는 투명이다~">
                 </form>
               </strong>
            </div>
            <div>
                <progress
                    class="progress"
                    id="progress"
                    value="50"
                    min="0"
                    max="100"
                >
                </progress> 

            <div class="ourtodoSelect">
      <form action="goaddTodo.do" method="post">
             <c:forEach items="${TodoOption}" var="title">
                <input type="hidden" name="todoTitle" value="${title}">
             </c:forEach>
             <input type="image" src="assets/images/todoplusimg.png" width="50px" height="50px">
             
             <select class="ourSelect" id="todoTitle" onchange="changeValue()">
            <c:forEach items="${TodoOption}" var="title">
                  <option>${title}</option>
              </c:forEach>
         </select>
          </form>
       
      </div>
      </div>
      <h1>${todoTitle}</h1>
    <div class="ourcontainer">
      <div class="ourcolumn" id="Todo">
         <h1>Todo</h1>
         <c:forEach items="${TodoList}" var="todo">
            <c:if test="${todo.do_Status == '해야 할 일'}">
               <div class="list-group-item" draggable="true">
                     <h2><input type="text" name="content" id="todoContent" value="${todo.content}"></h2>
                     <h5>${todo.do_startDate} ~ ${todo.do_endDate}</h5>
                     <input type="hidden" id="status" value="해야 할 일">
                     <input type="hidden" name="todoTitle" value="${todo.todoTitle}">
                     <input type="button" class="delBtn" value="비동기삭제">
                     <input type="hidden" name="todoId" id="todoIdx" value="${todo.todoIdx}">
               </div>
            </c:if>

         </c:forEach>
      </div>

      <div class="ourcolumn" id="InProgress">
         <h1>InProgress</h1>
         <c:forEach items="${TodoList}" var="todo">
            <c:if test="${todo.do_Status == '진행 중'}">         
               <div class="list-group-item" draggable="true">
                     <h2><input type="text" name="content" id="todoContent" value="${todo.content}"></h2>
                     <h5>${todo.do_startDate} ~ ${todo.do_endDate}</h5>
                     <input type="hidden" id="status" value="진행 중">
                     <input type="hidden" name="todoTitle" value="${todo.todoTitle}">
                     <input type="button" class="delBtn" value="비동기삭제">
                     <input type="hidden" name="todoId" id="todoIdx" value="${todo.todoIdx}">
               </div>
            </c:if>
         </c:forEach>
      </div>

      <div class="ourcolumn" id="Done">
         <h1>Done</h1>
         <c:forEach items="${TodoList}" var="todo">
            <c:if test="${todo.do_Status == '완료'}">
               <div class="list-group-item" draggable="true">
                     <h2><input type="text" name="content" id="todoContent" value="${todo.content}"></h2>
                     <h5>${todo.do_startDate} ~ ${todo.do_endDate}</h5>
                     <input type="hidden" id="status" value="완료">
                     <input type="hidden" name="todoTitle" value="${todo.todoTitle}">
                     <input type="button" class="delBtn" value="비동기삭제">
                     <input type="hidden" name="todoId" id="todoIdx" value="${todo.todoIdx}">
               </div>
            </c:if>
         </c:forEach>
      </div>
   </div>
       
        <!--**********************************
            Content body end
        ***********************************-->


        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright © Designed &amp; Developed by <a href="#" target="_blank">Quixkit</a> 2019</p>
                <p>Distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a></p> 
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->



    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="assets/vendor/global/global.min.js"></script>
    <script src="assets/js/quixnav-init.js"></script>
    <script src="assets/js/custom.min.js"></script>


    <!-- Vectormap -->
    <script src="assets/vendor/raphael/raphael.min.js"></script>
    <script src="assets/vendor/morris/morris.min.js"></script>


    <script src="assets/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="assets/vendor/chart.js/Chart.bundle.min.js"></script>

    <script src="assets/vendor/gaugeJS/dist/gauge.min.js"></script>

    <!--  flot-chart js -->
    <script src="assets/vendor/flot/jquery.flot.js"></script>
    <script src="assets/vendor/flot/jquery.flot.resize.js"></script>

    <!-- Owl Carousel -->
    <script src="assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

    <!-- Counter Up -->
    <script src="assets/vendor/jqvmap/js/jquery.vmap.min.js"></script>
    <script src="assets/vendor/jqvmap/js/jquery.vmap.usa.js"></script>
    <script src="assets/vendor/jquery.counterup/jquery.counterup.min.js"></script>


    <script src="assets/js/dashboard/dashboard-1.js"></script>
    
     <!-- 추가한  스크립트  -->
  
   <script>
   
// TodoEdit keyup 이벤트로 메소드 만들기
   $('#todoContent').on("keyup",function(){
      // 키를 누르고 땔때마다 변경되는 밸류값을 저장
      let txt = $(this).val()
      // 부모태그를 통해서 바깥태그의 idx 값을 가져오기
      let idx = $(this).closest('.list-group-item').find("#todoIdx").val();
      // 변수에 묶어서 보내기위해 담기
      let Edit = {"content" : txt, "idx" : idx}
      
      $.ajax({
           url: "todoContentEdit",
           data: Edit,
           type: 'get',
           success : () =>  {
               console.log("변경사항 적용.");
           },
           error : () => {
               console.error("변경중 오류발생.");
           }
       })
      
   })
   
   
   
   // Tododel 비동기 화 작업 
    $('.delBtn').on("click", function() {
       // 삭제할 항목의 IDX 를 가져온다
        let Idx = $(this).siblings("#todoIdx").val();
        // 변수에 담아준다.
        let delInfo = {"tododelIdx" : Idx};
        // 콘솔에 출력하여 잘 들어가는지 확인한번해준다.
        console.log("삭제할 컨텐츠의 인덱스 번호 >> ",delInfo);
      // DB에서 삭제완료시 현재 보이는 태그를 삭제하기위해 변수에 담아둔다.
        let $listItem = $(this).closest('.list-group-item');
        
        $.ajax({
            url: "tododelAjax",
            data: delInfo,
            type: 'get',
            success : () =>  {
               // 성공시 변수에 담아둔 태그 삭제후 콘솔창에 결과 출력
               $listItem.remove();
                console.log("삭제완료.");
            },
            error : () => {
                console.error("삭제중 오류발생.");
            }
        })
    })
    
   $(document).ready(function() {
       // 페이지가 로드되면 실행될 코드
       $('.list-group-item').show(); // list-group-item 클래스를 가진 모든 요소를 표시

       // select 요소를 가져와서 첫 번째 옵션을 선택
       $('#todoTitle').val($('#todoTitle option:first').val());

       // select 요소가 화면에 보이도록 CSS 속성을 설정
       $('#todoTitle').css('display', 'block');
   });
  
   // 드래그할때마다 DB에 현황을 전달하여 업데이트 하는 기능
  $(".list-group-item").on("dragend",function(){
     
     let nowStatus = $(this).find("#status");
     
     let newStatus = "";
     let columnId = $(this).parent().attr("id");
     
     switch (columnId) {
      case "Todo":
          newStatus = "해야 할 일";
          break;
      case "InProgress":
          newStatus = "진행 중";
          break;
      case "Done":
          newStatus = "완료";
          break;
      default:
          newStatus = "알수없음";
  }
     
     nowStatus.val(newStatus);
     
     
     let status = $(this).find("#status").val();
     let todoIdx = $(this).find("#todoIdx").val();
     // 2)input 데이터 불러오고 변수에 저장
     let sendData = {"status":newStatus
                 ,"todoIdx":todoIdx
                    };
     // 3)console에 출력
     
        console.log(sendData);
  // 4) 비동기 통신을 사용하여 Servlet으로 데이터 전송
  $.ajax({
     // 보내줄 url 
     url : "todoAjax",
     // 보내줄 data
     data : sendData,
     // 전송방식 지정
     type : 'get',
     // 데이터타입
     dataType:'json',
     // 성공했을 때 실행할 함수 지정
     success : (res) => {
        console.log("드래그 연동 성공");
        console.log("변경된 데이터 >> ", res);
     },
     // 실패했을 때 실행할 함수 지정
     error : () => {
        console.log("데이터 전송 실패!");
     }
     
  })
  
  })
  


$(document).ready(function(){
   // select 요소의 변경 이벤트를 감지합니다.
   
   $('#todoTitle').change(function(){
       // 선택된 옵션의 값을 가져옵니다.
       var selectedOption = $(this).val();
       
       // 모든 TodoList 아이템을 숨깁니다.
       $('.list-group-item').hide();
       
       // 각 컬럼에 있는 TodoList 아이템을 확인하며 선택한 옵션에 해당하는 아이템만 보여줍니다.
       $('div.ourcolumn').each(function(){
           // 현재 컬럼 내의 모든 TodoList 아이템을 확인합니다.
           $(this).find('.list-group-item').each(function(){
               // TodoList 아이템의 TodoTitle 값을 가져옵니다.
               var todoTitle = $(this).find('input[name="todoTitle"]').val();
               // 선택한 옵션과 TodoList 아이템의 TodoTitle을 비교하여 일치하는 경우 해당 아이템을 보여줍니다.
               if (todoTitle === selectedOption) {
                   $(this).show();
               }
           });
       });
   });
});
// 처음 todolist에 나오는 todoTitle과 다른 것들 숨기기 (잘모르겠음 수정)
$(document).ready(function() {
    $('div.ourcolumn .list-group-item').each(function() {
        var todoTitle = $(this).find('input[name="todoTitle"]').val();
        var firstTitle = $('#firstTitle').val();
        console.log(firstTitle)
        if (todoTitle !== firstTitle) {
            $(this).hide();
        }
    });
});
// option 선택시 보여지는 제목, 변경할때 보내는 내부의 값을 변경
function changeValue() {
    var selectElement = document.getElementById("todoTitle");
    var selectedText = selectElement.options[selectElement.selectedIndex].text;
    console.log(selectedText);
    // firstTitle 요소의 value 값을 선택된 옵션의 값으로 변경
    document.getElementById("firstTitle").value = selectedText;
    // 사용자에게 보여지는 걸 변경
    document.getElementById("showHide").placeholder = selectedText;
}




   </script>
    <!-- 추가 스크립트 드래그 앤 드롭 -->
     <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="assets/js/dragdrop.js"></script>
   

    <script>
        var h2Element = document.querySelector('.ourcolumn h2');
        var maxLength = 20; // 최대 글자 수
      
        if (h2Element.textContent.length > maxLength) {
          h2Element.textContent = h2Element.textContent.substring(0, maxLength) + '...';
        }
      </script>
   <!-- 스크립트 끝 -->

</body>

</html>