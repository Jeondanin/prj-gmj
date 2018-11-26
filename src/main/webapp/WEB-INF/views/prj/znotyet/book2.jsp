<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="en" class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths"><head><script src="//static.codepen.io/assets/editor/live/console_runner-ce3034e6bde3912cc25f83cccb7caa2b0f976196f2f2d52303a462c826d54a73.js"></script><script src="//static.codepen.io/assets/editor/live/css_reload-2a5c7ad0fe826f66e054c6020c99c1e1c63210256b6ba07eb41d7a4cb0d0adab.js"></script><meta charset="UTF-8"><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//static.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico"><link rel="mask-icon" type="" href="//static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111"><link rel="canonical" href="https://codepen.io/acebalajadia/pen/Qampgz">


<style class="cp-pen-styles">/* line 3, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d] [data-prev-button] {
  position: absolute;
  height: 100%;
  width: 15%;
  top: 0px;
  left: 0px;
}
/* line 10, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d] [data-next-button] {
  position: absolute;
  height: 100%;
  width: 15%;
  top: 0px;
  right: 0px;
}

/* line 22, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d] {
  position: relative;
  overflow: hidden;
}
/* line 26, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d] > [data-children-wrapper] {
  perspective: 3000px;
  -ms-perspective: 3000px;
  -moz-perspective: 3000px;
  -webkit-perspective: 3000px;
}
/* line 32, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d] > [data-children-wrapper] > [data-child] {
  transition: 1s;
  -ms-transition: 1s;
  -moz-transition: 1s;
  -webkit-transition: 1s;
}

/* line 43, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d] {
  box-sizing: border-box;
  width: 100%;
  height: 100%;
}
/* line 50, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d] > [data-children-wrapper] > [data-child] {
  position: absolute;
  overflow: hidden;
  box-sizing: border-box;
  width: 100%;
  height: 100%;
}
/* line 59, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d]
  > [data-children-wrapper]
  > [data-child]
  > [data-child-frame]
  > [data-content-wrapper] {
  box-sizing: border-box;
  transform-origin: 0px 0px;
  -ms-transform-origin: 0px 0px;
  -moz-transform-origin: 0px 0px;
  -webkit-transform-origin: 0px 0px;
}

/* line 75, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d]:before {
  padding-top: 40%;
  display: block;
  content: "";
}
/* line 82, ../../styles/common/jquery.carousel-3d.scss */
[data-carousel-3d] [data-children-wrapper] {
  position: absolute;
  top: 0;
  bottom: 0;
  right: 26%;
  left: 26%;
}

/* line 9, ../../styles/theme/jquery.carousel-3d.default.scss */
[data-carousel-3d] {
  background: linear-gradient(0deg, #c8c8c8, white, #c8c8c8);
  background: -ms-linear-gradient(0deg, #c8c8c8, white, #c8c8c8);
  background: -moz-linear-gradient(0deg, #c8c8c8, white, #c8c8c8);
  background: -webkit-linear-gradient(0deg, #c8c8c8, white, #c8c8c8);
  filter: progid:DXImageTransform.Microsoft.gradient(
      startColorstr="#eeeeee",
      endColorstr="#ffffff",
      GradientType=0
    );
  -ms-filter: progid:DXImageTransform.Microsoft.gradient(
      startColorstr="#eeeeee",
      endColorstr="#ffffff",
      GradientType=0
    );
}

/* line 19, ../../styles/theme/jquery.carousel-3d.default.scss */
[data-carousel-3d] {
  border: 3px solid #e0e0e0;
}

/* line 26, ../../styles/theme/jquery.carousel-3d.default.scss */
[data-carousel-3d] [data-prev-button]:before {
  content: url("./images/default/prev.png");
  content: "\f053";
  font-family: FontAwesome;
  font-size: 50px;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  width: 43px;
  height: 49px;
  margin: auto;
}
/* line 39, ../../styles/theme/jquery.carousel-3d.default.scss */
[data-carousel-3d] [data-next-button]:before {
  content: url("./images/default/next.png");
  content: "\f054";
  font-family: FontAwesome;
  font-size: 50px;
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  width: 43px;
  height: 49px;
  margin: auto;
}

/* line 53, ../../styles/theme/jquery.carousel-3d.default.scss */
[data-child-frame] {
  border: 5px solid #ffffff;
}

html,
body {
  margin: 0px;
}
.wrapper {
  width: 100%;
}
.slide .main-image {
  display: block;
  margin: 0 auto 15px;
}
.slide .more-info:before,
.slide .more-info:after {
  display: table;
  content: " ";
  -webkit-flex-basis: 0;
  -ms-flex-preferred-size: 0;
  flex-basis: 0;
  -webkit-box-ordinal-group: 2;
  -webkit-order: 1;
  -ms-flex-order: 1;
  order: 1;
}
.slide .more-info:after,
.clearfix {
  clear: both;
}
.slide .more-info .logo {
  float: left;
  width: 20%;
  padding: 0 1%;
}
.slide .more-info .content {
  float: left;
  width: 40%;
  padding: 0 1%;
}
.slide .more-info .author {
  float: left;
  width: 25%;
  padding: 0 1%;
}
.slide .more-info .author span{
  display:block;
}
.slide .more-info p {
  margin: 0;
}
/* override */
[data-child-frame] {
  border: none;
}
</style></head><body>



  <meta charset="UTF-8">
  <title></title>
  <link rel="stylesheet" href="../dist/styles/jquery.carousel-3d.default.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-resize/1.1/jquery.ba-resize.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.waitforimages/2.2.0/jquery.waitforimages.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>



 
  <div class="wrapper">
    <div data-carousel-3d="">
      
      
      
      
      
      
    <div data-children-wrapper=""><div data-child="" style="transform: translateZ(-225.513px) rotateY(-180deg) translateZ(225.513px); opacity: -1; z-index: 0; padding-left: 0px; padding-top: 0px;"><div data-child-frame="" style="width: 246.013px; height: 207px;"><div data-content-wrapper="" style="width: 536px; height: 451px; transform: scale(0.45898);"><div class="slide" style="visibility: visible;">
        <img src="http://via.placeholder.com/450x350" alt="" class="main-image">
        <div class="more-info">
          <img src="http://via.placeholder.com/150x50" alt="" class="logo">
          <p class="content">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae repudiandae facere fugit doloremque
          </p>
          <p class="author">
            <span>Shauna Mounsey</span>
            <span>SEO at Roomgofer</span>
          </p>
        </div>
      </div></div></div></div><div data-child="" style="transform: translateZ(-225.513px) rotateY(-120deg) translateZ(225.513px); opacity: -0.5; z-index: 50; padding-left: 0px; padding-top: 0px;"><div data-child-frame="" style="width: 246.013px; height: 207px;"><div data-content-wrapper="" style="width: 536px; height: 451px; transform: scale(0.45898);"><div class="slide" style="visibility: visible;">
        <img src="http://via.placeholder.com/450x350" alt="" class="main-image">
        <div class="more-info">
          <img src="http://via.placeholder.com/150x50" alt="" class="logo">
          <p class="content">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae repudiandae facere fugit doloremque
          </p>
          <p class="author">
            <span>Shauna Mounsey</span>
            <span>SEO at Roomgofer</span>
          </p>
        </div>
      </div></div></div></div><div data-child="" style="transform: translateZ(-225.513px) rotateY(-60deg) translateZ(225.513px); opacity: 0.5; z-index: 150; padding-left: 0px; padding-top: 0px;"><div data-child-frame="" style="width: 246.013px; height: 207px;"><div data-content-wrapper="" style="width: 536px; height: 451px; transform: scale(0.45898);"><div class="slide" style="visibility: visible;">
        <img src="http://via.placeholder.com/450x350" alt="" class="main-image">
        <div class="more-info">
          <img src="http://via.placeholder.com/150x50" alt="" class="logo">
          <p class="content">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae repudiandae facere fugit doloremque
          </p>
          <p class="author">
            <span>Shauna Mounsey</span>
            <span>SEO at Roomgofer</span>
          </p>
        </div>
      </div></div></div></div><div data-child="" style="transform: translateZ(-225.513px) rotateY(0deg) translateZ(225.513px); opacity: 1; z-index: 200; padding-left: 0px; padding-top: 0px;"><div data-child-frame="" style="width: 246.013px; height: 207px;"><div data-content-wrapper="" style="width: 536px; height: 451px; transform: scale(0.45898);"><div class="slide" style="visibility: visible;">
        <img src="http://via.placeholder.com/450x350" alt="" class="main-image">
        <div class="more-info">
          <img src="http://via.placeholder.com/150x50" alt="" class="logo">
          <p class="content">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae repudiandae facere fugit doloremque
          </p>
          <p class="author">
            <span>Shauna Mounsey</span>
            <span>SEO at Roomgofer</span>
          </p>
        </div>
      </div></div></div></div><div data-child="" style="transform: translateZ(-225.513px) rotateY(60deg) translateZ(225.513px); opacity: 0.5; z-index: 150; padding-left: 0px; padding-top: 0px;"><div data-child-frame="" style="width: 246.013px; height: 207px;"><div data-content-wrapper="" style="width: 536px; height: 451px; transform: scale(0.45898);"><div class="slide" style="visibility: visible;">
        <img src="http://via.placeholder.com/450x350" alt="" class="main-image">
        <div class="more-info">
          <img src="http://via.placeholder.com/150x50" alt="" class="logo">
          <p class="content">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae repudiandae facere fugit doloremque
          </p>
          <p class="author">
            <span>Shauna Mounsey</span>
            <span>SEO at Roomgofer</span>
          </p>
        </div>
      </div></div></div></div><div data-child="" style="transform: translateZ(-225.513px) rotateY(120deg) translateZ(225.513px); opacity: -0.5; z-index: 50; padding-left: 0px; padding-top: 0px;"><div data-child-frame="" style="width: 246.013px; height: 207px;"><div data-content-wrapper="" style="width: 536px; height: 451px; transform: scale(0.45898);"><div class="slide" style="visibility: visible;">
        <img src="http://via.placeholder.com/450x350" alt="" class="main-image">
        <div class="more-info">
          <img src="http://via.placeholder.com/150x50" alt="" class="logo">
          <p class="content">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae repudiandae facere fugit doloremque
          </p>
          <p class="author">
            <span>Shauna Mounsey</span>
            <span>SEO at Roomgofer</span>
          </p>
        </div>
      </div></div></div></div></div><div data-prev-button=""></div><div data-next-button=""></div></div>
  </div>
  



<script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js"></script>
<script>/*! carousel-3d - v0.2.3 - 2017-12-29
* Copyright (c) 2017 PAIO co.,Ltd.; Licensed MIT */
(function e(t, n, r) {function s(o, u) {if (!n[o]) {if (!t[o]) {var a = typeof require == "function" && require;if (!u && a) return a(o, !0);if (i) return i(o, !0);var f = new Error("Cannot find module '" + o + "'");throw f.code = "MODULE_NOT_FOUND", f;}var l = n[o] = { exports: {} };t[o][0].call(l.exports, function (e) {var n = t[o][1][e];return s(n ? n : e);}, l, l.exports, e, t, n, r);}return n[o].exports;}var i = typeof require == "function" && require;for (var o = 0; o < r.length; o++) {if (window.CP.shouldStopExecution(0)) break;s(r[o]);}window.CP.exitedLoop(0);return s;})({ 1: [function (require, module, exports) {
    /*
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      *
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      *
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      *
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      * Copyright (c) 2015 PAIO
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      * Licensed under the MIT license.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      */

    (function () {
      'use strict';

      var $ = window.jQuery;
      var ChildrenWrapper = require('./ChildrenWrapper');
      var Child = require('./Child');

      /**
                                       * constructor
                                       * @param panel
                                       * @constructor
                                       */
      var Carousel3d = function (carousel) {
        this.el = carousel;
        this._makeOption();

        //create chlidrenWrapper, children
        var $children = $(carousel).children();
        var childrenWrapperObj = new ChildrenWrapper(this);
        var currentIndex = 0;
        this.appendChildrenWrapper(childrenWrapperObj);
        $children.each(function (index, childContent) {
          if ($(childContent).attr('selected')) {
            currentIndex = index;
          }
          this.appendChild(childContent);
        }.bind(this));

        if (childrenWrapperObj.numChildren() > 1) {
          //create prev/next buttons
          this._prevButton = $('<div data-prev-button></div>')[0];
          $(this.el).append(this._prevButton);
          $(this._prevButton).click(this.prev.bind(this));
          this._nextButton = $('<div data-next-button></div>')[0];
          $(this.el).append(this._nextButton);
          $(this._nextButton).click(this.next.bind(this));
        }
        this.rotate(currentIndex);
      };


      /**
          * Carousel-3D panel element
          * @type {element}
          */
      Carousel3d.prototype.el = null;


      /**
                                       *
                                       * @type {{animationDuration: number}}
                                       */
      Carousel3d.prototype.option = {
        animationDuration: 1000 };



      /**
                                    * populate option
                                    * @private
                                    */
      Carousel3d.prototype._makeOption = function () {
        (function () {
          var $wrapper = $('<div data-children-wrapper></div>').hide().appendTo(this.el);
          var duration = $('<div data-child></div>').hide().appendTo($wrapper).css('transition-duration');
          $wrapper.remove();
          if (duration) {
            if (duration.indexOf('ms') > 0) {
              this.option.animationDuration = parseInt(duration);
            } else
            if (duration.indexOf('s') > 0) {
              this.option.animationDuration = parseInt(duration) * 1000;
            }
          }
        }).bind(this)();

      };


      /**
          * append chlid
          * @param content
          */
      Carousel3d.prototype.appendChild = function (content) {
        this._childrenWrapperObj.appendChild(new Child(this._childrenWrapperObj, content));
      };


      /**
          * append ChildrenWrapper object
          * @param childrenWrapperObj
          */
      Carousel3d.prototype.appendChildrenWrapper = function (childrenWrapperObj) {
        this._childrenWrapperObj = childrenWrapperObj;
        $(this.el).append(childrenWrapperObj.el);
      };


      /**
          * rotate carousel
          * @param index
          */
      Carousel3d.prototype.rotate = function (index) {
        var numChildren = this._childrenWrapperObj.numChildren();
        var iFloor = Math.floor(this._childrenWrapperObj.currentIndex() - numChildren / 2);
        var iCeil = Math.ceil(this._childrenWrapperObj.currentIndex() + numChildren / 2);
        while (index < iFloor) {if (window.CP.shouldStopExecution(1)) break;
          index += numChildren;
        }window.CP.exitedLoop(1);
        while (iCeil < index) {if (window.CP.shouldStopExecution(2)) break;
          index -= numChildren;
        }window.CP.exitedLoop(2);

        this._childrenWrapperObj.rotate(index);
        window.setTimeout(function () {
          var i = index;
          while (i < 0) {if (window.CP.shouldStopExecution(3)) break;
            i += this._childrenWrapperObj.numChildren();
          }window.CP.exitedLoop(3);
          $(this.el).trigger('select', i % this._childrenWrapperObj.numChildren());
        }.bind(this), this.option.animationDuration);
      };

      /**
          * make carousel spin prev
          */
      Carousel3d.prototype.prev = function () {
        this.rotate(this._childrenWrapperObj.currentIndex() - 1);
      };

      /**
          * make carousel spin next
          */
      Carousel3d.prototype.next = function () {
        this.rotate(this._childrenWrapperObj.currentIndex() + 1);
      };



      /**
          * Exposed to jquery.
          * @returns {*}
          */
      $.fn.Carousel3d = function () {
        var self = this,opt = arguments[0],args = Array.prototype.slice.call(arguments, 1),l = self.length,i = 0,ret;
        for (i; i < l; i += 1) {if (window.CP.shouldStopExecution(4)) break;
          if (typeof opt === 'object' || typeof opt === 'undefined') {
            self[i].Carousel3d = new Carousel3d(self[i], opt);
          } else
          {
            ret = self[i].Carousel3d[opt].apply(self[i].Carousel3d, args);
          }
          if (ret !== undefined) {
            return ret;
          }
        }window.CP.exitedLoop(4);
        return self;
      };


      /**
          * initialize on load
          */
      $(function () {
        $('[data-carousel-3d]').Carousel3d();
      });

    })();

  }, { "./Child": 2, "./ChildrenWrapper": 3 }], 2: [function (require, module, exports) {
    /*
                                                                                          *
                                                                                          *
                                                                                          *
                                                                                          * Copyright (c) 2015 PAIO
                                                                                          * Licensed under the MIT license.
                                                                                          */
    (function () {
      "use strict";

      var $ = window.jQuery;
      var Modernizr = window.Modernizr;

      var Child = function (childrenWrapperObj, content) {
        this._childrenWrapperObj = childrenWrapperObj;
        this._content = content;

        //manipulate dome
        this.el = $('<div data-child />')[0];
        this._frame = $('<div data-child-frame />')[0];
        this._contentWrapper = $('<div data-content-wrapper />')[0];
        $(this.el).append(this._frame);
        $(this._frame).append(this._contentWrapper);
        $(this._contentWrapper).append(content);

        this._hideUntilLoad();
      };


      Child.prototype._childrenWrapperObj = null;

      Child.prototype._content = null;

      Child.prototype.el = null;

      Child.prototype._contentWrapper = null;

      Child.prototype._hideUntilLoad = function () {
        $(this._content).css('visibility', 'hidden');
        $(this._contentWrapper).waitForImages(function () {
          setTimeout(function () {
            this._resize();
            $(this._content).resize(this._resize.bind(this));
            $(this.el).resize(this._resize.bind(this));
            $(this._content).css('visibility', 'visible');
          }.bind(this), 1);
        }.bind(this));
      };

      Child.prototype._resize = function () {
        $(this._contentWrapper).width($(this._content).outerWidth());
        $(this._contentWrapper).height($(this._content).outerHeight());

        var horizontalFrameDiff = $(this._frame).outerWidth() - $(this._frame).innerWidth();
        var vertialFrameDiff = $(this._frame).outerHeight() - $(this._frame).innerHeight();
        var horizontalScale = ($(this.el).innerWidth() - horizontalFrameDiff) / $(this._content).outerWidth();
        var verticalScale = ($(this.el).innerHeight() - vertialFrameDiff) / $(this._content).outerHeight();
        var scale = Math.min(horizontalScale, verticalScale);
        var horizontalOffset = Math.floor(($(this.el).innerWidth() - horizontalFrameDiff - $(this._content).outerWidth() * scale) / 2);
        var verticalOffset = Math.floor(($(this.el).innerHeight() - vertialFrameDiff - $(this._content).outerHeight() * scale) / 2);

        $(this._frame).width($(this._content).outerWidth() * scale);
        $(this._frame).height($(this._content).outerHeight() * scale);
        $(this.el).css('padding-left', horizontalOffset + 'px');
        $(this.el).css('padding-top', verticalOffset + 'px');
        if (Modernizr.csstransforms) {
          $(this._contentWrapper).css('transform', 'scale(' + scale + ')');
          $(this._contentWrapper).css('-ms-transform', 'scale(' + scale + ')');
          $(this._contentWrapper).css('-moz-transform', 'scale(' + scale + ')');
          $(this._contentWrapper).css('-webkit-transform', 'scale(' + scale + ')');
        } else
        {
          $(this._contentWrapper).css('filter', 'progid:DXImageTransform.Microsoft.Matrix(M11=' + scale + ', M12=0, M21=0, M22=' + scale + ', SizingMethod="auto expand")');
          $(this._contentWrapper).css('-ms-filter', 'progid:DXImageTransform.Microsoft.Matrix(M11=' + scale + ', M12=0, M21=0, M22=' + scale + ', SizingMethod="auto expand")');
        }
      };




      module.exports = Child;
    })();

  }, {}], 3: [function (require, module, exports) {
    /*
                                                    *
                                                    *
                                                    *
                                                    * Copyright (c) 2015 PAIO
                                                    * Licensed under the MIT license.
                                                    */
    (function () {
      "use strict";

      var $ = window.jQuery;

      var ChildrenWrapper = function (carousel3dObj) {
        this._childObjArray = [];
        this._carousel3dObj = carousel3dObj;
        this.el = $('<div data-children-wrapper></div>')[0];
        $(carousel3dObj.el).resize(this._resize.bind(this));
      };

      /**
          * ChildrenWrapper element
          * @type {element}
          */
      ChildrenWrapper.prototype.el = null;

      ChildrenWrapper.prototype._carousel3dObj = null;

      ChildrenWrapper.prototype._childObjArray = [];

      ChildrenWrapper.prototype._currentIndex = 0;

      ChildrenWrapper.prototype._tz = 0;

      ChildrenWrapper.prototype._spacing = 0.05;


      ChildrenWrapper.prototype.currentIndex = function (index) {
        if (typeof index !== 'undefined' && typeof index !== 'object' && !isNaN(index)) {
          this._currentIndex = index;
        }
        return this._currentIndex;
      };


      ChildrenWrapper.prototype._resize = function () {
        this._tz = $(this.el).outerWidth() / 2 / Math.tan(Math.PI / this._childObjArray.length);
        this.rotate(this._currentIndex);
      };

      /**
          * append Child object
          * @param childObj
          */
      ChildrenWrapper.prototype.appendChild = function (childObj) {
        this._childObjArray.push(childObj);
        $(this.el).append(childObj.el);

        this._resize();
      };


      /**
          * return number of children
          * @returns {Number}
          */
      ChildrenWrapper.prototype.numChildren = function () {
        return this._childObjArray.length;
      };


      /**
          *
          * @param index
          */
      ChildrenWrapper.prototype.rotate = function (index) {
        this.currentIndex(index);
        var dDegree = 360 / this._childObjArray.length;
        var childIndex = 0;
        var childDegree = 0;
        if (Modernizr.csstransforms3d) {
          for (childIndex = 0; childIndex < this._childObjArray.length; childIndex += 1) {if (window.CP.shouldStopExecution(5)) break;
            childDegree = dDegree * (childIndex - index);
            var transformText = '';
            transformText += ' translateZ(' + -this._tz * (1 + this._spacing) + 'px)';
            transformText += ' rotateY(' + childDegree + 'deg)';
            transformText += ' translateZ(' + this._tz * (1 + this._spacing) + 'px)';

            $(this._childObjArray[childIndex].el).css('transform', transformText);
            $(this._childObjArray[childIndex].el).css('-ms-transform', transformText);
            $(this._childObjArray[childIndex].el).css('-moz-transform', transformText);
            $(this._childObjArray[childIndex].el).css('-webkit-transform', transformText);

            $(this._childObjArray[childIndex].el).css('opacity', Math.cos(Math.PI / 180 * childDegree));
            $(this._childObjArray[childIndex].el).css('z-index', Math.floor((Math.cos(Math.PI / 180 * childDegree) + 1) * 100));
          }window.CP.exitedLoop(5);
        } else
        {
          var width = $(this.el).width();
          var height = $(this.el).height();

          var stepFunc = function (now, tween) {

            if (tween.prop === '_degree') {
              var sin = Math.sin(Math.PI / 180 * now);
              var cos = Math.cos(Math.PI / 180 * now);
              var halfDegreeRange = dDegree / 2;
              var perspectiveScale = Math.abs(Math.sin(Math.PI / 180 * (now + halfDegreeRange)) - Math.sin(Math.PI / 180 * (now - halfDegreeRange))) / (Math.sin(Math.PI / 180 * halfDegreeRange) * 2) * cos;
              var heightScale = (cos + 1) / 2;
              var widthScale = (perspectiveScale + 1) / 2;
              var dx = (sin * width / 2 + width * widthScale / 2 * sin) / 2;

              $(tween.elem).css('z-index', Math.floor((cos + 1) * 100));
              if (Modernizr.csstransforms) {
                $(tween.elem).css('left', dx + 'px');
                $(tween.elem).css('opacity', cos);
                $(tween.elem).css('transform', 'scale(' + widthScale + ', ' + heightScale + ')');
                $(tween.elem).css('-ms-transform', 'scale(' + widthScale + ', ' + heightScale + ')');
                $(tween.elem).css('-moz-transform', 'scale(' + widthScale + ', ' + heightScale + ')');
                $(tween.elem).css('-webkit-transform', 'scale(' + widthScale + ', ' + heightScale + ')');
              } else
              {
                $(tween.elem).css('top', Math.floor((height - height * heightScale) / 2) + 'px');
                $(tween.elem).css('left', (width - width * widthScale) / 2 + dx + 'px');
                $(tween.elem).css('filter', 'progid:DXImageTransform.Microsoft.Matrix(M11=' + widthScale + ', M12=0, M21=0, M22=' + heightScale + '), progid:DXImageTransform.Microsoft.Alpha(Opacity=' + cos * 100 + ')');
                $(tween.elem).css('-ms-filter', 'progid:DXImageTransform.Microsoft.Matrix(M11=' + widthScale + ', M12=0, M21=0, M22=' + heightScale + '), progid:DXImageTransform.Microsoft.Alpha(Opacity=' + cos * 100 + ')');
              }
            }
          };

          for (childIndex = 0; childIndex < this._childObjArray.length; childIndex += 1) {if (window.CP.shouldStopExecution(6)) break;
            childDegree = dDegree * (childIndex - index);

            $(this._childObjArray[childIndex].el).animate({
              '_degree': childDegree },
            {
              duration: this._carousel3dObj.option.animationDuration,
              step: stepFunc.bind(this) });

          }window.CP.exitedLoop(6);
        }

      };

      module.exports = ChildrenWrapper;
    })();

  }, {}] }, {}, [1]);

(function () {
  "use strict";
  var originalResize = $.fn.resize;
  //TODO IE call resize infinite. patch jquery.resize then replace
  $.fn.resize = function (callback) {
    var width = $(this).width();
    var height = $(this).height();
    originalResize.call(this, function () {
      if ($(this).width() !== width || $(this).height() !== height) {
        width = $(this).width();
        height = $(this).height();
        callback(this);
      }
    }.bind(this));
  };
})();


</script>
</body></html>