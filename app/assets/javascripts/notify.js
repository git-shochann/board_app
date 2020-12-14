
// Topコントローラーのindexアクションに対するindex.html.erbのJSファイル

$(function(){

  $(".bot").on("click", function(){
    const win = window.open("https://fril.jp/likes")
    win.focus()
    console.log("テスト成功")
  })

// let element = document.getElementsByClassName('.text-center');

// let observer = new MutationObserver(function(){
//   console.log("テスト完了")
// });

// let config = {
//   childList:true
// };

// observer.observe(element,config)




// // discord webhook
// // ボタンを押したら別タブのwindowを開く

});
