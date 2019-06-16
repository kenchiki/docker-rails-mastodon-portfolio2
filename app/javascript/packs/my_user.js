import EnabledAccordion from './modules/enabled_accordion';

document.addEventListener('turbolinks:load', function () {
  const enabledAccordion = new EnabledAccordion(document.querySelector('.js-enabled-accordion'));
  enabledAccordion.applyStatus();
  enabledAccordion.addEnabledListener();
});
