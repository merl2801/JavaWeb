<!DOCTYPE html>
<html>

<head>
    <title>Owl Search</title>
    <%@ page contentType="text/html; charset=UTF-8" %>
        <meta name="description" content="書籍「動くWebデザインアイディア帳」のサンプルサイトです">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
        <script>
            const process = {
                env: {}
            };
            process.env.GOOGLE_MAPS_API_KEY =
                "AIzaSyDB6FrKwW-2S9R_OxHGIP3EKzb03zB55oU";
        </script>
        <!--==============レイアウトを制御する独自のCSSを読み込み===============-->
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.6.0/dist/leaflet.css" integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ==" crossorigin="" />
        <script type="module" src="./js/index.js"></script>
        <link rel="stylesheet" href="./css/style3.css">
        <script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js" src="https://github.com/leaflet-extras/leaflet.sprite.git" src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha512-gZwIG9x3wUXg2hdXF6+rVkLF/0Vi9U8D2Ntg4Ga5I5BZpVkVxlJWbSQtXPSiUTtC0TjtGOmxa1AJPuV0CPthew=="
            crossorigin=""></script>
        <!-- plugin -->
        <script src="js/leaflet.sprite.js"></script>
        <!-- plugin -->
</head>
<header>
    <div id="awan">

        .. A system that can efficiently search supermarket information by Owl Squad! ..

    </div>
    <div id="wrapper">
        <div id="clouds"></div>
        <div class="hamburger-menu">
            <input type="checkbox" id="menu-btn-check">
            <label for="menu-btn-check" class="menu-btn"><span></span></label>
            <!--ここからメニュー-->
            <div class="menu-content">
                <ul>
                    <li>
                        <a href="#">
                            <h2 class="basic-3">RETURN</h2>
                        </a>
                    </li>
                    <li>
                        <a href="./login.jsp">
                            <h2 class="basic-3">LOGIN</h2>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <h2 class="basic-3">HOME</h2>
                        </a>
                    </li>
                </ul>
            </div>
            <!--ここまでメニュー-->
        </div>
</header>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 画面遷移のプログラム -->



<body>
    <div id="splash">
        <div id="splash-logo" class="animate seven"><span>O</span><span>w</span><span>l</span>
            <span>S</span><span>e</span><span>a</span><span>r</span><span>c</span><span>h</span></div>
        <!--/splash-->
    </div>
    <div class="splashbg"></div>
    <!---画面遷移用-->

    <div id="container">
        <header id="header">
            <h1>Owl_Search</h1>
        </header>


        <!-- マップAPI を取る-->
        <div id="map" style="width: 1200px; height: 800px; margin-left: 300px; margin-top: 300px"></div>
        <!-- マップAPIを取る -->


        <script type="text/javascript">
            window.onlolad = function() {}
                //緯度,経度,ズーム
            var map = L.map('map').setView([35.460592214807626, 139.5141777230725], 12);
            // OpenStreetMap から地図画像を読み込む
            L.tileLayer('https://{s}.tile.osm.org/{z}/{x}/{y}.png', {
                maxZoom: 18,
                attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, '
            }).addTo(map);

            var popup = L.popup();
            var addMarker = null;


            L.marker([35.460361615793204, 139.5153888071684], {
                icon: L.spriteIcon('red')
            }).addTo(map).on('click', function(e) {
                popup
                    .setLatLng(e.latlng)
                    .setContent("ロピア 希望ヶ丘店")
                    .openOn(map);
                window.location.href = 'http://localhost:8080/owlSquad/map/HTML/lopia.html';
                //window.open('http://localhost:8080/owlSquad/map/HTML/lopia.html', '_blank');
            });
            L.marker([35.45948819564614, 139.51540442491412], {
                icon: L.spriteIcon('orange')
            }).addTo(map).on('click', function(e) {
                popup
                    .setLatLng(e.latlng)
                    .setContent("相鉄ローゼン 希望ヶ丘店")
                    .openOn(map);
                window.location.href = 'http://localhost:8080/owlSquad/map/HTML/lo-zen.html';
                //window.open('http://localhost:8080/owlSquad/map/HTML/lo-zen.html', '_blank');
            });
            L.marker([35.46026438566595, 139.50994590460482], {
                icon: L.spriteIcon('green')
            }).addTo(map).on('click', function(e) {
                popup
                    .setLatLng(e.latlng)
                    .setContent("ライフ希望ヶ丘店")
                    .openOn(map);
                window.location.href = 'http://localhost:8080/owlSquad/map/HTML/life.html';
                //window.open('http://localhost:8080/owlSquad/map/HTML/life.html', '_blank');
            });

            $("#createMap").on('click', function() {
                // 地図を再表示
                if (!map) {
                    map = L.map('map').setView([35.658577, 139.745451], 12);

                    // OpenStreetMap から地図画像を読み込む
                    L.tileLayer('https://{s}.tile.osm.org/{z}/{x}/{y}.png', {
                        maxZoom: 18,
                        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, '
                    }).addTo(map);
                }

            });

            // leaflet.sprite
            L.Icon.Default.imagePath = 'https://unpkg.com/leaflet@1.3.1/dist/images/';
            // マーカーの色付け入れ      
            //      L.marker([35.7101,139.8067], {icon: L.spriteIcon()}).addTo(map); // default blue.
            //      L.marker([35.46039, 139.51537], {icon: L.spriteIcon('green')}).addTo(map);
            //      L.marker([35.7101,139.8107], {icon: L.spriteIcon('orange')}).addTo(map);
            //    L.marker([35.7101,139.8127], {icon: L.spriteIcon('yellow')}).addTo(map);
            //    L.marker([35.7101,139.8147], {icon: L.spriteIcon('red')}).addTo(map);
            //    L.marker([35.7101,139.8167], {icon: L.spriteIcon('purple')}).addTo(map);
            //    L.marker([35.7101,139.8187], {icon: L.spriteIcon('violet')}).addTo(map);


            //背景動かす
            $(function() {
                $('.burger-btn').on('click', function() {
                    $('.burger-btn').toggleClass('close');
                    $('.nav-wrapper').toggleClass('fade');
                    $('body').toggleClass('noscroll'); // 追記
                });
            });
        </script>
        <div style="text-align: right;">
            <h2 class="btnripple31" style="color: red;">● 赤 ロピア</h2>
            <h2 class="btnripple32" style="color: yellowgreen;">● 緑 ライフ</h2>
            <h2 class="btnripple33" style="color: orange;">●オレンジ 相鉄ローゼン</h2>
            <img src="./images/Owl_Search.jpg">
        </div>

        <footer id="footer">
            <small>&copy; Owl Squad</small>
        </footer>


        <!--/contaier-->
    </div>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDB6FrKwW-2S9R_OxHGIP3EKzb03zB55oU&callback=initMap&v=weekly" defer></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/4-2-2/js/4-2-2.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/4-2-2/js/4-2-2.js"></script>
    <div id="ground"></div>
</body>

</html>