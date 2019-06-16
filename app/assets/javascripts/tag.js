document.addEventListener('turbolinks:load', function () {
  (function () {
    const user_skill_list = document.querySelector('#user_skill_list');
    if (!user_skill_list) return;

    const tagify = new Tagify(user_skill_list, {
      whitelist: ["A# .NET", "A# (Axiom)", "A-0 System", "A+"]
    });

    document.addEventListener('submit', (event) => {
      user_skill_list.value = tagify.value.map(tag => tag.value).join(',');
    });

    const ajax_url = user_skill_list.getAttribute('data-ajax');

    axios.get(ajax_url)
      .then((response) => {
        tagify.settings.whitelist = response.data.map(tag => tag.name);
      })
      .catch(function (error) {
        //  TODO:エラー処理
      });
  })();
});
