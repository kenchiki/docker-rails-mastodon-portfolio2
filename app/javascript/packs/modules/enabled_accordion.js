export default class {
  constructor(container) {
    this.container = container;
    this.enabled = this.container.querySelector('.js-enabled');
    this.accordion = this.container.querySelector('.js-accordion');
  }

  applyStatus() {
    if (this.enabled.checked) {
      this.accordion.style.display = '';
    } else {
      this.accordion.style.display = 'none';
    }
  }

  addEnabledListener() {
    const SPEED = 200;
    this.enabled.addEventListener('change', (event) => {
      if (this.enabled.checked) {
        $(this.accordion).slideDown(SPEED);
      } else {
        $(this.accordion).slideUp(SPEED);
      }
    });
  }
}
