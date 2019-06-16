export default class  {
  constructor(source) {
    this.source = source;
  }

  up(scope) {
    const index = Array.prototype.indexOf.call(scope, this.source);

    if ((index - 1) < 0) {
      return;
    }
    const prev = scope[index - 1];
    this.flip(prev);
  }

  down(scope) {
    const index = Array.prototype.indexOf.call(scope, this.source);

    if ((index + 1) >= scope.length) {
      return;
    }
    const next = scope[index + 1];
    this.flip(next);
  }

  flip(target) {
    // first
    const sourceFirst = this.source.getBoundingClientRect();
    const targetFirst = target.getBoundingClientRect();

    // last
    const parent = this.source.parentNode;

    const sourcePrev = this.source.previousElementSibling;
    const targetPrev = target.previousElementSibling;

    parent.insertBefore(this.source, targetPrev ? targetPrev.nextElementSibling : parent.firstElementChild);
    parent.insertBefore(target, sourcePrev ? sourcePrev.nextElementSibling : parent.firstElementChild);

    const sourceLast = this.source.getBoundingClientRect();
    const targetLast = target.getBoundingClientRect();

    // invert
    const sourceInvertX = sourceFirst.left - sourceLast.left;
    const sourceInvertY = sourceFirst.top - sourceLast.top;

    const targetInvertX = targetFirst.left - targetLast.left;
    const targetInvertY = targetFirst.top - targetLast.top;

    // play
    const animeOption = {
      duration: 300,
      easing: 'ease-out'
    }

    this.source.animate(
      [
        { transform: `translate(${sourceInvertX}px, ${sourceInvertY}px)` },
        { transform: 'translate(0, 0)' },
      ],
      animeOption
    );

    target.animate(
      [
        { transform: `translate(${targetInvertX}px, ${targetInvertY}px)` },
        { transform: 'translate(0, 0)' },
      ],
      animeOption
    );
  }
}
