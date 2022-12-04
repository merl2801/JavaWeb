<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- データ取得  -->
   
    <% String place=request.getParameter("place"); %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Owl Search</title>
            <link rel="stylesheet" href="./css/start.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        </head>
        <meta charset="UTF-8">
        <title>Insert title here</title>

        <body>

            <header>

                <!-- ロゴ -->
                <div class="logo container">
                    <img src="data:image/webp;base64,UklGRhwEAABXRUJQVlA4IBAEAABQGACdASqCAIIAPpFInkwlpKKiIhZpyLASCWlu4XHRxz6ledd8JpGftt+M4YdqzdB4F9x9/qeNF739gD8vf870tc6n5n/c//P/kPgI/Vz0ufY3+0fstfrGMRWv3LKUDw6nzVxsbwvfh/UVjuzJRDq1YrF4NxvT4BqT/swtS1qJmq5AgmjU1pR/enEcjQjfDzbG5Fr5RYj8mrKBfwDGL5qHSuzYZq1e+MgyUcEZ+c+KGlCkdZ8faS3JsJh1QDFT91ZrQyNDwEW5gHgAAAD+/xFhlaqb8dbawC1dvdXdrOJAhzZX+PwtRuBgbT4QeNft6l4KCPY52ugfg10kPd//OqDjSF0AE/P73it9b0awK8imYqP+dg/9PTveY4eBc940Ukmn91cW3p2cSQdWmU3xKDb9ypc3MZKbxuHBlXY30Ll9QBmYet990RYtlsAtCkI3qnjMds9a60vg4C93SG/DZaCxavm/+7mmek4M6DXC7fWEf2XBOfAb/CAQdBoSH3/I9FsrXbmDAFlJKAeGpCJ4bO64xyY8nijO6++OdUotHlDba/DF3H1uFmFbZ3MaHDpI9uDXuwr1G7/LnN/HcPhpcm1VyDuXG2QB47RUzIx79fawlsp8oDdkbP8tjz4ceXBFhRNErc279ft8+pdXZWJhVspoyt5EGiSmpwvXI/mOkQmVSOcNJ+W/2cNs/mzkWLkIasrfkNEa/jcdOPjpi5jgB+iBEmpKhMJvhCegsolnJfccnCTWoiEZZWZ1MZXHn1f6tQGnfCZa+Mzefr1ca3wHGwgzln2b/lppp8qx/beDKPXb6C2BYJpW/9ELzz2t1esIlVPqEgK/0RSO8TsWb6SWmKv1wyZXWg3C6TIHPG7hRnbAuMFRhAoV9i7kJ9kAUNqrzCyl7aZj6jC/UM+YSZo4uDZPQlDzv/mpvvCTvW2OPhr+KKMFOJ/IXQKt6Xtc0xQ0taM3LGMX0iMMwWnpPxTUALIv23xHXjbNYvhPhAtgJb78uXc3FwMp/mrXdHWsKXIGnPHscQ8U+49K3+lX7FTIPfBmJ8FDCsDzb7KVRKtbJoexCk2LEOueo3xtzNCVFFYvzvSeSBjNfFMWEcpSMv3pRko4pOgOfvyDwms1the4z69+3qTFTbx70NrMFT0/HO9H/WlbzTt2YVFDANG/qqnV1F+6+FVHT1fj6KFP5ynSkssJXnV7kSu0bK9SZ3eTNFkhHRycOTpy8r5Jtf98fiPxDar37+bGtuUOb+vK1d6kahfweX+fqULaL38Uvrc0j7xGm7xfUY814Fnn/0cSxb2HkBo/5SXxOeuUgFQXFLuQ0fnrP6/ixTPgRKJ/UBW/6Zv7K/Z5eqYhLEcO0m8St90mtQZyeL/hh8IcV9r8epzK0AAAAA=="
                        alt="">
                </div>

                <!-- タイトル -->
                <section id="banner">
                    <div class="container">
                        <label for="">Owl Search</label>
                    </div>
                </section>
            </header>

            <main class="container">

                <section id="radio">
                    <form action="" method="GET">
                        <div class="container">
                            <label class="heading" for="">検索方法</label><br>
                            <label><input type="radio" name="place" value="local" checked>地図から検索</label>
                            <label><input type="radio" name="place" value="search">店舗名を入力して検索</label>
                        </div>
                    </form>
                    <form action="" method="post">
                        <div class="row mb-3">
                            <div>
                                <label for="" class="form-label">店舗名</label>
                                <span class="text-danger"></span>
                                <input type="text" class="form-control" name="name">
                            </div>
                        </div>

                        <div class="container">
                            <button class="search">検索</button>
                        </div>
                        <!-- <div class="container">
                    <input type="button" value="Check" id="checkButton">
                    <button class="search">検索</button>
                </div> -->
                    </form>
                    
                </section>

                <!-- <p>
                    <%= place %>
                </p> -->

            </main>

            <footer>
                <div class="container">
                    <a href="./login.jsp">>>登録・ログインはこちら</a>
                </div>

            </footer>

        </body>

        </html>