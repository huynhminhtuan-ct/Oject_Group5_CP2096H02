
<%@page import="entities.Artists"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="entities.Songs"%>
<%@page import="entities.Songs_"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
    function openCity(evt, cityName) {
        var i, x, tablinks;
        x = document.getElementsByClassName("city");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < x.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " w3-red";

    }
    function openCity1(evt, cityName1) {
        var i, x, tablinks;
        x = document.getElementsByClassName("city1");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink1");
        for (i = 0; i < x.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" w3-red rr", "");
        }
        document.getElementById(cityName1).style.display = "block";
        evt.currentTarget.className += " w3-red rr";

    }
    document.getElementById("an").style.display = "none";
    function hien() {
        document.getElementById("loiBaiHat").style.height = "1500px";
        document.getElementById("an").style.display = "block";
        document.getElementById("hien").style.display = "none";
    }
    function an() {
        document.getElementById("loiBaiHat").style.height = "500px";
        document.getElementById("hien").style.display = "block";
        document.getElementById("an").style.display = "none";
    }

</script>
<style>
    ::-webkit-scrollbar {
        width: 5px;
    }
    ::-webkit-scrollbar-track {
        background: #f1f1f1; 
    }
    ::-webkit-scrollbar-thumb {
        background: #888;
        border-radius:10px;
    }
    ::-webkit-scrollbar-thumb:hover {
        background: #555; 
    }

    .chiTietAnhMusic{
        border-radius: 20px;
    }
    .chiTietAnhCS{
        margin-left:45%;
    }
    .anhCS{
        margin-left:80%;top:100%;
        padding-top:-100px;
    }
    .chiTietAnhCS{
        width:280px;
        border-radius:100%;
        margin-top: 15px
    }
    .row::after {
        content: "";
        clear: both;
        display: table;
    }
    .play{
        border-radius:25px;
        padding:7px 30px;
    }
    .btn-play{
        border-radius:25px;
        padding:7px 30px;
    }
    .btn-order{
        border-radius:25px;
        padding:7px 30px;
    }
    .play:hover{
        background-color: #888;

    }
    .price{
        background-color:#e07334;
        border-radius:25px;
        padding:7px 30px;
    }
    .ndPlay:hover{
        color:#ffffff;
    }
    .thongTin {
        overflow: hidden;
        text-overflow: ellipsis;
        width: 100%;
        height:70px
    }
    .thongTin:hover { 
        transition: 0.8s;
        overflow: visible;
        white-space: pre-line;
        width:100%;
        height:200px;
        overflow-y:scroll; 
    }
    .plays{
        padding-top:15px;
    }
    .w3-container{
        margin-bottom:30px
    }
    .music{
        margin-top:10px
    }
    .gioiThieu{
        background-color:#888
    }
    .thuocTinh:hover{
        font-size:105%;
    }
    .bodyMusic{
        margin-top:20px
    }
    div[name="dsMusicNoiBat"]{
        overflow-y: hidden;
        height:250px;
    }
    div[name="dsMusicNoiBat"]:hover{
        overflow-y:scroll;
        height:250px;
    }
    .loiBaiHat{
        overflow: visible;
        white-space: pre-line;

    }
    .w3-bar{
        border-radius:25px;
        background-color:#888;
        width:77%;
        height:40px

    }
    button[name="chiMuc"]{
        border-radius:25px;
        width:100px;
        height:40px;

    }
    div[name="dsMusic"]{
        height:1100px;
        overflow-y:hidden; 
    }

    div[name="dsMusic"]:hover{
        height:1100px;
        overflow-y:scroll; 
    }
    .thanhCuon{
        overflow-y:hidden; 
        height:500px;
    }
    .thanhCuon:hover{
        height: 1000px;
        overflow-y:scroll; 
    }
    .dsRoiY{
        overflow-y:hidden;
        height:500px;
    }
    .dsRoiY:hover{
        overflow-y:scroll; 
    }

    .keDoc{
        padding-left:10px;
        border-left: 2px solid #cccccc;
    }
    .anHien{
        border:0;
        background:none;
        color:#ffffff
    }
    .itemsMusic:hover{
        background-color:#636768;
        box-shadow: 0px 0px 5px;
    }
    td{
        border: none;
    }
    table{
        border: 0px ;
        border-collapse: collapse;

    }
    .chart-singer:hover{
        color:#f73943;
    }
    .loiBaiHat{
        overflow-y:hidden;
        height:200px;
    }
    #playList{
        height:1060px;
        overflow-y:hidden;
    }
    #playList:hover{
        height:1060px;
        overflow-y: scroll;
    }
    .chart-title:hover{
        color: red;
    }
</style>
<script>
    var request;
    window.onload = function ()
    {
        $.ajax({
            url: '${pageContext.request.contextPath}/SongDetail',
            type: 'GET',
            dataType: 'html',
            data: {
                addAlbum: 'all'
            }, success: function (data) {
                var d = document.getElementById("Paris");
                d.innerHTML = data;
            }, error: function (e) {
                alert(e);
            }
        })
    };

    function add(i) {
        $.ajax({
            url: '${pageContext.request.contextPath}/SongDetail',
            type: 'GET',
            dataType: 'html',
            data: {
                addAlbum: i
            }, success: function (data) {
                var d = document.getElementById("Paris");
                d.innerHTML = data;
                alert("You have added a post to favorites????????????");
            }, error: function (e) {
                alert(e);
            }
        })
    }
</script>

<div class="gioiThieu" >
    <div class="w3-row">
        <div class="w3-col  w3-container" style="width:5%"></div>
        <div class="w3-col  w3-container" style="width:60%">
            <div class="tieuDe">
                <h1>Hisau JJ </h1>
                <p class="thongTin">
                    V?? Ki???u V??n sinh ra trong gia ????nh kh??ng c?? ai theo ngh??? thu???t, v???i n??ng khi???u b???c ph??t t??? nh???. 5 tu???i V?? Ki???u V??n ???? tham gia ?????i ca m??a v?? c??c ho???t ?????ng c???a ????i truy???n h??nh nh?? ???V?????n ??m nh???c??? ???B??p Sen H???ng??? HTV, VTV.

                    Tr?????c khi ra m???t album solo ?????u tay c???a m??nh, V?? Ki???u V??n t???ng tham gia nh??m nh???c Ohlala, c??ng c??c th??nh vi??n c???a nh??m nh???c ??i bi???u di???n tr??n kh???p c??c s??n kh???u ca nh???c ??? S??i G??n.

                    Sau th???i gian chu???n b??? V?? Ki???u V??n ???? ph??t h??nh album solo ?????u tay v???i t??n ???Em L?? ????? Y??u???, ca kh??c ???? ???????c kh??n gi??? ????n nh???n n???ng nhi???t.

                    Sau album ?????u tay, V?? Ki???u V??n cho ra m???t album th??? hai mang t??n "T??? Th????ng L???y M??nh", m???t s??? ca kh??c trong album n??y ???????c ph???i l???i theo phong c??ch EDM, v???i giai ??i???u s??i ?????ng ph?? h???p v???i d??ng nh???c th??? tr?????ng hi???n t???i.

                    Gi???a n??m 2016, V?? Ki???u V??n h???p t??c v???i nam ca s?? H??n Th??i T?? trong MV "Sau th????ng l?? ??au".

                    MV n??y ???????c ph??t h??nh v??o cu???i th??ng 9 n??m 2016, ????y l?? ca kh??c do ca nh???c s?? Kh???i Phong c???a ban nh???c Tam H??? s??ng t??c. M???c d??, c???p ????i n??y ???? quen bi???t t??? l??u nh??ng ????y l?? l???n ????u ti??n h??? c??ng tham gia m???t MV ??m nh???c, ch??nh v?? v???y c???p ????i n??y ???? mang ?????n nhi???u th?? v??? cho kh??n gi??? trong s???n ph???m ??m nh???c m???i n??y.

                    Hi???n t???i V?? Ki???u V??n ??ang theo h???c nh???c vi???n TP H??? Ch?? Minh Khoa Thanh Nh???c.

                    C??c album ???? ph??t h??nh:
                    Em L?? ????? Y??u (2014)
                    T??? Th????ng L???y M??nh (2016)
                    T??nh Em Chung T??nh (2016)
                    Sau Th????ng L?? ??au (2016)
                    ??i R???i M???i Th????ng (Single) (2017)
                    Y??u ??i R???i ??au (2017)

                    C??c b??i h??t th??nh c??ng c???a c??:
                    Y??u L?? Ph???i Th????ng (Version 2).
                    Em L?? ????? Y??u.
                    T??? Th????ng L???y M??nh.
                </p>
            </div>
            <div class="plays">
                <%
                    //l???y fais tr??? id song khac da mua 
                    String idSongOrder = null;
                    if (session.getAttribute("userID") != null) {
                        idSongOrder = String.valueOf(request.getAttribute("idSongOrder"));
                    } else {
                        idSongOrder = null;
                    }
                    Songs song = (Songs) request.getAttribute("songDetails");
                    if (idSongOrder.indexOf(song.getSongID().toString()) != -1) {
                %>
                <button type="button" data-src="music2.mp3 " class="btn-play">
                    <a href="#" data-src="music2.mp3 " class="play">
                        <b class="ndPlay"><i class='bx bx-play'></i>Play Music</b>
                    </a>
                </button>
                <%
                } else {
                    if (song.getPrice() != null) {
                %>
                <button type="button" data-src="<% out.print(song.getPath()); %>" class="btn-order">
                    <a href="${pageContext.request.contextPath}/Order?idSong=<% out.print(song.getSongID()); %>"  class="price">
                        <b class="">Buy <% out.print(song.getPrice()); %>$</b>    
                    </a> 
                </button>

                <%
                } else {
                    //duong dan nam o <% out.print(song.getPath());
                %>
                <button type="button" data-src="music2.mp3 " class="btn-play">
                    <a href="#" data-src="music2.mp3 " class="play">
                        <b class="ndPlay"><i class='bx bx-play'></i>Play Music</b>
                    </a>
                </button>
                <%
                        }

                    }
                %>
            </div>
            <div class="music">
                <%
                    String soceImg = song.getThumbnail();
                    if (soceImg == null) {
                        soceImg = "https://img.icons8.com/cute-clipart/64/000000/test-account.png";
                    }
                %>
                <div class="w3-col  w3-container" style="width:10%">
                    <img class="chiTietAnhMusic" src="<% out.print(soceImg); %>" alt="">
                </div>
                <div class="w3-col  w3-container" style="width:90%">
                    <b class="tieuDeMusic">${songDetails.songName}</b>
                    <p class="date">
                        <%
                            SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                            String strDate = formatter.format(song.getRelease());
                            out.print(strDate);
                        %>
                    </p>
                    <div class="w3-col  w3-container" style="width:12%">
                        <span id="ketqua"> </span>
                        <a href="#" onclick="add(<%  out.print(song.getSongID()); %>)">
                            <b class="thuocTinh">
                                Add to
                            </b>
                        </a>
                    </div>
                    <div class="w3-col  w3-container" style="width:15%">
                        <a href="C:/Users/hmtua/Desktop/NangTho-HoangDung-6413381.mp3" download>
                            <b class="thuocTinh">Download</b>
                        </a>
                    </div>
                    <div class="w3-col  w3-container" style="width:15%">
                        <a href="#">
                            <b class="thuocTinh">Share</b>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="w3-col w3-container" style="width:25%">
            <img class="chiTietAnhCS" src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg" alt="">
        </div>
    </div>
</div>
<div class="bodyMusic">
    <div class="w3-row">
        <div class="w3-col  w3-container" style="width:3%"></div>
        <div name="loiBaiHat" class="w3-col w3-container" style="width:72%">
            <div class="w3-col w3-container" style="width:28%"></div>
            <div class="w3-col w3-container" style="width:60%">
                <div class="w3-bar">
                    <button name="chiMuc" class="w3-bar-item w3-button tablink1 w3-red rr" onclick="openCity1(event, 'London1')">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Overview&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </button>
                    <button name="chiMuc" class="w3-bar-item w3-button tablink1" onclick="openCity1(event, 'Paris1')">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Playlist&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </button>
                    <button name="chiMuc" class="w3-bar-item w3-button tablink1" onclick="openCity1(event, 'Tokyo1')">
                        &nbsp;&nbsp;&nbsp;&nbsp;Lyrics&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </button>
                    <button name="chiMuc" class="w3-bar-item w3-button tablink1" onclick="openCity1(event, 'a1')">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MV&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </button>
                </div>
            </div>
            <div class="w3-col w3-container" style="width:12%"></div>
            <div>
                <div id="London1" class="w3-container city1" >
                    <div>
                        <div class="section-header">
                            Featured Songs
                        </div>
                        <div class="w3-col w3-container" style="width:30%">

                        </div>
                        <div class="w3-col w3-container" style="width:67%">
                            <div name="dsMusicNoiBat" class="music-container">
                                <div class="chart-music">
                                    <table class="music-list-chart">                    
                                        <tr class="itemsMusic">
                                            <td style="width:35%;text-align: left;">
                                                <div class="chart-info">
                                                    <div class="chart-thumbnail"><img
                                                            src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg"
                                                            alt=""></div>
                                                    <div class="chart-name">
                                                        <span class="chart-title">God 4 u</span>
                                                        <a href="../musics/detail_music.jsp">
                                                            <span class="chart-singer">Olivia Rodrigo</span>
                                                        </a>
                                                    </div> 
                                                </div>
                                            </td>
                                            <td style="width:10%" class="chart-action">
                                                <a href="" class="btn-link btn-order"> Buy 2$</a>
                                            </td>
                                        </tr> 
                                        <tr class="itemsMusic">
                                            <td style="width:35%;text-align: left;">
                                                <div class="chart-info">
                                                    <div class="chart-thumbnail"><img
                                                            src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg"
                                                            alt=""></div>
                                                    <div class="chart-name">
                                                        <span class="chart-title">God 4 u</span>
                                                        <a href="../musics/detail_music.jsp">
                                                            <span class="chart-singer">Olivia Rodrigo</span>
                                                        </a>
                                                    </div> 
                                                </div>
                                            </td>
                                            <td style="width:10%" class="chart-action">
                                                <a href="" class="btn-link btn-order"> Buy 2$</a>
                                            </td>
                                        </tr> 
                                        <tr class="itemsMusic">
                                            <td style="width:35%;text-align: left;">
                                                <div class="chart-info">
                                                    <div class="chart-thumbnail"><img
                                                            src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg"
                                                            alt=""></div>
                                                    <div class="chart-name">
                                                        <span class="chart-title">God 4 u</span>
                                                        <a href="../musics/detail_music.jsp">
                                                            <span class="chart-singer">Olivia Rodrigo</span>
                                                        </a>
                                                    </div> 
                                                </div>
                                            </td>
                                            <td style="width:10%" class="chart-action">
                                                <a href="" class="btn-link btn-order"> Buy 2$</a>
                                            </td>
                                        </tr> 
                                        <tr class="itemsMusic">
                                            <td style="width:35%;text-align: left;">
                                                <div class="chart-info">
                                                    <div class="chart-thumbnail"><img
                                                            src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg"
                                                            alt=""></div>
                                                    <div class="chart-name">
                                                        <span class="chart-title">God 4 u</span>
                                                        <a href="../musics/detail_music.jsp">
                                                            <span class="chart-singer">Olivia Rodrigo</span>
                                                        </a>
                                                    </div> 
                                                </div>
                                            </td>
                                            <td style="width:10%" class="chart-action">
                                                <a href="" class="btn-link btn-order"> Buy 2$</a>
                                            </td>
                                        </tr> 
                                        <tr class="itemsMusic">
                                            <td style="width:35%;text-align: left;">
                                                <div class="chart-info">
                                                    <div class="chart-thumbnail"><img
                                                            src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg"
                                                            alt=""></div>
                                                    <div class="chart-name">
                                                        <span class="chart-title">God 4 u</span>
                                                        <a href="../musics/detail_music.jsp">
                                                            <span class="chart-singer">Olivia Rodrigo</span>
                                                        </a>
                                                    </div> 
                                                </div>
                                            </td>
                                            <td style="width:10%" class="chart-action">
                                                <a href="" class="btn-link btn-order"> Buy 2$</a>
                                            </td>
                                        </tr> 
                                        <tr class="itemsMusic">
                                            <td style="width:35%;text-align: left;">
                                                <div class="chart-info">
                                                    <div class="chart-thumbnail"><img
                                                            src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg"
                                                            alt=""></div>
                                                    <div class="chart-name">
                                                        <span class="chart-title">God 4 u</span>
                                                        <a href="../musics/detail_music.jsp">
                                                            <span class="chart-singer">Olivia Rodrigo</span>
                                                        </a>
                                                    </div> 
                                                </div>
                                            </td>
                                            <td style="width:10%" class="chart-action">
                                                <a href="" class="btn-link btn-order"> Buy 2$</a>
                                            </td>
                                        </tr> <tr class="itemsMusic">
                                            <td style="width:35%;text-align: left;">
                                                <div class="chart-info">
                                                    <div class="chart-thumbnail"><img
                                                            src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg"
                                                            alt=""></div>
                                                    <div class="chart-name">
                                                        <span class="chart-title">God 4 u</span>
                                                        <a href="../musics/detail_music.jsp">
                                                            <span class="chart-singer">Olivia Rodrigo</span>
                                                        </a>
                                                    </div> 
                                                </div>
                                            </td>
                                            <td style="width:10%" class="chart-action">
                                                <a href="" class="btn-link btn-order"> Buy 2$</a>
                                            </td>
                                        </tr> 
                                        <tr class="itemsMusic">
                                            <td style="width:35%;text-align: left;">
                                                <div class="chart-info">
                                                    <div class="chart-thumbnail"><img
                                                            src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg"
                                                            alt=""></div>
                                                    <div class="chart-name">
                                                        <span class="chart-title">God 4 u</span>
                                                        <a href="../musics/detail_music.jsp">
                                                            <span class="chart-singer">Olivia Rodrigo</span>
                                                        </a>
                                                    </div> 
                                                </div>
                                            </td>
                                            <td style="width:10%" class="chart-action">
                                                <a href="" class="btn-link btn-order"> Buy 2$</a>
                                            </td>
                                        </tr> 
                                        <tr class="itemsMusic">
                                            <td style="width:35%;text-align: left;">
                                                <div class="chart-info">
                                                    <div class="chart-thumbnail"><img
                                                            src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg"
                                                            alt=""></div>
                                                    <div class="chart-name">
                                                        <span class="chart-title">God 4 u</span>
                                                        <a href="../musics/detail_music.jsp">
                                                            <span class="chart-singer">Olivia Rodrigo</span>
                                                        </a>
                                                    </div> 
                                                </div>
                                            </td>
                                            <td style="width:10%" class="chart-action">
                                                <a href="" class="btn-link btn-order"> Buy 2$</a>
                                            </td>
                                        </tr> 

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="w3-col " style="width:100%">
                        <div class="section-header">
                            Album
                        </div>
                        <div class="w3-col w3-container" style="width:20%">
                            <div>
                                <div>
                                    <img style="border-radius:10px;width:120%" src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg" alt="">
                                </div>
                                <div>
                                    <div>
                                        <h4><b>Vo Boc</b></h4>
                                    </div>
                                    <div style="color: #888;">
                                        Pha Le
                                    </div>
                                </div>
                            </div>                            
                        </div>
                        <div class="w3-col w3-container" style="width:20%">
                            <div>
                                <div>
                                    <img style="border-radius:10px;width:120%" src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg" alt="">
                                </div>
                                <div>
                                    <div>
                                        <h4><b>Vo Boc</b></h4>
                                    </div>
                                    <div style="color: #888;">
                                        Pha Le
                                    </div>
                                </div>
                            </div>                            
                        </div>
                        <div class="w3-col w3-container" style="width:20%">
                            <div>
                                <div>
                                    <img style="border-radius:10px;width:120%" src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg" alt="">
                                </div>
                                <div>
                                    <div>
                                        <h4><b>Vo Boc</b></h4>
                                    </div>
                                    <div style="color: #888;">
                                        Pha Le
                                    </div>
                                </div>
                            </div>                            
                        </div>
                        <div class="w3-col w3-container" style="width:20%">
                            <div>
                                <div>
                                    <img style="border-radius:10px;width:120%" src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg" alt="">
                                </div>
                                <div>
                                    <div>
                                        <h4><b>Vo Boc</b></h4>
                                    </div>
                                    <div style="color: #888;">
                                        Pha Le
                                    </div>
                                </div>
                            </div>                            
                        </div>
                        <div class="w3-col w3-container" style="width:20%">
                            <div>
                                <div>
                                    <img style="border-radius:10px;width:120%" src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg" alt="">
                                </div>
                                <div>
                                    <div>
                                        <h4><b>Vo Boc</b></h4>
                                    </div>
                                    <div style="color: #888;">
                                        Pha Le
                                    </div>
                                </div>
                            </div>                            
                        </div>
                    </div>
                    <div class="w3-col " style="width:100%">
                        <div class="section-header">
                            You May Like
                        </div>
                        <div>
                            <div class="w3-col w3-container" style="width:20%">
                                <div>
                                    <div>
                                        <img style="border-radius:100%;width:120%" src="https://photo-resize-zmp3.zadn.vn/w94_r1x1_jpeg/cover/8/f/c/6/8fc69bb4b0b8fb6fd647927286c0c478.jpg" alt="">
                                    </div>
                                    <div>
                                        <div>
                                            <center>
                                                <h4><b>hhhh</b></h4>  
                                            </center>
                                        </div>
                                    </div>
                                </div>        
                            </div>                
                        </div>                
                    </div>
                </div>
                <div id="Paris1" class="w3-container city1" style="display:none">
                    <div class="music-container">
                        <div class="chart-music"  id="playList">               
                            <table class="music-list-chart" >
                                <thead>
                                    <tr>
                                        <th style="width:35%;text-align: left;"></th>
                                        <th></th>
                                        <th></th>
                                        <th style="width:10%;text-align: left" class="chart-action"></th>
                                    </tr>
                                </thead>
                                <tbody id="myTable" >
                                    <%                                        //lay list danh sach da mua cua acc
                                        if (session.getAttribute("userID") != null) {
                                            idSongOrder = String.valueOf(request.getAttribute("idSongOrder"));
                                        } else {
                                            idSongOrder = null;
                                        }
                                        //lay id khac hang 
                                        String AccountIDSession = String.valueOf(session.getAttribute("userID"));
                                        List l = new ArrayList();
                                        l = (ArrayList) request.getAttribute("listSongArtistID");
                                        for (int idx = 0; idx < l.size(); idx++) {
                                            String t = l.get(idx).toString();
                                            char[] ch = t.substring(1, t.indexOf("]")).toCharArray();
                                            String AccountID, SongID, SongName, Path, PriceSong, ngheSiID, tenNgheSi, anhBiaHat, trangThaiThanhToan, TrangThaiOrder;
                                            String cat = t.substring(1, t.indexOf("]")).trim();
                                            if (!cat.substring(0, cat.indexOf("/")).equals("null")) {
                                                SongID = cat.substring(0, cat.indexOf("/"));
                                                String cat2 = cat.substring(cat.indexOf("/") + 1).trim();
                                                //
                                                AccountID = cat2.substring(0, cat2.indexOf("/"));
                                                String cat3 = cat2.substring(cat2.indexOf("/") + 1).trim();
                                                //
                                                SongName = cat3.substring(0, cat3.indexOf("/"));
                                                String cat4 = cat3.substring(cat3.indexOf("/") + 1).trim();
                                                //
                                                Path = cat4.substring(0, cat4.indexOf("/"));
                                                String cat5 = cat4.substring(cat4.indexOf("/") + 1).trim();
                                                //
                                                PriceSong = cat5.substring(0, cat5.indexOf("/"));
                                                String cat6 = cat5.substring(cat5.indexOf("/") + 1).trim();
                                                //
                                                ngheSiID = cat6.substring(0, cat6.indexOf("/"));
                                                String cat7 = cat6.substring(cat6.indexOf("/") + 1).trim();
                                                //
                                                tenNgheSi = cat7.substring(0, cat7.indexOf("/"));
                                                String cat8 = cat7.substring(cat7.indexOf("/") + 1).trim();
                                                //jjj
                                                anhBiaHat = cat8.substring(0, cat8.indexOf("/"));
                                                if (anhBiaHat.equals("null")) {
                                                    anhBiaHat = "https://img.icons8.com/cute-clipart/64/000000/test-account.png";
                                                } else {
                                                    anhBiaHat = anhBiaHat;
                                                }
                                                String cat9 = cat8.substring(cat8.indexOf("/") + 1).trim();
                                                //
                                                trangThaiThanhToan = cat9.substring(0, cat9.indexOf("/"));
                                                String cat10 = cat9.substring(cat9.indexOf("/") + 1).trim();
                                                //
                                                TrangThaiOrder = cat10;
                                    %>
                                    <tr class="itemsMusic">
                                        <td style="width:50%;text-align: left;">
                                            <div class="chart-info">
                                                <div class="chart-thumbnail">
                                                    <img src="<% out.print(anhBiaHat); %>" alt="">
                                                </div>
                                                <div class="chart-name">
                                                    <a href="${pageContext.request.contextPath}/SongDetail?songID=<% out.print(SongID); %>">
                                                        <span class="chart-title"><% out.print(SongName); %></span>
                                                    </a>
                                                    <a href="${pageContext.request.contextPath}/?ID=<% out.print(ngheSiID); %>">
                                                        <span class="chart-singer"><% out.print(tenNgheSi); %></span>
                                                    </a>
                                                </div> 
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td style="width:50%;text-align: right" class="chart-action">

                                            <%
                                                if (idSongOrder.indexOf(SongID) != -1) {
                                                    //dung de chua duong dan nhac
                                                    //duong dan nap trong 
                                                    //<% out.print(Path); 
                                            %>
                                            <a href="" data-src="music2.mp3" class="btn-link btn-play"><i class='bx bx-play'></i>Play</a>
                                            <%
                                            } else {
                                                if (PriceSong.equals("null") || PriceSong.equals("0")) {
                                            %>
                                            <a href="" data-src="music2.mp3" class="btn-link btn-play"><i class='bx bx-play'></i>Play</a>
                                            <%
                                            } else if (!PriceSong.equals("null") || !PriceSong.equals("0")) {
                                            %>
                                            <a href="${pageContext.request.contextPath}/Order?idSong=<% out.print(SongID); %>" class="btn-link btn-order"> Buy <% out.print(PriceSong); %>$</a>
                                            <%
                                                    }

                                                }
                                            %>

                                        </td>
                                    </tr>
                                    <%   }
                                        }
                                    %> 
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="Tokyo1" class="w3-container city1" style="display:none">
                    <div>
                        <div class="section-header">
                            Lyrics
                        </div>
                        <hr style="color: #ffffff"/>
                        <div class="thanhCuon"> 
                            <div id="loiBaiHat" class="loiBaiHat">
                                <%
                                    String loi = song.getDescription();
                                    if (loi != null) {
                                        out.print(loi);
                                    } else {
                                %>
                                M??? trang ?????u c???a truy???n c??? t??ch
                                Th???y n??ng c??ng ch??a n???m y??n
                                Ch??? ?????i ho??ng t??? n??ng th??ch , th??ch l?? nh??ch
                                Nh?? truy???n c??? t??ch , truy???n c??? t??ch

                                Th??? nh??ng ????y l?? ?????i , d??? ????u m?? ta g???p th???i
                                Ng???m ngh?? m??nh h??t m???t h??i
                                H???t h??i m??nh g???p ??ng tr???i

                                Tr???i tr??n cao c??n n??ng thanh cao
                                L??ng ng?????i nh?? c??o , n??n ta l?? b??o s??? b???o v??? n??ng , ??i kh???p th??? gian , ?????n khi tr???i s??ng , ?????n khi n??ng ch??n
                                N??ng l??m sao m?? bi???t m???y k??? hi???n tri???t to??n l?? l?? thuy???t
                                L??m g?? c?? ho??ng t??? ng???u , l???y ????u m?? cho n??ng th???

                                Ng?????i ta n??i s???ng c???n ch??t m??u
                                C??n em trong s??ng nh?? m???t ch?? h????u
                                Nh??n em ta say mu???n ch???nh cho??ng h??i men r???i la l?? la

                                V?? em ????y b??ng hoa th??n l???m gai
                                ?????ng m???t ai l??m sai kh??ng l???n th??? hai
                                N??? hoa kia s??? n??? trong m???t s???m mai m??
                                ??o?? hoa l??m ??au n???u anh l???i g???n

                                ?????ng v???i tin em kh??ng d??? ??o??n , kh??ng d??? ??o??n ????u m??
                                ?????ng t??? tin , anh kh??ng th??? t??nh , kh??ng d??? t??nh ????u nha
                                L???i em n??i ch??nh l?? ???????ng m?? cung r???t xa
                                Kh??ng th??? ra n???u anh d??ng l???i d???i tr??

                                L???i g???n ??i anh s??? th???y ,anh s??? th???y m??y xanh
                                V?? t???n tay anh h??y c???m l???y , h??y c???m l???y cho nhanh
                                ?????t tim anh ??? ????y th?? anh s??? c?? ngay
                                M??t t??nh y??u m?? say ch??? v?? em ch??nh l??

                                ??o?? h???ng nhung c?? gai

                                Th???ng ho???c thua
                                N???u v?? mu???n th???ng l?? thua
                                Y??u th?? ?????ng tranh ??ua
                                L???i ??ng b?? d???y d?? ????ng ,????ng ????ng m?? chua .....
                                Th??? n??n anh l??m k??? ng???c th?? c?? sao
                                Mang h???t tim gan n??y ??em ??i giao ..
                                C?? ch???t c??ng gi??? anh b??n c???nh
                                V?? y??u anh ch???ng c???n g?? ph???i k??u ng???o

                                Ng?????i ta nh??n em ??i th???t d??? th????ng
                                M?? trong tim em sao nhi???u v???t th????ng
                                S??? v????ng t????ng t?? n??n c??? ho?? th??n nh?? lo??i hoa c?? gai

                                R???i ch??ng trai m???t mai b???t c???n ????ng sai
                                Li???u m???t phen kh??ng tin nh???ng l???i n??i b??n tai
                                Nguy???n ??em d??ng con tim mong n??ng s??? y??u l???i ....

                                Em l?? hoa c?? gai
                                Nh??ng kh??ng l?? em ch??? ai
                                Kh??ng c??n k??? th??? hai
                                Y??u em th?? th??i ch??? ng???i.
                                <%
                                    }
                                %>                          
                            </div>
                        </div>
                        <div class="docAnHien">
                            <br>
                            <b>
                                <button type="button" class="anHien" id="hien" onclick="hien()">Show all...</button>
                                <button type="button" class="anHien" id="an" onclick="an()">Hide Less...</button>
                            </b>
                        </div> 
                    </div> 
                </div>
                <div id="a1" class="w3-container city1" style="display:none">
                    <div class="noiDungTrong">
                        <center>
                            <p style="height:120px;font-size:100px">X</p>
                            List is empty
                        </center>
                    </div>
                </div>
            </div>
        </div>

        <div class="w3-col w3-container" style="width:25%">
            <div class="keDoc">
                <div class="chiMuc">
                    <div class="w3-row">
                        <div class="w3-col " style="width:0%"></div>
                        <div class="w3-col " style="width:100%">
                            <div class="w3-bar">
                                <button name="chiMuc" class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event, 'London')">
                                    Suggestions
                                </button>
                                <button name="chiMuc" class="w3-bar-item w3-button tablink" onclick="openCity(event, 'Paris')">
                                    Favorite Albums
                                </button>
                            </div>
                        </div>
                        <div class="w3-col " style="width:0%"></div>
                    </div>
                    <div id="London" class="w3-container city">
                        <div name="dsMusic" class="music-container">
                            <div class="music-container">
                                <div class="chart-music">               
                                    <table class="music-list-chart">
                                        <tbody id="myTable">
                                            <%
                                                //lay id khac hang 
                                                //String AccountIDSession = String.valueOf(session.getAttribute("userID"));
                                                List lsu = new ArrayList();
                                                lsu = (ArrayList) request.getAttribute("listSongAll");
                                                for (int idx = 0; idx < lsu.size(); idx++) {
                                                    String t = lsu.get(idx).toString();
                                                    char[] ch = t.substring(1, t.indexOf("]")).toCharArray();
                                                    String AccountID, SongID, SongName, Path, PriceSong, ngheSiID, tenNgheSi, anhBiaHat, trangThaiThanhToan, TrangThaiOrder;
                                                    String cat = t.substring(1, t.indexOf("]")).trim();
                                                    if (!cat.substring(0, cat.indexOf("/")).equals("null")) {
                                                        SongID = cat.substring(0, cat.indexOf("/"));
                                                        String cat2 = cat.substring(cat.indexOf("/") + 1).trim();
                                                        //
                                                        AccountID = cat2.substring(0, cat2.indexOf("/"));
                                                        String cat3 = cat2.substring(cat2.indexOf("/") + 1).trim();
                                                        //
                                                        SongName = cat3.substring(0, cat3.indexOf("/"));
                                                        String cat4 = cat3.substring(cat3.indexOf("/") + 1).trim();
                                                        //
                                                        Path = cat4.substring(0, cat4.indexOf("/"));
                                                        String cat5 = cat4.substring(cat4.indexOf("/") + 1).trim();
                                                        //
                                                        PriceSong = cat5.substring(0, cat5.indexOf("/"));
                                                        String cat6 = cat5.substring(cat5.indexOf("/") + 1).trim();
                                                        //
                                                        ngheSiID = cat6.substring(0, cat6.indexOf("/"));
                                                        String cat7 = cat6.substring(cat6.indexOf("/") + 1).trim();
                                                        //
                                                        tenNgheSi = cat7.substring(0, cat7.indexOf("/"));
                                                        String cat8 = cat7.substring(cat7.indexOf("/") + 1).trim();
                                                        //jjj
                                                        anhBiaHat = cat8.substring(0, cat8.indexOf("/"));
                                                        if (anhBiaHat.equals("null")) {
                                                            anhBiaHat = "https://img.icons8.com/cute-clipart/64/000000/test-account.png";
                                                        } else {
                                                            anhBiaHat = anhBiaHat;
                                                        }
                                                        String cat9 = cat8.substring(cat8.indexOf("/") + 1).trim();
                                                        //
                                                        trangThaiThanhToan = cat9.substring(0, cat9.indexOf("/"));
                                                        String cat10 = cat9.substring(cat9.indexOf("/") + 1).trim();
                                                        //
                                                        TrangThaiOrder = cat10;
                                            %>
                                            <tr class="itemsMusic">
                                                <td style="width:50%;text-align: left;">
                                                    <div class="chart-info">
                                                        <div class="chart-thumbnail">
                                                            <img src="<% out.print(anhBiaHat); %>" alt="">
                                                        </div>
                                                        <div class="chart-name">
                                                            <a href="${pageContext.request.contextPath}/SongDetail?songID=<% out.print(SongID); %>">
                                                                <span class="chart-title"><% out.print(SongName); %></span>
                                                            </a>
                                                            <a href="${pageContext.request.contextPath}/?ID=<% out.print(ngheSiID); %>">
                                                                <span class="chart-singer"><% out.print(tenNgheSi); %></span>
                                                            </a>
                                                        </div> 
                                                    </div>
                                                </td>
                                                <td></td>
                                                <td></td>
                                                <td style="width:50%;text-align: right" class="chart-action">

                                                    <%
                                                        if (idSongOrder.indexOf(SongID) != -1) {
                                                            //dung de chua duong dan nhac
                                                            //duong dan nap trong 
                                                            //<% out.print(Path); 
                                                    %>
                                                    <a href="" data-src="music2.mp3" class="btn-link btn-play"><i class='bx bx-play'></i>Play</a>
                                                    <%
                                                    } else {
                                                        if (PriceSong.equals("null") || PriceSong.equals("0")) {
                                                    %>
                                                    <a href="" data-src="music2.mp3" class="btn-link btn-play"><i class='bx bx-play'></i>Play</a>
                                                    <%
                                                    } else if (!PriceSong.equals("null") || !PriceSong.equals("0")) {
                                                    %>
                                                    <a href="${pageContext.request.contextPath}/Order?idSong=<% out.print(SongID); %>" class="btn-link btn-order"> Buy <% out.print(PriceSong); %>$</a>
                                                    <%
                                                            }

                                                        }
                                                    %>

                                                </td>
                                            </tr>
                                            <%   }
                                                }
                                            %> 
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="Paris" class="w3-container city" style="display:none">

                    </div>  
                </div> 
            </div>
        </div>
    </div>
</div>
<%@include file="../includes/footer.jsp"%>
??
