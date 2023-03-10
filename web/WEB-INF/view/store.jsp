    <!doctype html>
    <html lang="en">
    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- Bootstrap CSS -->
      <link rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
            crossorigin="anonymous">

      <script src="https://kit.fontawesome.com/22437c0385.js" crossorigin="anonymous"></script>

      <!-- Optional JavaScript; choose one of the two! -->

      <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
              integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
              crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.js"
              integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
              crossorigin="anonymous"></script>
<!--      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"-->
<!--              integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"-->
<!--              crossorigin="anonymous"></script>-->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
              integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
              crossorigin="anonymous"></script>
      <!-- Option 2: Separate Popper and Bootstrap JS -->
      <!--
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
      -->

      <title>Youtube store</title>
    </head>

    <style>

      .nav-item > a:hover, .nav-item > a:focus {
        outline: none !important;
        border-top: none !important;
        border-left: none !important;
        border-right: none !important;
        box-shadow: none !important;
        color: black !important;
      }

      /*.nav-item > a:hover {*/
      /*  border-bottom: none !important;*/
      /*}*/

      .btn:focus, .btn:active {
        outline: none !important;
        box-shadow: none !important;
      }



      /* ?????? */

      .top_layout {
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: white;
        z-index: 5;
      }

      .input-group {
        position: relative;
        width: 572px;
        max-width: 572px;
        min-width: 572px;
        height: 40px;
        z-index: 5;
        padding-top: 8px;
      }

      .header_layout {
        position: fixed;
        width: 100%;
        padding: 0 16px;
        z-index: 5;
        height: 56px;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        background-color: white;
      }

      .input-group-text {
        height: 40px;
      }

      .form-control {
        height: 40px;
      }

      /* ???????????? */

      .left-side-bar {
        position: fixed; top: 56px; left: 0; z-index: 5; width: 240px; min-height: 100vh; height: 100%;

      }

      .container_bar {
        width: 100%;
        margin-top: 10px;
        border-bottom: 1px solid #d3d3d3;
        font-size: 12px;
      }

      .left-side-bar-1 {
        display: flex;
      }

      .hoverTest {
        cursor: pointer;
        width: 240px;
        height: 40px;
        display: flex;
      }

      .left_icon {
        margin-left: 20px;
        width: 24px;
        height: 24px;
        margin-top: auto;
        margin-bottom: auto;
      }

      .left_component {
        width: 140px;
        height: 24px;
        margin-left: 10px;
        font-size: 14px;
        font-weight: 500;
        margin-top: auto;
        margin-bottom: auto
      }

      .hoverTest:hover {
        background-color: #d3d3d3;
      }

      .badge badge-primary {
        background-color: white;
      }

      .leftSideBarFooter{
        margin-top:10px;
        margin-left: 20px;
      }

      .leftSideBarFooter a {
        font-size: 12px;
        color: black;
      }

      .leftSideBarFooterInformation {
        margin-left: 20px;
        font-size: 10px;
        color: grey;
      }


      .scrolls {
        height: 800px;
        width: 100%;
        overflow-y: scroll;
        overflow-x: hidden;
      }

      .one {
        background-color: white;
        width: 100%;
        margin: 0 auto;
        /* ??????????????? absolute??? ???????????? ?????????
           ???????????? relative??? ?????? */
        position: relative;

      }

      .scrolls::-webkit-scrollbar {
        /* ???????????? ?????? ???????????? ?????? */
        width: 10px;
      }

      .scrolls::-webkit-scrollbar,
      .scrolls::-webkit-scrollbar-thumb {
        overflow: visible;
        border-radius: 4px;
        background: rgba(0, 0, 0, .2);
      }

      .cover-bar {
        width: 10px;
        height: 100%;
        position: absolute;
        top: 0;
        right: 0;
        -webkit-transition: all .1s;
        opacity: 1;
        /* ???????????? ???????????? ????????? ???????????? */
        background-color: white;
      }

      /* ????????? ?????? */
      .one:hover .cover-bar {
        opacity: 0;
        -webkit-transition: all .1s;
      }






      .left-side-bar-view {
        display: flex;
      }

      .badge-primary {
        border: 1px solid #6610f2;
        margin-top: auto;
        margin-bottom: auto;
        background-color: blue;
        color: blue;
        font-size: 2px;
      }


      .left-side-bar-sub{
        margin-left: 20px;
      }


      /*??????*/

      .main_containner {
          background-color: #f9f9f9;
          display: flex;
          flex-direction: row;
          overflow: auto;
          overflow-x: hidden;
          overflow-y: hidden;
          margin-top: 50px;
          width: 95%;
          padding-right: 7%;
          margin-left: 100px;
          height: 1500px;

      }

      .relatived_contents {
          height: 100%;
          width: 100%;
          margin-top: 24px;
          padding-right: 100px;
          display: flex;
          flex-direction: column;

      }

      .relatived_contents_profile {
          width: 150px;
          height: 174px;
          display: flex;
          flex-direction: column;
          align-items: center;
          border-bottom: 1px solid #d3d3d3;


      }

      .account_pic {
          height: 70px;
          width: 70px;
          border-radius: 50px;
          margin-top: 49px;
      }

      .account_name {
          width: 150px;
          height: 35px;
          text-align: center;
          padding-top: 10px;
          font-size: 16px;
      }

      .account_subs , .account_upload , .account_like  {
          width: 150px;
          height: 40px;
          display: flex;
          padding: 10px 0px;
          font-size: 12px;
          border-bottom: 1px solid #d3d3d3;
      }

      .account_subs_key , .account_upload_key , .account_like_key {
          margin-right: auto;
      }

      .account_subs_value , .account_upload_value , .account_like_value  {
          margin-left: auto;
      }











      .main_contents {
          width: 990px;
          height: 100%;
          margin-top: 10px;
          margin-left: 285px;
      }

      .main_contents_history {
          width: 1074px;
          height: 30px;
          display: flex;
          flex-direction: row;
          margin-bottom: 10px;
          margin-top: 15px;

      }

      .history {
          margin-right: auto;
          font-size: 16px;
          display: flex;
      }

      .fa-clock-rotate-left {
          margin-right: 16px;
      }

      .seeall {
          margin-left: auto;
          padding-right: 120px;
          font-size: 14px;
          text-decoration: none;
      }

      .seeall:hover {
          text-decoration: none;
      }

      .history_contents {
          width: 970px;
          height: 468px;
          border-bottom: 1px solid #d3d3d3;
      }

      .main_video_container {
          position: relative;
      }

      .videoTimeBackGround {
          position: absolute;
          top: 100px;
          left: 155px;
          z-index: 2;
          background-color: black;
          border: 1px solid #000;
          width: 33px;
          height: 18px;
          align-items: center;
      }

      .videoTime {
          position: absolute;
          top: 4px;
          z-index: 3;
          line-height: 0.5;
          font-size: 12px;
          width: 25px;
          height: 10px;
      }

      .card-body {
          margin: 0;
          padding-top: 10px;

      }

      .media {
          left: -20px;
          width: 190px;
          height: 94px;
          position: relative;
          display: flex;
      }

      .media-body:hover {
          opacity: 1;
      }

      .media_body_more {
          display: flex;
      }

      .videoMore1 {
          transition: .1s ease;
          opacity: 0;
          position: relative;
          left: 0px;
          text-align: center;
      }

      .videoMore1:hover {
          opacity: 1;
      }

      /*.dropdown {*/
      /*    transition: .1s ease;*/
      /*}*/

      .video_dropdown {
          width: 25px;
      }

      .video_info {
          margin: 0;
          padding: 0;
          width: 168px;
      }

      .mt-0 {
          font-size: 14px;
          width: 166px;
          height: 40px;
      }

      .card-img-top {
          width: 190px;
          height: 117px;
      }

      .col {
          width: 190px;
          margin-bottom: -10px;
          margin-right: -3px;
          margin-left: -3px;
      }

      .main_contents_latervideo {
          width: 1074px;
          height: 30px;
          display: flex;
          flex-direction: row;
          margin-bottom: 10px;
          margin-top: 15px;
      }

      .latervideo_count {
          padding-left: 10px;
          font-size: 14px;
      }

      .latervideo_contents {
          width: 970px;
          height: 234px;
          border-bottom: 1px solid #d3d3d3;
      }



      .main_contents_myclip {
          width: 1074px;
          height: 30px;
          display: flex;
          flex-direction: column;
          margin-bottom: 10px;
          margin-top: 15px;
      }












    </style>

    <body style="overflow: auto; overflow-x: hidden;">
        <header style="position: fixed; top: 0; left: 0; width: 100%; z-index: 4;">
          <div class="container-fluid header_layout">
            <!-- rogo -->
            <div>

            </div>
            <div class="row top_layout">
              <div class="input-group mb-3 ">
                <input type="text" class="form-control" placeholder="??????">
                <span class="btn input-group-text"><i class="fa-solid fa-magnifying-glass"></i></span>
              </div>

            </div>
            <!-- account and alarm -->
            <div>

            </div>

          </div>
        </header>
    <div class="left-side-bar">

      <div class="one">
        <div class="scrolls">
          <div class="container_bar">
            <div class="left-side-bar-1">
            <div class="hoverTest" style="background-color: #a9a9a9;">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">???</div>
            </div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">??????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">??????</div>
            </div>
          </div>

          <div class="container_bar">
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????? ??????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">??? ?????????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">????????? ??? ?????????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">????????? ????????? ?????????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">??????</div>
            </div>
          </div>

          <div class="container_bar">
            <div class="left-side-bar-sub">??????</div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????????1</div>
              <a class="badge badge-primary sub">??</a>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????????2</div>
              <a class="badge badge-primary sub">??</a>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????????3</div>
              <a class="badge badge-primary sub">??</a>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????????4</div>
              <a class="badge badge-primary sub">??</a>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????????5</div>
              <a class="badge badge-primary sub">??</a>
            </div>
            <div class="hoverTest">
              <div class="left-side-bar-view">
                <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                <div class="left_component">20??? ?????????</div> <!--????????????????????? ????????? ????????????????????? ????????? ??????-->

              </div>
            </div>

          </div>
          <div class="container_bar">
            <div class="left-side-bar-sub">YOUTUBE ?????????</div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">YouTube Premium</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">??????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">??????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">??????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????????</div>
            </div>
          </div>

          <div class="container_bar">

            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">??????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????? ??????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????? ??????</div>
            </div>
            <div class="hoverTest">
              <div class="left_icon"><i class="fa-solid fa-house"></i></div>
              <div class="left_component">?????? ?????????</div>
            </div>
          </div>
          <div>
            <div class="leftSideBarFooter">
              <a href="#">??????</a>
              <a href="#">????????????</a>
              <a href="#">?????????</a>
              <br>
              <a href="#">????????????</a>
              <a href="#">???????????????</a>
              <a href="#">??????</a>
              <br>
              <a href="#">?????????</a>
              <br/>
              <br/>
            </div>
          </div>
          <div>
            <div class="leftSideBarFooter">
              <a href="#">??????</a>
              <a href="#">????????????????????????</a>
              <br/>
              <a href="#">?????? ??? ??????</a>
              <br>
              <a href="#">YouTube ????????? ??????</a>
              <br/>
              <a href="#">????????? ?????? ???????????????</a>
              <br/>
              <br/>
            </div>
          </div>
          <div class="leftSideBarFooterInformation">
            ??? 2022 Google LLC
            <br>
            CEO: ?????? ?????????
            <br>
            ??????: 1600 Amphitheatre Parkway,
            <br>
            Mountain View, CA 94043, USA
            <br>
            ?????? 080-822-1450(??????)
          </div>
        </div>
        <div class="cover-bar"></div>
      </div>
    </div>

        <!-- ?????? -->

        <div class="main_containner">
            <div class="main_contents">
<!--                ??????-->
                <div class="main_contents_history">
                    <div class="history"><i class="fa-solid fa-clock-rotate-left"></i>??????</div>
                   <a class="seeall">????????????</a>
                </div>
                <div class="history_contents">
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                ??????????????????-->
                <div class="main_contents_latervideo">
                    <div class="history">
                        <i class="fa-solid fa-clock-rotate-left"></i>
                        ????????? ??? ??????
                        <div class="latervideo_count">70</div>
                    </div>
                    <a class="seeall">????????????</a>
                </div>
                <div class="latervideo_contents">
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                ????????????-->
                <div class="main_contents_latervideo">
                    <div class="history">
                        <i class="fa-solid fa-clock-rotate-left"></i>
                        ????????????
                        <div class="latervideo_count">70</div>
                    </div>
                    <a class="seeall">????????????</a>
                </div>
                <div class="latervideo_contents">
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                ????????? ????????? ?????????-->
                <div class="main_contents_latervideo">
                    <div class="history">
                        <i class="fa-solid fa-clock-rotate-left"></i>
                        ????????? ????????? ????????? 
                        <div class="latervideo_count">70</div>
                    </div>
                    <a class="seeall">????????????</a>
                </div>
                <div class="latervideo_contents">
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[????????????] ???????????? ?????? ?????????&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;????????? ??? ???????????? ??????</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;??????????????? ??????</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs ????????????</p>
                                            <p class="video_info" style="font-size: 12px;"> ????????? 1?????? ??1??? ???</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                ??? ??????-->
                <div class="main_contents_myclip">
                    <div class="history">
                        <i class="fa-solid fa-clock-rotate-left"></i>
                        ?????????
                    </div>
                    <span style="font-size: 14px;">????????? ?????? ????????? ????????? ????????? ?????????. ?????? ????????? ????????? ???????????????.</span>
                </div>



            </div> <!--                main_contents-->













            <div class="relatived_contents">
                <div class="relatived_contents_profile">
                    <img class="account_pic" src="../../resources/css//img/capture.png" alt="Generic placeholder image">
                    <div class="account_name">?????????</div>
                </div>
                <div class="account_subs">
                    <div class="account_subs_key">??????</div>
                    <div class="account_subs_value">55</div>
                </div>
                <div class="account_upload">
                    <div class="account_upload_key">?????????</div>
                    <div class="account_upload_value">0</div>
                </div>
                <div class="account_like">
                    <div class="account_like_key">?????????</div>
                    <div class="account_like_value">?????????</div>
                </div>
            </div>

















        </div>







    <script>
      $(document).ready(function () {
        console.log('document ready');
      });

      let text = '';
      const btn = document.querySelector('.input-group-text')
      const a_element = document.querySelector('.form-control')

      btn.addEventListener('click', function (event) {
        alert(a_element.value + '??? ??????????????????')
      })

      var carouselNext = document.querySelector('.carousel-control-next')
      var carouselPrev = document.querySelector('.carousel-control-prev')

      carouselNext.addEventListener('click', function (event) {
        $('.carousel-item1').css('display', 'none')
        $('.carousel-item2').css('display', 'flex')
        $('.carousel-control-next').hide()
        $('.carousel-control-prev').show()

      })

      carouselPrev.addEventListener('click', function (event) {
        $('.carousel-item2').css('display', 'none')
        $('.carousel-item1').css('display', 'flex')
        $('.carousel-control-prev').hide()
        $('.carousel-control-next').show()
      })

    </script>
    </body>
    </html>