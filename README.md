# Java サーブレット/JSP MVCテンプレート

## ルール

本テンプレートはファイルの追加場所や名前の付け方などにルールを設けています。

### ルール1：モデルの作成

クラス名は `<任意の名前>Model` とし、`model.Model` クラスを継承してください。
作成場所は `/src/main/java/model/` です。

### ルール2：コントローラーの作成

クラス名は `<任意の名前>Controller` とし、`controller.Controller` クラスを継承してください。
作成場所は `/src/main/java/controller/` です。

`controller.Controller` クラスには以下の7つの抽象メソッドが定義されています。

1. `public void indexAction()`
2. `public void showAction()`
3. `public void newAction()`
4. `public void editAction()`
5. `public void createAction()`
6. `public void updateAction()`
7. `public void deleteAction()`

1～4はGETリクエスを受けて、結果を対応するjspにフォワードします。
5～7はPOSTリクエストを受けて、データベースに書き込みを行います。
ただし、jspへのフォワードは行われません。

### ルール3：DAOの作成

クラス名は、`<任意の名前>DAO` とし、`dao.DAO` クラスを継承してください。
作成場所は、`/src/main/java/dao/`です。

### ルール4：URLとコントローラーの関連付け(ルーティング)

`WEB-INF/web.xml` の `<servlet-name>frontController</servlet-name>` を含む 
`<servlet-mapping>` タグ下に以下のように追加してください。

```xml
<servlet-mapping>
  <servlet-name>frontController</servlet-name>
  <!--
    <url-pattern>/<コントローラ名>/*</url-pattern>のように記述します。
    例えば、IndexControllerの場合、以下のように指定します。
   -->
  <url-pattern>/index/*</url-pattern>
</servlet-mapping>
```

### ルール5：jspファイルの作成場所と命名規則

jpsファイルは `webapp/WEB-INF/jsp/<コントローラ名>/<アクション名>.jsp` の形式で
作成してください。例えば、`User` モデルを操作する `UserController`の `index` 
アクションのビューである `jsp` ファイルを作成する場合、`webapp/WEB-INF/jsp/user/index.jsp`
となります。
