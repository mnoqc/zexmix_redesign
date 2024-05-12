<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/nav.css">
    <link rel="stylesheet" href="/css/list.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500;700&display=swap');
        * {font-family: 'Noto Sans KR', sans-serif;}
    </style>
    <c:set var="loginoutLink" value="${ sessionScope.id==null?'/login/login':'/login/logout'  }" />
    <c:set var="loginoutTxt" value="${ sessionScope.id==null?'로그인':'로그아웃'  }" />
    <c:set var="signInTxt" value="${ sessionScope.id==null?'<a href=/login/join>회원가입</a>':''}" />

    <c:set var="outer" value="${fn:substring(param.cate,0,1).equals('G') || fn:substring(param.cate,0,1).equals('K') ?'':'아우터'}"/>
    <c:set var="innerwear" value="${fn:substring(param.cate,0,1).equals('G') || fn:substring(param.cate,0,1).equals('K') ?'':'이너웨어'}"/>
</head>
<body>
<header>
    <div id="t_banner">
        <div class="contents_area">광고 링크</div>
    </div>
    <div class="search_disable"></div>
    <div class="search_pan">
        <img src="/img/icons/m_close_btn_black.png" alt="" class="s_close">
        <h1>검색</h1>
        <form action="" class="search_box">
            <input type="text" name="search" id="search">
            <input type="submit" value="" id="search_icon">
        </form>
        <div class="search_ads">
            <a href="/product/productList?cate=K">
                <img src="/img/banner/menu_banner_kids.jpg" alt="">
            </a>
            <a href="/product/productList?cate=W">
                <img src="/img/banner/menu_banner_review.jpg" alt="">
            </a>
        </div>
    </div>

    <div class="header_wrap">
        <nav class="contents_area">
            <div class="logo_area">
                <div class="ham_btn">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
                <a href="/" class="logo_box">
                    <img src="/img/header_logo_bk.png" alt="logo" class="logo">
                </a>
            </div>
            <div class="category">
                <ul>
                    <li>
                        <a href="/product/productList?cate=O">아울렛</a>
                    </li>
                    <li>
                        <a href="/product/productList?cate=W">우먼</a>
                        <div class="nav_cate_box">
                            <a href="/product/productList?cate=WT">상의</a>
                            <a href="/product/productList?cate=WB">하의</a>
                            <a href="/product/productList?cate=WO">아우터</a>
                            <a href="/product/productList?cate=WI">이너웨어</a>
                        </div>
                    </li>
                    <li>
                        <a href="/product/productList?cate=M">맨즈</a>
                        <div class="nav_cate_box">
                            <a href="/product/productList?cate=MT">상의</a>
                            <a href=/product/productList?cate=MB">하의</a>
                            <a href="/product/productList?cate=MO">아우터</a>
                            <a href="/product/productList?cate=MI">이너웨어</a>
                        </div>
                    </li>
                    <li>
                        <a href="/product/productList?cate=K">키즈</a>
                        <div class="nav_cate_box">
                            <a href="/product/productList?cate=KT">상의</a>
                            <a href="/product/productList?cate=KB">하의</a>
                        </div>
                    </li>
                    <li>
                        <a href="/product/productList?cate=G">골프</a>
                        <div class="nav_cate_box">
                            <a href="/product/productList?cate=GT">상의</a>
                            <a href="/product/productList?cate=GB">하의</a>
                        </div>
                    </li>
                    <li>
                        <a href="/product/productList?cate=1">1+1</a>
                    </li>
                    <li>
                        <a href="/">커뮤니티</a>
                        <div class="nav_cate_box">
                            <a href="/">공지사항</a>
                            <a href="/">리뷰</a>
                        </div>
                    </li>
                </ul>
            </div>
            <ul class="icons">
                <li>
                    <img src="/img/icons/menu_view.png" alt="search icon" class="search_icon_nav">
                </li>
                <li>
                    <a href="/product/cart">
                        <img src="/img/icons/menu_cart.png" alt="">
                    </a>
                </li>
                <li>
                    <a href="/login/login">
                        <img src="/img/icons/menu_mypage.png" alt="">
                    </a>
                    <div class="nav_cate_box sub_box">
                        <a href="${loginoutLink}">${loginoutTxt}</a>
                        ${signInTxt}
                        <a href="">주문조회</a>
                        <a href="">배송조회</a>
                        <a href="">고객센터</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div class="all_menu">
            <div class="contents_area">
                <div class="top_l">
                    <a href="/product/productList?cate=O">아울렛</a>
                    <a href="/product/productList?cate=1">1+1</a>
                </div>
                <ul>
                    <li>
                        <a href="/product/productList?cate=W" class="m_nav_cate">우먼</a>
                        <a href="/product/productList?cate=WT" class="m_nav_cate_more">상의</a>
                        <a href="/product/productList?cate=WB" class="m_nav_cate_more">하의</a>
                        <a href="/product/productList?cate=WO" class="m_nav_cate_more">아우터</a>
                        <a href="/product/productList?cate=WI" class="m_nav_cate_more">이너웨어</a>
                    </li>
                    <li>
                        <a href="/product/productList?cate=M" class="m_nav_cate">맨즈</a>
                        <a href="/product/productList?cate=MT" class="m_nav_cate_more">상의</a>
                        <a href="/product/productList?cate=MB" class="m_nav_cate_more">하의</a>
                        <a href="/product/productList?cate=MO" class="m_nav_cate_more">아우터</a>
                        <a href="/product/productList?cate=MI" class="m_nav_cate_more">이너웨어</a>
                    </li>
                    <li>
                        <a href="/product/productList?cate=K" class="m_nav_cate">키즈</a>
                        <a href="/product/productList?cate=KT" class="m_nav_cate_more">상의</a>
                        <a href="/product/productList?cate=KB" class="m_nav_cate_more">하의</a>
                    </li>
                    <li>
                        <a href="/product/productList?cate=G" class="m_nav_cate">골프</a>
                        <a href="/product/productList?cate=GT" class="m_nav_cate_more">상의</a>
                        <a href="/product/productList?cate=GB" class="m_nav_cate_more">하의</a>
                    </li>
                    <li>
                        <a href="/" class="m_nav_cate">커뮤니티</a>
                        <a href="/" class="m_nav_cate_more">공지사항</a>
                        <a href="/" class="m_nav_cate_more">리뷰</a>
                    </li>
                    <li class="m_mypage">
                        <a href="#none" class="m_nav_cate">마이페이지</a>
                        <a href="/login" class="m_nav_cate_more">로그인</a>
                        <a href="/join" class="m_nav_cate_more">회원가입</a>
                        <a href="" class="m_nav_cate_more">주문조회</a>
                        <a href="" class="m_nav_cate_more">배송조회</a>
                        <a href="" class="m_nav_cate_more">고객센터</a>
                    </li>
                </ul>
                <div class="ads">
                    <a href="/product/productList?cate=K">
                        <img src="/img/banner/menu_banner_kids.jpg" alt="">
                    </a>
                    <a href="/product/productList?cate=W">
                        <img src="/img/banner/menu_banner_review.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="main">
    <!-- 상품리스트 메인 -->
    <div class="title">
        <c:if test="${fn:substring(param.cate,0,1)!='1' && fn:substring(param.cate,0,1)!='O' }" >
            <a href="/product/productList?cate=${fn:substring(param.cate,0,1)}">전체</a>
            <a href="/product/productList?cate=${fn:substring(param.cate,0,1)}T">상의</a>
            <a href="/product/productList?cate=${fn:substring(param.cate,0,1)}B">하의</a>
        </c:if>
        <c:if test="${fn:substring(param.cate,0,1)=='W' || fn:substring(param.cate,0,1)=='M' }" >
            <a href="/product/productList?cate=${fn:substring(param.cate,0,1)}O">
                ${outer}
            </a>
            <a href="/product/productList?cate=${fn:substring(param.cate,0,1)}I">
                ${innerwear}
            </a>
        </c:if>
    </div>

    <div id="content_area2">
        <div id="wrap">
            <div class="sort_box">
                <div class="sort_result">총 ${product_cnt}개의 상품이 있습니다.</div>
                <div class="sort_form">
                    <form action="/product/productListSort" id="frm" method="get">
                        <select id="sort" name="sort" onchange="listSort()">
                            <option value="" disabled <c:if test="${empty param.sort}">selected</c:if>>상품정렬</option>
                            <option value="new"
                                    <c:if test="${param.sort eq 'new'}">selected</c:if>
                                        >신상품순</option>
                            <option value="sale"
                                    <c:if test="${param.sort eq 'sale'}">selected</c:if>
                            >인기순</option>
                            <option value="low"
                                    <c:if test="${param.sort eq 'low'}">selected</c:if>
                            >낮은 가격순</option>
                            <option value="high"
                                    <c:if test="${param.sort eq 'high'}">selected</c:if>
                            >높은 가격순</option>
                        </select>
                        <input type="hidden" value="${param.cate}" name="cate">
                    </form>
                </div>
            </div>
        </div>

        <ul class="product_list">
            <c:forEach var="productListDto" items="${list}" varStatus="status">
                    <li class="pl_item" >
                        <div class="img_box">
                            <a href="/product/productDetail?p_serialNo=${productListDto.p_serialNo}">
                                <img src="${productListDto.imgSrc}">

                            </a>
                        </div>
                        <div class="txt_box">
                            <div class="txt_box color">
                                <div class="serialNo">${productListDto.p_serialNo}</div>
                                <div class="reviewCnt">리뷰 ${productListDto.reviewCnt}</div>
                            </div>
                            <div class="product">${productListDto.p_product}</div>
                            <div class="price">
                                <fmt:formatNumber value="${productListDto.p_price}" pattern="#,###"/>원
                            </div>
                        </div>
                    </li>
            </c:forEach>
            </ul>
    </div>
    </div>
</div>

<footer class="footer">
    <div class="contents_area">
        <div class="footer_L">
            <div class="footer_title">
                <a href="#" class="logo_box">
                    <img src="/img/header_logo_bk.png" alt="logo" class="logo">
                </a>
                <span>애슬레저 1위, 브랜드 고객충성도 애슬레저룩 부문 2년 연속 대상 [2021. 2022]</span>
            </div>
            <div class="info">
                <ul class="footer_menu">
                    <li><a href="">브랜드 스토리</a></li>
                    <li><a href="">회사 소개</a></li>
                    <li><a href="">이용 약관</a></li>
                    <li><a href="">개인정보처리방침</a></li>
                    <li><a href="">고객센터</a></li>
                </ul>
                <ul class="footer_menu">
                    <li>사업자명 : (주)브랜드엑스코퍼레이션</li>
                    <li> 대표자명 : 이수연,강민준</li>
                    <li>팩스 : 02-2179-9410</li>
                </ul>
                <ul class="footer_menu">
                    <li>주소 : 서울시 성동구 뚝섬로1길 63 영창디지탈타워 B2F,4F,6F,12F,16F</li>
                    <li>대표전화 : 1661-2811</li>
                </ul>
                <ul class="footer_menu">
                    <li>반품주소지 : 경기도 의정부시 산단로98번길 65 3층 젝시믹스</li>
                </ul>
                <ul class="footer_menu">
                    <li>사업자등록번호 : 550-86-00867 [사업자정보확인] </li>
                    <li>통신판매업신고번호 : 2019-서울성동-01148</li>
                </ul>
                <ul class="footer_menu">
                    <li>제안/제휴문의 : 온라인 brx_brmkt@brandxcorp.com / 오프라인 brxoffline@brandxcorp.com / 해외 xexybiz@brandxcorp.com</li>
                </ul>
                <ul class="footer_menu">
                    <li>개인정보보호책임자 : 강교혁 (asitakak@brandxcorp.com)</li>
                </ul>
                <div class="copyright">
                    <ul class="footer_menu">
                        <li>젝시믹스 마케팅은 <a href="">이루다마케팅</a>이 함께합니다.</li>
                        <li>호스팅사 : (주)코리아센터</li>
                    </ul>
                    <ul class="footer_menu">
                        <li>Copyright 2015 Xexymix All Rights Reserved.</li>
                    </ul>
                </div>
            </div>

        </div>
        <div class="footer_R">
            <ul class="R_L">
                <li>1611-2811</li>
                <li>평일   10:00 - 17:00</li>
                <li>점심   12:30 - 14:00</li>
                <li>휴일   토/일/공휴일</li>
                <li><a href="">고객만족센터 <span>></span></a></li>
            </ul>
            <ul class="R_M">
                <li>BANK INFO</li>
                <li>우리은행   1005-703-294024</li>
                <li>국민은행   431801-01-213327</li>
                <li>농       협   301-0259-9190-41</li>
                <li>(주)브랜드엑스코퍼레이션</li>
                <li>입금자명 불일치시 자동연동이 되지않습니다.</li>
                <li>고객센터 또는 Q&A 문의주세요.</li>
            </ul>
            <ul class="R_R">
                <li>SHOP MENU</li>
                <li><a href="">공지사항</a></li>
                <li><a href="">회원정책</a></li>
                <li><a href="">전국매장안내</a></li>
                <li><a href="">강사회원</a></li>
                <li><a href="">기업회원</a></li>
            </ul>
            <div class="B_R">
                <div class="con"></div>
                <div>젝시믹스는 정보보호 관리체계 인증을 받은 안전한 쇼핑몰입니다.</div>
            </div>
        </div>
        <div class="footer_B">
            <div class="B_L">고객님은 안전거래를 위해 현금 등으로 결제하실 때 저희 쇼핑몰에서 가입한 토스페이먼츠(02-006-00059)의 구매안전서비스를 이용하실 수 있습니다. [서비스가입사실확인]</div>

        </div>
    </div>
</footer>

<script src="/js/list.js?ver=1"></script>
<script src="/js/nav.js?ver=1"></script>
</body>
</html>