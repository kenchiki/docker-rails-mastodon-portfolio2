/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/field_mover.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/field_mover.js":
/*!*********************************************!*\
  !*** ./app/javascript/packs/field_mover.js ***!
  \*********************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "default", function() { return _default; });
/* harmony import */ var _flip__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./flip */ "./app/javascript/packs/flip.js");
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }



var _default =
/*#__PURE__*/
function () {
  function _default(container) {
    _classCallCheck(this, _default);

    this.container = container;
    this.handles = [];
  }

  _createClass(_default, [{
    key: "addButtonListener",
    value: function addButtonListener() {
      var _this = this;

      this.container.querySelectorAll('.nested-fields').forEach(function (nested) {
        _this.handles.push({
          elm: nested.querySelector('.js-up'),
          handle: function handle(event) {
            _this.up(event, _this.container, nested);

            _this.resetPosition();
          }
        });

        _this.handles.push({
          elm: nested.querySelector('.js-down'),
          handle: function handle(event) {
            _this.down(event, _this.container, nested);

            _this.resetPosition();
          }
        });
      });
      this.handles.forEach(function (event) {
        event['elm'].addEventListener('click', event['handle'], false);
      });
    }
  }, {
    key: "removeButtonListener",
    value: function removeButtonListener() {
      this.handles.forEach(function (event) {
        event['elm'].removeEventListener('click', event['handle'], false);
      });
      this.handles = [];
    }
  }, {
    key: "resetPosition",
    value: function resetPosition() {
      this.container.querySelectorAll('.nested-fields').forEach(function (nested, index) {
        nested.querySelector('.js-position').value = index + 1;
      });
    }
  }, {
    key: "up",
    value: function up(event, container, nested) {
      event.preventDefault();
      var flip = new _flip__WEBPACK_IMPORTED_MODULE_0__["default"](nested);
      flip.up(container.querySelectorAll('.nested-fields'));
    }
  }, {
    key: "down",
    value: function down(event, container, nested) {
      event.preventDefault();
      var flip = new _flip__WEBPACK_IMPORTED_MODULE_0__["default"](nested);
      flip.down(container.querySelectorAll('.nested-fields'));
    }
  }]);

  return _default;
}();



/***/ }),

/***/ "./app/javascript/packs/flip.js":
/*!**************************************!*\
  !*** ./app/javascript/packs/flip.js ***!
  \**************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "default", function() { return _default; });
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }

var _default =
/*#__PURE__*/
function () {
  function _default(source) {
    _classCallCheck(this, _default);

    this.source = source;
  }

  _createClass(_default, [{
    key: "up",
    value: function up(scope) {
      var index = Array.prototype.indexOf.call(scope, this.source);

      if (index - 1 < 0) {
        return;
      }

      var prev = scope[index - 1];
      this.flip(prev);
    }
  }, {
    key: "down",
    value: function down(scope) {
      var index = Array.prototype.indexOf.call(scope, this.source);

      if (index + 1 >= scope.length) {
        return;
      }

      var next = scope[index + 1];
      this.flip(next);
    }
  }, {
    key: "flip",
    value: function flip(target) {
      // first
      var sourceFirst = this.source.getBoundingClientRect();
      var targetFirst = target.getBoundingClientRect(); // last

      var parent = this.source.parentNode;
      var sourcePrev = this.source.previousElementSibling;
      var targetPrev = target.previousElementSibling;
      parent.insertBefore(this.source, targetPrev ? targetPrev.nextElementSibling : parent.firstElementChild);
      parent.insertBefore(target, sourcePrev ? sourcePrev.nextElementSibling : parent.firstElementChild);
      var sourceLast = this.source.getBoundingClientRect();
      var targetLast = target.getBoundingClientRect(); // invert

      var sourceInvertX = sourceFirst.left - sourceLast.left;
      var sourceInvertY = sourceFirst.top - sourceLast.top;
      var targetInvertX = targetFirst.left - targetLast.left;
      var targetInvertY = targetFirst.top - targetLast.top; // play

      var animeOption = {
        duration: 300,
        easing: 'ease-out'
      };
      this.source.animate([{
        transform: "translate(".concat(sourceInvertX, "px, ").concat(sourceInvertY, "px)")
      }, {
        transform: 'translate(0, 0)'
      }], animeOption);
      target.animate([{
        transform: "translate(".concat(targetInvertX, "px, ").concat(targetInvertY, "px)")
      }, {
        transform: 'translate(0, 0)'
      }], animeOption);
    }
  }]);

  return _default;
}();



/***/ })

/******/ });
//# sourceMappingURL=field_mover-3404a54c1c4e448dc1f0.js.map