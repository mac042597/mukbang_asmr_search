'use strict';

{
  window.addEventListener('turbolinks:load', function(){

  $('.current_nav_icon').click(function () { 
    var target = $(this).data('modalLink');
    //変数targetにクリックしたメニューボタンの
    //data-modal-linkというカスタムデータクラスに入っている投稿のidを入れる
    $('[data-modal-content = ' + target + ']').fadeIn();
    });
    
    $('.close-menu').click(function () {
    $('.current_action_nav').fadeOut();
    //クローズボタンをクリックして、フェードインしたものをフェードアウトで消す
    });

  (function () {
    if ($(".js-modal-video").length) { //クラス名js-modal-videoがあれば以下を実行
      $(".js-modal-video").modalVideo({
        channel: "youtube",
        youtube: {
          rel: 0, //関連動画の指定
          autoplay: 0, //自動再生の指定
          controls: 1, //コントロールさせるかどうかの指定
        },
      });
    }
  })();
  })
}