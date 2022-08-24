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
  })
}