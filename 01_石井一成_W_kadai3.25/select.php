<?php
//1.  DB接続します xxxにDB名を入れます
try {
  $pdo = new PDO('mysql:dbname=a_db;charset=utf8;host=localhost', 'root', 'root');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。' . $e->getMessage());
}

//２．データ登録SQL作成
//作ったテーブル名を書く場所  xxxにテーブル名を入れます
$stmt = $pdo->prepare("SELECT * FROM a_table");
$status = $stmt->execute();

//３．データ表示
$view = "";
if ($status == false) {
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:" . $error[2]);
} else {
  //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを表示させる例
  while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $view .= "<p>";
    $view .= $result["id"] . "　季節：" . $result["season"] . "　日時：" . $result["datetime"] . "　天気:" . $result["weather"] . "　気温:" . $result["temperature"] . "　都道府県:" . $result["pref_name"] . "　場所:" . $result["field"] . "　大きさ:" . $result["size"] . "　色:" . $result["color"] . "　名前:" . $result["name"] . "　コメント:" . $result["comment"] . "　登録日時:" . $result["indate"];
    $view .= "</p>";
  }
}
?>


<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>野鳥観察記録閲覧</title>
  <style>
    div {
      padding: 10px;
      font-size: 16px;
    }
  </style>
</head>

<body id="main">
  <!-- Head[Start] -->
  <header>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="index.php">データ登録に戻る</a>
        </div>
      </div>
    </nav>
  </header>
  <!-- Head[End] -->

  <!-- Main[Start] $view-->
  <div>
    <div class="container jumbotron"><?= $view ?></div>
  </div>
  <!-- Main[End] -->

</body>

</html>