import Flip from './flip';

export default class {
  constructor(container) {
    this.container = container;
    this.handles = [];
  }

  addButtonListener() {
    this.container.querySelectorAll('.nested-fields').forEach((nested) => {
      this.handles.push({
        elm: nested.querySelector('.js-up'),
        handle: (event) => {
          this.up(event, this.container, nested);
          this.resetPosition();
        }
      });
      this.handles.push({
        elm: nested.querySelector('.js-down'),
        handle: (event) => {
          this.down(event, this.container, nested);
          this.resetPosition();
        }
      });
    });

    this.handles.forEach(function (event) {
      event['elm'].addEventListener('click', event['handle'], false);
    })
  }

  removeButtonListener() {
    this.handles.forEach(function (event) {
      event['elm'].removeEventListener('click', event['handle'], false);
    });
    this.handles = [];
  }

  resetPosition() {
    this.container.querySelectorAll('.nested-fields').forEach(function (nested, index) {
      nested.querySelector('.js-position').value = index + 1;
    });
  }

  up(event, container, nested) {
    event.preventDefault();

    const flip = new Flip(nested);
    flip.up(container.querySelectorAll('.nested-fields'));
  }

  down(event, container, nested) {
    event.preventDefault();

    const flip = new Flip(nested);
    flip.down(container.querySelectorAll('.nested-fields'));
  }
}
