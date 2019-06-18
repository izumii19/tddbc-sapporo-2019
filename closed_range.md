整数の閉区間
==========

本演習は TDD を体験することを主眼としていますので、 __プログラミングの速さを競っているのではない__ 点にご注意ください。
機能を粗く速く実装することよりも、テストを書いて動かすことによるフィードバックを受けながら、
リファクタリングを忘れずに着実に進めていくことの方が、本演習では重要です。

前提知識
----------

区間 (Range) とは
> 区間とは ，数直線上のある区切りの間の数（実数）の集合のことである。区切りの数を含むか含まないかで区間の呼び方が異なり，開区間，閉区間，半開区間がある(KIT数学ナビゲーションより)。
> 
> (難しく聞こえますが、小学校の時に習った数直線のことです)

閉区間 (Closed Range) とは
> 区切りを含む(例えば aとbの両端を含む)場合を閉区間という。

### 例: 閉区間 [3,8] の場合

    [3,8]
    -> 下端点 (lower endpoint) が 3 , 上端点 (upper endpoint) が 8 である整数閉区間
    -> 3 と 8 は区間に含まれる
    -> つまり (整数閉区間だから) 3,4,5,6,7,8

![閉区間 KIT数学ナビゲーションより](http://w3e.kanazawa-it.ac.jp/math/category/other/img/heikukan.gif "閉区間")


問題文
----------

整数閉区間を示すクラス（あるいは構造体）をつくりたい。整数閉区間は下端点と上端点を持ち、文字列としても表現できる（例: 下端点 3, 上端点 8 の整数閉区間の文字列表記は `"[3,8]"`）。ただし、上端点より下端点が大きい閉区間を作ることはできない。整数の閉区間は指定した整数を含むかどうかを判定できる。また、別の閉区間と等価かどうかや、完全に含まれるかどうかも判定できる。


![クリエイティブ・コモンズ 表示 - 継承 2.1 日本](http://i.creativecommons.org/l/by-sa/2.1/jp/88x31.png)
この演習問題は [クリエイティブ・コモンズ 表示 - 継承 2.1 日本 ライセンス](http://creativecommons.org/licenses/by-sa/2.1/jp/)の下に提供されています。



短縮URL: http://bit.ly/2uEATGA