<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    	 <%@ include file="../layouts/Menu.jsp" %>
    	
        <div class="logo">
            <img src="data:image/webp;base64,UklGRhwEAABXRUJQVlA4IBAEAABQGACdASqCAIIAPpFInkwlpKKiIhZpyLASCWlu4XHRxz6ledd8JpGftt+M4YdqzdB4F9x9/qeNF739gD8vf870tc6n5n/c//P/kPgI/Vz0ufY3+0fstfrGMRWv3LKUDw6nzVxsbwvfh/UVjuzJRDq1YrF4NxvT4BqT/swtS1qJmq5AgmjU1pR/enEcjQjfDzbG5Fr5RYj8mrKBfwDGL5qHSuzYZq1e+MgyUcEZ+c+KGlCkdZ8faS3JsJh1QDFT91ZrQyNDwEW5gHgAAAD+/xFhlaqb8dbawC1dvdXdrOJAhzZX+PwtRuBgbT4QeNft6l4KCPY52ugfg10kPd//OqDjSF0AE/P73it9b0awK8imYqP+dg/9PTveY4eBc940Ukmn91cW3p2cSQdWmU3xKDb9ypc3MZKbxuHBlXY30Ll9QBmYet990RYtlsAtCkI3qnjMds9a60vg4C93SG/DZaCxavm/+7mmek4M6DXC7fWEf2XBOfAb/CAQdBoSH3/I9FsrXbmDAFlJKAeGpCJ4bO64xyY8nijO6++OdUotHlDba/DF3H1uFmFbZ3MaHDpI9uDXuwr1G7/LnN/HcPhpcm1VyDuXG2QB47RUzIx79fawlsp8oDdkbP8tjz4ceXBFhRNErc279ft8+pdXZWJhVspoyt5EGiSmpwvXI/mOkQmVSOcNJ+W/2cNs/mzkWLkIasrfkNEa/jcdOPjpi5jgB+iBEmpKhMJvhCegsolnJfccnCTWoiEZZWZ1MZXHn1f6tQGnfCZa+Mzefr1ca3wHGwgzln2b/lppp8qx/beDKPXb6C2BYJpW/9ELzz2t1esIlVPqEgK/0RSO8TsWb6SWmKv1wyZXWg3C6TIHPG7hRnbAuMFRhAoV9i7kJ9kAUNqrzCyl7aZj6jC/UM+YSZo4uDZPQlDzv/mpvvCTvW2OPhr+KKMFOJ/IXQKt6Xtc0xQ0taM3LGMX0iMMwWnpPxTUALIv23xHXjbNYvhPhAtgJb78uXc3FwMp/mrXdHWsKXIGnPHscQ8U+49K3+lX7FTIPfBmJ8FDCsDzb7KVRKtbJoexCk2LEOueo3xtzNCVFFYvzvSeSBjNfFMWEcpSMv3pRko4pOgOfvyDwms1the4z69+3qTFTbx70NrMFT0/HO9H/WlbzTt2YVFDANG/qqnV1F+6+FVHT1fj6KFP5ynSkssJXnV7kSu0bK9SZ3eTNFkhHRycOTpy8r5Jtf98fiPxDar37+bGtuUOb+vK1d6kahfweX+fqULaL38Uvrc0j7xGm7xfUY814Fnn/0cSxb2HkBo/5SXxOeuUgFQXFLuQ0fnrP6/ixTPgRKJ/UBW/6Zv7K/Z5eqYhLEcO0m8St90mtQZyeL/hh8IcV9r8epzK0AAAAA=="
                alt="">
        </div>
        <h2 class="text-center p-5">ユーザー登録</h2>

        <main class="container">
            <form action="register" method="post" id="register-form">

                <div class="row mb-3">
                    <div class="form-group col-md-6 ">
                        <label class="form-label" for="InputName">氏名</label>
                        <span class="text-danger">*</span>
                        <input id="InputName" class="form-control" type="text" name="name" required>
                    </div>

                    <div class="form-group col-md-6 ">
                        <label class="form-label" for="InputEmail">Email</label>
                        <span class="text-danger">*</span>
                        <input id="InputEmail" class="form-control" type="email" name="email" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="form-group col-md-6 ">
                        <label class="form-label" for="InputName">パスワード</label>
                        <span class="text-danger">*</span>
                        <input id="InputPassword" class="form-control" type="password" name="password" required>
                    </div>

                    <div class="form-group col-md-2 ">
                        <label class="form-label" for="InputZip">郵便局</label>
                        <span class="text-danger">*</span>
                        <input id="InputEmaiZip" class="form-control" type="text" name="post-office" required>
                    </div>
                    <div class="form-group col-md-3 ">
                        <label class="form-label" for="InputPrecture">都道府県</label>
                        <span class="text-danger">*</span>
                        <select name="prefecture" id="InputPrecture" class="form-control">
                        <option value="12">千葉県</option>
                        <option value="13">東京都</option>
                        <option value="14" selected>神奈川県</option>
                    </select>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="form-group col-md-6 ">
                        <label class="form-label" for="InputCity">市区町村</label>
                        <!-- <span class="text-danger">*</span> -->
                        <input id="InputCity" class="form-control" type="text" name="city">
                    </div>

                    <div class="form-group col-md-6 ">
                        <label class="form-label" for="InputZip">町名番地</label>
                        <!-- <span class="text-danger">*</span> -->
                        <input id="InputEmaiZip" class="form-control" type="text" name="street">
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="form-group col-md-12 ">
                        <label class="form-label" for="InputBuilding">建物・部屋番号</label>

                        <input id="InputBuilding" class="form-control" type="text" name="room_number" > </div>
                </div>
                <p class="alert alert-warning">
                    ユーザー登録サービス利用規定・個人情報のお取り扱いについて
                </p>
                <div class="row mb-3">
                    <div class="form-agree">
                        <input id="inputAgree" class="form-check-input" type="checkbox" name="agree">
                        <label for="inputAgree" class="form-check-label">同意する</label>
                    </div>
                </div>
                <div class="d-grid mb-3">
                    <button class="btn btn-primary" name="signup" id="signup" value="Register">ログイン</button>
                </div>
                
            </form>

        </main>