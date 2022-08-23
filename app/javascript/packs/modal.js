'use strict';

{
  window.addEventListener('load', function(){

    const open = document.getElementById('open');
    const overlay = document.getElementById('overlay');
    const modal_open = document.getElementById('modal-open');
    const close = document.getElementById('close');

    open.addEventListener('click', () => {
      overlay.classList.remove('hidden');
      modal_open.classList.remove('hidden');
    });

    close.addEventListener('click', () => {
      overlay.classList.add('hidden');
      modal_open.classList.add('hidden');
    });
  })
}