<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
<%@ include file="../layouts/Menu.jsp" %>

        <header>

            
            <!-- ロゴ -->
            <div class="logo">
                <a href="./index.jsp">

                    <img src="data:image/webp;base64,UklGRhwEAABXRUJQVlA4IBAEAABQGACdASqCAIIAPpFInkwlpKKiIhZpyLASCWlu4XHRxz6ledd8JpGftt+M4YdqzdB4F9x9/qeNF739gD8vf870tc6n5n/c//P/kPgI/Vz0ufY3+0fstfrGMRWv3LKUDw6nzVxsbwvfh/UVjuzJRDq1YrF4NxvT4BqT/swtS1qJmq5AgmjU1pR/enEcjQjfDzbG5Fr5RYj8mrKBfwDGL5qHSuzYZq1e+MgyUcEZ+c+KGlCkdZ8faS3JsJh1QDFT91ZrQyNDwEW5gHgAAAD+/xFhlaqb8dbawC1dvdXdrOJAhzZX+PwtRuBgbT4QeNft6l4KCPY52ugfg10kPd//OqDjSF0AE/P73it9b0awK8imYqP+dg/9PTveY4eBc940Ukmn91cW3p2cSQdWmU3xKDb9ypc3MZKbxuHBlXY30Ll9QBmYet990RYtlsAtCkI3qnjMds9a60vg4C93SG/DZaCxavm/+7mmek4M6DXC7fWEf2XBOfAb/CAQdBoSH3/I9FsrXbmDAFlJKAeGpCJ4bO64xyY8nijO6++OdUotHlDba/DF3H1uFmFbZ3MaHDpI9uDXuwr1G7/LnN/HcPhpcm1VyDuXG2QB47RUzIx79fawlsp8oDdkbP8tjz4ceXBFhRNErc279ft8+pdXZWJhVspoyt5EGiSmpwvXI/mOkQmVSOcNJ+W/2cNs/mzkWLkIasrfkNEa/jcdOPjpi5jgB+iBEmpKhMJvhCegsolnJfccnCTWoiEZZWZ1MZXHn1f6tQGnfCZa+Mzefr1ca3wHGwgzln2b/lppp8qx/beDKPXb6C2BYJpW/9ELzz2t1esIlVPqEgK/0RSO8TsWb6SWmKv1wyZXWg3C6TIHPG7hRnbAuMFRhAoV9i7kJ9kAUNqrzCyl7aZj6jC/UM+YSZo4uDZPQlDzv/mpvvCTvW2OPhr+KKMFOJ/IXQKt6Xtc0xQ0taM3LGMX0iMMwWnpPxTUALIv23xHXjbNYvhPhAtgJb78uXc3FwMp/mrXdHWsKXIGnPHscQ8U+49K3+lX7FTIPfBmJ8FDCsDzb7KVRKtbJoexCk2LEOueo3xtzNCVFFYvzvSeSBjNfFMWEcpSMv3pRko4pOgOfvyDwms1the4z69+3qTFTbx70NrMFT0/HO9H/WlbzTt2YVFDANG/qqnV1F+6+FVHT1fj6KFP5ynSkssJXnV7kSu0bK9SZ3eTNFkhHRycOTpy8r5Jtf98fiPxDar37+bGtuUOb+vK1d6kahfweX+fqULaL38Uvrc0j7xGm7xfUY814Fnn/0cSxb2HkBo/5SXxOeuUgFQXFLuQ0fnrP6/ixTPgRKJ/UBW/6Zv7K/Z5eqYhLEcO0m8St90mtQZyeL/hh8IcV9r8epzK0AAAAA=="
                        alt="">
                </a>
            </div>

            <!-- タイトル -->
            <div class="theme mt-3 text-center ">
                <h1>ログイン</h1>
            </div>

        </header>

        <main class="container">

            <form action="login" method="post" id = "login-form">

                <!-- アカウント -->
                <div class="mt-3 form-group d-flex align-items-center">
                    <span class="user"></span>
                    <input type="text" name="userName" id="userName" placeholder="アカウント">
                </div>

                <!-- パスワード -->
                <div class="mt-3 form-group">
                    <span class="pwd"></span>
                    <span class="user"></span>
                    <input type="password" name="password" id="password" placeholder="パスワード">
                </div>

                <!-- buttons -->
                <button class="btn mt-3">Login</button>

            </form>

            <!-- アカウント作成ページに移行 -->
            <div class="text-center mt-4">
                <a href="./regist.jsp">新規登録</a>
            </div>

        </main>

