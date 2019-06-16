export default function (elm, limit) {
  function check_to_hide_or_show_add_link() {
    const add = elm.querySelector('.add_fields');

    if (elm.querySelectorAll('.nested-fields').length === limit) {
      add.style.display = 'none';
    } else {
      add.style.display = '';
    }
  }

  $(elm).on('cocoon:after-insert cocoon:after-remove', function() {
    check_to_hide_or_show_add_link();
  });

  check_to_hide_or_show_add_link();
}
