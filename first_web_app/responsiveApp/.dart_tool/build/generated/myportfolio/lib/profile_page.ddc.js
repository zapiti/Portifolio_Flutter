define(['dart_sdk', 'packages/flutter_web/animation', 'packages/myportfolio/responsive_widget', 'packages/flutter_web/material', 'packages/flutter_web/src/animation/animation', 'packages/flutter_web_ui/ui'], function(dart_sdk, packages__flutter_web__animation, packages__myportfolio__responsive_widget, packages__flutter_web__material, packages__flutter_web__src__animation__animation, packages__flutter_web_ui__ui) {
  'use strict';
  const core = dart_sdk.core;
  const html = dart_sdk.html;
  const _interceptors = dart_sdk._interceptors;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  const widget_inspector = packages__flutter_web__animation.src__widgets__widget_inspector;
  const framework = packages__flutter_web__animation.src__widgets__framework;
  const scroll_view = packages__flutter_web__animation.src__widgets__scroll_view;
  const edge_insets = packages__flutter_web__animation.src__painting__edge_insets;
  const single_child_scroll_view = packages__flutter_web__animation.src__widgets__single_child_scroll_view;
  const implicit_animations = packages__flutter_web__animation.src__widgets__implicit_animations;
  const media_query = packages__flutter_web__animation.src__widgets__media_query;
  const basic = packages__flutter_web__animation.src__widgets__basic;
  const flex = packages__flutter_web__animation.src__rendering__flex;
  const text = packages__flutter_web__animation.src__widgets__text;
  const box_decoration = packages__flutter_web__animation.src__painting__box_decoration;
  const box_border = packages__flutter_web__animation.src__painting__box_border;
  const borders = packages__flutter_web__animation.src__painting__borders;
  const container = packages__flutter_web__animation.src__widgets__container;
  const stadium_border = packages__flutter_web__animation.src__painting__stadium_border;
  const decoration_image = packages__flutter_web__animation.src__painting__decoration_image;
  const image_provider = packages__flutter_web__animation.src__painting__image_provider;
  const responsive_widget = packages__myportfolio__responsive_widget.responsive_widget;
  const scaffold = packages__flutter_web__material.src__material__scaffold;
  const colors = packages__flutter_web__material.src__material__colors;
  const app_bar = packages__flutter_web__material.src__material__app_bar;
  const drawer = packages__flutter_web__material.src__material__drawer;
  const outline_button = packages__flutter_web__material.src__material__outline_button;
  const raised_button = packages__flutter_web__material.src__material__raised_button;
  const text_style = packages__flutter_web__src__animation__animation.src__painting__text_style;
  const colors$ = packages__flutter_web__src__animation__animation.src__painting__colors;
  const alignment = packages__flutter_web__src__animation__animation.src__painting__alignment;
  const box_fit = packages__flutter_web__src__animation__animation.src__painting__box_fit;
  const ui = packages__flutter_web_ui__ui.ui;
  const profile_page = Object.create(dart.library);
  const $open = dartx.open;
  const $add = dartx.add;
  let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
  let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
  let VoidTovoid = () => (VoidTovoid = dart.constFn(dart.fnType(dart.void, [])))();
  const CT = Object.create(null);
  dart.defineLazy(CT, {
    get C2() {
      return C2 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "text",
        [_Location_column]: 11,
        [_Location_line]: 11,
        [_Location_file]: null
      });
    },
    get C3() {
      return C3 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "onPressed",
        [_Location_column]: 11,
        [_Location_line]: 12,
        [_Location_file]: null
      });
    },
    get C1() {
      return C1 = dart.constList([C2 || CT.C2, C3 || CT.C3], widget_inspector._Location);
    },
    get C0() {
      return C0 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C1 || CT.C1,
        [_Location_name]: null,
        [_Location_column]: 9,
        [_Location_line]: 10,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C6() {
      return C6 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "text",
        [_Location_column]: 11,
        [_Location_line]: 17,
        [_Location_file]: null
      });
    },
    get C7() {
      return C7 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "onPressed",
        [_Location_column]: 11,
        [_Location_line]: 18,
        [_Location_file]: null
      });
    },
    get C5() {
      return C5 = dart.constList([C6 || CT.C6, C7 || CT.C7], widget_inspector._Location);
    },
    get C4() {
      return C4 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C5 || CT.C5,
        [_Location_name]: null,
        [_Location_column]: 9,
        [_Location_line]: 16,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C10() {
      return C10 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "text",
        [_Location_column]: 11,
        [_Location_line]: 23,
        [_Location_file]: null
      });
    },
    get C11() {
      return C11 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "onPressed",
        [_Location_column]: 11,
        [_Location_line]: 24,
        [_Location_file]: null
      });
    },
    get C9() {
      return C9 = dart.constList([C10 || CT.C10, C11 || CT.C11], widget_inspector._Location);
    },
    get C8() {
      return C8 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C9 || CT.C9,
        [_Location_name]: null,
        [_Location_column]: 9,
        [_Location_line]: 22,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C14() {
      return C14 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "elevation",
        [_Location_column]: 11,
        [_Location_line]: 36,
        [_Location_file]: null
      });
    },
    get C15() {
      return C15 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "backgroundColor",
        [_Location_column]: 11,
        [_Location_line]: 37,
        [_Location_file]: null
      });
    },
    get C13() {
      return C13 = dart.constList([C14 || CT.C14, C15 || CT.C15], widget_inspector._Location);
    },
    get C12() {
      return C12 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C13 || CT.C13,
        [_Location_name]: null,
        [_Location_column]: 17,
        [_Location_line]: 35,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C16() {
      return C16 = dart.const({
        __proto__: edge_insets.EdgeInsets.prototype,
        [EdgeInsets__bottom]: 20,
        [EdgeInsets__right]: 20,
        [EdgeInsets__top]: 20,
        [EdgeInsets__left]: 20
      });
    },
    get C19() {
      return C19 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "padding",
        [_Location_column]: 19,
        [_Location_line]: 42,
        [_Location_file]: null
      });
    },
    get C20() {
      return C20 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 19,
        [_Location_line]: 43,
        [_Location_file]: null
      });
    },
    get C18() {
      return C18 = dart.constList([C19 || CT.C19, C20 || CT.C20], widget_inspector._Location);
    },
    get C17() {
      return C17 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C18 || CT.C18,
        [_Location_name]: null,
        [_Location_column]: 24,
        [_Location_line]: 41,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C23() {
      return C23 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "child",
        [_Location_column]: 17,
        [_Location_line]: 41,
        [_Location_file]: null
      });
    },
    get C22() {
      return C22 = dart.constList([C23 || CT.C23], widget_inspector._Location);
    },
    get C21() {
      return C21 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C22 || CT.C22,
        [_Location_name]: null,
        [_Location_column]: 15,
        [_Location_line]: 40,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C26() {
      return C26 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "navButtons",
        [_Location_column]: 29,
        [_Location_line]: 55,
        [_Location_file]: null
      });
    },
    get C25() {
      return C25 = dart.constList([C26 || CT.C26], widget_inspector._Location);
    },
    get C24() {
      return C24 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C25 || CT.C25,
        [_Location_name]: null,
        [_Location_column]: 19,
        [_Location_line]: 55,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C29() {
      return C29 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "height",
        [_Location_column]: 21,
        [_Location_line]: 57,
        [_Location_file]: null
      });
    },
    get C28() {
      return C28 = dart.constList([C29 || CT.C29], widget_inspector._Location);
    },
    get C27() {
      return C27 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C28 || CT.C28,
        [_Location_name]: null,
        [_Location_column]: 19,
        [_Location_line]: 56,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C31() {
      return C31 = dart.constList([], widget_inspector._Location);
    },
    get C30() {
      return C30 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C31 || CT.C31,
        [_Location_name]: null,
        [_Location_column]: 19,
        [_Location_line]: 59,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C34() {
      return C34 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "height",
        [_Location_column]: 21,
        [_Location_line]: 61,
        [_Location_file]: null
      });
    },
    get C33() {
      return C33 = dart.constList([C34 || CT.C34], widget_inspector._Location);
    },
    get C32() {
      return C32 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C33 || CT.C33,
        [_Location_name]: null,
        [_Location_column]: 19,
        [_Location_line]: 60,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C35() {
      return C35 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C31 || CT.C31,
        [_Location_name]: null,
        [_Location_column]: 19,
        [_Location_line]: 63,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C38() {
      return C38 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "mainAxisAlignment",
        [_Location_column]: 17,
        [_Location_line]: 53,
        [_Location_file]: null
      });
    },
    get C39() {
      return C39 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 17,
        [_Location_line]: 54,
        [_Location_file]: null
      });
    },
    get C37() {
      return C37 = dart.constList([C38 || CT.C38, C39 || CT.C39], widget_inspector._Location);
    },
    get C36() {
      return C36 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C37 || CT.C37,
        [_Location_name]: null,
        [_Location_column]: 28,
        [_Location_line]: 52,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C42() {
      return C42 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "largeScreen",
        [_Location_column]: 15,
        [_Location_line]: 52,
        [_Location_file]: null
      });
    },
    get C41() {
      return C41 = dart.constList([C42 || CT.C42], widget_inspector._Location);
    },
    get C40() {
      return C40 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C41 || CT.C41,
        [_Location_name]: null,
        [_Location_column]: 20,
        [_Location_line]: 51,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C45() {
      return C45 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "duration",
        [_Location_column]: 13,
        [_Location_line]: 49,
        [_Location_file]: null
      });
    },
    get C46() {
      return C46 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "padding",
        [_Location_column]: 13,
        [_Location_line]: 50,
        [_Location_file]: null
      });
    },
    get C47() {
      return C47 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "child",
        [_Location_column]: 13,
        [_Location_line]: 51,
        [_Location_file]: null
      });
    },
    get C44() {
      return C44 = dart.constList([C45 || CT.C45, C46 || CT.C46, C47 || CT.C47], widget_inspector._Location);
    },
    get C43() {
      return C43 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C44 || CT.C44,
        [_Location_name]: null,
        [_Location_column]: 18,
        [_Location_line]: 48,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C50() {
      return C50 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "child",
        [_Location_column]: 11,
        [_Location_line]: 48,
        [_Location_file]: null
      });
    },
    get C49() {
      return C49 = dart.constList([C50 || CT.C50], widget_inspector._Location);
    },
    get C48() {
      return C48 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C49 || CT.C49,
        [_Location_name]: null,
        [_Location_column]: 15,
        [_Location_line]: 47,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C53() {
      return C53 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "backgroundColor",
        [_Location_column]: 9,
        [_Location_line]: 34,
        [_Location_file]: null
      });
    },
    get C54() {
      return C54 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "appBar",
        [_Location_column]: 9,
        [_Location_line]: 35,
        [_Location_file]: null
      });
    },
    get C55() {
      return C55 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "drawer",
        [_Location_column]: 9,
        [_Location_line]: 39,
        [_Location_file]: null
      });
    },
    get C56() {
      return C56 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "body",
        [_Location_column]: 9,
        [_Location_line]: 47,
        [_Location_file]: null
      });
    },
    get C52() {
      return C52 = dart.constList([C53 || CT.C53, C54 || CT.C54, C55 || CT.C55, C56 || CT.C56], widget_inspector._Location);
    },
    get C51() {
      return C51 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C52 || CT.C52,
        [_Location_name]: null,
        [_Location_column]: 20,
        [_Location_line]: 33,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C59() {
      return C59 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "largeScreen",
        [_Location_column]: 7,
        [_Location_line]: 33,
        [_Location_file]: null
      });
    },
    get C58() {
      return C58 = dart.constList([C59 || CT.C59], widget_inspector._Location);
    },
    get C57() {
      return C57 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C58 || CT.C58,
        [_Location_name]: null,
        [_Location_column]: 12,
        [_Location_line]: 32,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C60() {
      return C60 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C31 || CT.C31,
        [_Location_name]: null,
        [_Location_column]: 11,
        [_Location_line]: 87,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C63() {
      return C63 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 15,
        [_Location_line]: 91,
        [_Location_file]: null
      });
    },
    get C62() {
      return C62 = dart.constList([C63 || CT.C63], widget_inspector._Location);
    },
    get C61() {
      return C61 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C62 || CT.C62,
        [_Location_name]: null,
        [_Location_column]: 13,
        [_Location_line]: 90,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C66() {
      return C66 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "mainAxisAlignment",
        [_Location_column]: 9,
        [_Location_line]: 82,
        [_Location_file]: null
      });
    },
    get C67() {
      return C67 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "crossAxisAlignment",
        [_Location_column]: 9,
        [_Location_line]: 85,
        [_Location_file]: null
      });
    },
    get C68() {
      return C68 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 9,
        [_Location_line]: 86,
        [_Location_file]: null
      });
    },
    get C65() {
      return C65 = dart.constList([C66 || CT.C66, C67 || CT.C67, C68 || CT.C68], widget_inspector._Location);
    },
    get C64() {
      return C64 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C65 || CT.C65,
        [_Location_name]: null,
        [_Location_column]: 20,
        [_Location_line]: 81,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C71() {
      return C71 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "largeScreen",
        [_Location_column]: 7,
        [_Location_line]: 81,
        [_Location_file]: null
      });
    },
    get C70() {
      return C70 = dart.constList([C71 || CT.C71], widget_inspector._Location);
    },
    get C69() {
      return C69 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C70 || CT.C70,
        [_Location_name]: null,
        [_Location_column]: 12,
        [_Location_line]: 80,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C74() {
      return C74 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "data",
        [_Location_column]: 11,
        [_Location_line]: 105,
        [_Location_file]: null
      });
    },
    get C75() {
      return C75 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "textScaleFactor",
        [_Location_column]: 11,
        [_Location_line]: 106,
        [_Location_file]: null
      });
    },
    get C76() {
      return C76 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "style",
        [_Location_column]: 11,
        [_Location_line]: 108,
        [_Location_file]: null
      });
    },
    get C73() {
      return C73 = dart.constList([C74 || CT.C74, C75 || CT.C75, C76 || CT.C76], widget_inspector._Location);
    },
    get C72() {
      return C72 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C73 || CT.C73,
        [_Location_name]: null,
        [_Location_column]: 9,
        [_Location_line]: 104,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C79() {
      return C79 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "width",
        [_Location_column]: 11,
        [_Location_line]: 115,
        [_Location_file]: null
      });
    },
    get C78() {
      return C78 = dart.constList([C79 || CT.C79], widget_inspector._Location);
    },
    get C77() {
      return C77 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C78 || CT.C78,
        [_Location_name]: null,
        [_Location_column]: 9,
        [_Location_line]: 114,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C82() {
      return C82 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "duration",
        [_Location_column]: 11,
        [_Location_line]: 118,
        [_Location_file]: null
      });
    },
    get C83() {
      return C83 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "height",
        [_Location_column]: 11,
        [_Location_line]: 119,
        [_Location_file]: null
      });
    },
    get C84() {
      return C84 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "width",
        [_Location_column]: 11,
        [_Location_line]: 120,
        [_Location_file]: null
      });
    },
    get C85() {
      return C85 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "decoration",
        [_Location_column]: 11,
        [_Location_line]: 121,
        [_Location_file]: null
      });
    },
    get C81() {
      return C81 = dart.constList([C82 || CT.C82, C83 || CT.C83, C84 || CT.C84, C85 || CT.C85], widget_inspector._Location);
    },
    get C80() {
      return C80 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C81 || CT.C81,
        [_Location_name]: null,
        [_Location_column]: 9,
        [_Location_line]: 117,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C88() {
      return C88 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 7,
        [_Location_line]: 103,
        [_Location_file]: null
      });
    },
    get C87() {
      return C87 = dart.constList([C88 || CT.C88], widget_inspector._Location);
    },
    get C86() {
      return C86 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C87 || CT.C87,
        [_Location_name]: null,
        [_Location_column]: 12,
        [_Location_line]: 102,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C91() {
      return C91 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4294964192.0
      });
    },
    get C92() {
      return C92 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4294959282.0
      });
    },
    get C93() {
      return C93 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4294954112.0
      });
    },
    get C94() {
      return C94 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4294948685.0
      });
    },
    get C95() {
      return C95 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4294944550.0
      });
    },
    get C96() {
      return C96 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4294940672.0
      });
    },
    get C97() {
      return C97 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4294675456.0
      });
    },
    get C98() {
      return C98 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4294278144.0
      });
    },
    get C99() {
      return C99 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4293880832.0
      });
    },
    get C100() {
      return C100 = dart.const({
        __proto__: ui.Color.prototype,
        [Color__value]: 4293284096.0
      });
    },
    get C90() {
      return C90 = dart.constMap(core.int, ui.Color, [50, C91 || CT.C91, 100, C92 || CT.C92, 200, C93 || CT.C93, 300, C94 || CT.C94, 400, C95 || CT.C95, 500, C96 || CT.C96, 600, C97 || CT.C97, 700, C98 || CT.C98, 800, C99 || CT.C99, 900, C100 || CT.C100]);
    },
    get C89() {
      return C89 = dart.const({
        __proto__: colors.MaterialColor.prototype,
        [Color__value]: 4294940672.0,
        [ColorSwatch__swatch]: C90 || CT.C90
      });
    },
    get C103() {
      return C103 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "data",
        [_Location_column]: 19,
        [_Location_line]: 146,
        [_Location_file]: null
      });
    },
    get C104() {
      return C104 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "style",
        [_Location_column]: 24,
        [_Location_line]: 146,
        [_Location_file]: null
      });
    },
    get C102() {
      return C102 = dart.constList([C103 || CT.C103, C104 || CT.C104], widget_inspector._Location);
    },
    get C101() {
      return C101 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C102 || CT.C102,
        [_Location_name]: null,
        [_Location_column]: 14,
        [_Location_line]: 146,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C107() {
      return C107 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "child",
        [_Location_column]: 7,
        [_Location_line]: 146,
        [_Location_file]: null
      });
    },
    get C108() {
      return C108 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "borderSide",
        [_Location_column]: 7,
        [_Location_line]: 147,
        [_Location_file]: null
      });
    },
    get C109() {
      return C109 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "onPressed",
        [_Location_column]: 7,
        [_Location_line]: 150,
        [_Location_file]: null
      });
    },
    get C110() {
      return C110 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "highlightedBorderColor",
        [_Location_column]: 7,
        [_Location_line]: 151,
        [_Location_file]: null
      });
    },
    get C106() {
      return C106 = dart.constList([C107 || CT.C107, C108 || CT.C108, C109 || CT.C109, C110 || CT.C110], widget_inspector._Location);
    },
    get C105() {
      return C105 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C106 || CT.C106,
        [_Location_name]: null,
        [_Location_column]: 12,
        [_Location_line]: 145,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C113() {
      return C113 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "data",
        [_Location_column]: 9,
        [_Location_line]: 181,
        [_Location_file]: null
      });
    },
    get C114() {
      return C114 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "textScaleFactor",
        [_Location_column]: 9,
        [_Location_line]: 182,
        [_Location_file]: null
      });
    },
    get C115() {
      return C115 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "style",
        [_Location_column]: 9,
        [_Location_line]: 183,
        [_Location_file]: null
      });
    },
    get C112() {
      return C112 = dart.constList([C113 || CT.C113, C114 || CT.C114, C115 || CT.C115], widget_inspector._Location);
    },
    get C111() {
      return C111 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C112 || CT.C112,
        [_Location_name]: null,
        [_Location_column]: 7,
        [_Location_line]: 180,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C118() {
      return C118 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "data",
        [_Location_column]: 9,
        [_Location_line]: 186,
        [_Location_file]: null
      });
    },
    get C119() {
      return C119 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "textScaleFactor",
        [_Location_column]: 9,
        [_Location_line]: 187,
        [_Location_file]: null
      });
    },
    get C120() {
      return C120 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "style",
        [_Location_column]: 9,
        [_Location_line]: 188,
        [_Location_file]: null
      });
    },
    get C117() {
      return C117 = dart.constList([C118 || CT.C118, C119 || CT.C119, C120 || CT.C120], widget_inspector._Location);
    },
    get C116() {
      return C116 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C117 || CT.C117,
        [_Location_name]: null,
        [_Location_column]: 7,
        [_Location_line]: 185,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C123() {
      return C123 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "height",
        [_Location_column]: 9,
        [_Location_line]: 194,
        [_Location_file]: null
      });
    },
    get C122() {
      return C122 = dart.constList([C123 || CT.C123], widget_inspector._Location);
    },
    get C121() {
      return C121 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C122 || CT.C122,
        [_Location_name]: null,
        [_Location_column]: 7,
        [_Location_line]: 193,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C124() {
      return C124 = dart.const({
        __proto__: edge_insets.EdgeInsets.prototype,
        [EdgeInsets__bottom]: 16,
        [EdgeInsets__right]: 16,
        [EdgeInsets__top]: 16,
        [EdgeInsets__left]: 16
      });
    },
    get C127() {
      return C127 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "data",
        [_Location_column]: 83,
        [_Location_line]: 205,
        [_Location_file]: null
      });
    },
    get C128() {
      return C128 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "style",
        [_Location_column]: 9,
        [_Location_line]: 208,
        [_Location_file]: null
      });
    },
    get C126() {
      return C126 = dart.constList([C127 || CT.C127, C128 || CT.C128], widget_inspector._Location);
    },
    get C125() {
      return C125 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C126 || CT.C126,
        [_Location_name]: null,
        [_Location_column]: 12,
        [_Location_line]: 201,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C131() {
      return C131 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 9,
        [_Location_line]: 200,
        [_Location_file]: null
      });
    },
    get C130() {
      return C130 = dart.constList([C131 || CT.C131], widget_inspector._Location);
    },
    get C129() {
      return C129 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C130 || CT.C130,
        [_Location_name]: null,
        [_Location_column]: 15,
        [_Location_line]: 199,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C134() {
      return C134 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "padding",
        [_Location_column]: 7,
        [_Location_line]: 197,
        [_Location_file]: null
      });
    },
    get C135() {
      return C135 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "width",
        [_Location_column]: 7,
        [_Location_line]: 198,
        [_Location_file]: null
      });
    },
    get C136() {
      return C136 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "child",
        [_Location_column]: 7,
        [_Location_line]: 199,
        [_Location_file]: null
      });
    },
    get C133() {
      return C133 = dart.constList([C134 || CT.C134, C135 || CT.C135, C136 || CT.C136], widget_inspector._Location);
    },
    get C132() {
      return C132 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C133 || CT.C133,
        [_Location_name]: null,
        [_Location_column]: 7,
        [_Location_line]: 196,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C139() {
      return C139 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "height",
        [_Location_column]: 9,
        [_Location_line]: 217,
        [_Location_file]: null
      });
    },
    get C138() {
      return C138 = dart.constList([C139 || CT.C139], widget_inspector._Location);
    },
    get C137() {
      return C137 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C138 || CT.C138,
        [_Location_name]: null,
        [_Location_column]: 7,
        [_Location_line]: 216,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C142() {
      return C142 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "data",
        [_Location_column]: 25,
        [_Location_line]: 224,
        [_Location_file]: null
      });
    },
    get C141() {
      return C141 = dart.constList([C142 || CT.C142], widget_inspector._Location);
    },
    get C140() {
      return C140 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C141 || CT.C141,
        [_Location_name]: null,
        [_Location_column]: 20,
        [_Location_line]: 224,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C145() {
      return C145 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "shape",
        [_Location_column]: 13,
        [_Location_line]: 223,
        [_Location_file]: null
      });
    },
    get C146() {
      return C146 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "child",
        [_Location_column]: 13,
        [_Location_line]: 224,
        [_Location_file]: null
      });
    },
    get C147() {
      return C147 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "color",
        [_Location_column]: 13,
        [_Location_line]: 225,
        [_Location_file]: null
      });
    },
    get C148() {
      return C148 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "onPressed",
        [_Location_column]: 13,
        [_Location_line]: 226,
        [_Location_file]: null
      });
    },
    get C149() {
      return C149 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "padding",
        [_Location_column]: 13,
        [_Location_line]: 231,
        [_Location_file]: null
      });
    },
    get C144() {
      return C144 = dart.constList([C145 || CT.C145, C146 || CT.C146, C147 || CT.C147, C148 || CT.C148, C149 || CT.C149], widget_inspector._Location);
    },
    get C143() {
      return C143 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C144 || CT.C144,
        [_Location_name]: null,
        [_Location_column]: 11,
        [_Location_line]: 222,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C152() {
      return C152 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "width",
        [_Location_column]: 13,
        [_Location_line]: 234,
        [_Location_file]: null
      });
    },
    get C151() {
      return C151 = dart.constList([C152 || CT.C152], widget_inspector._Location);
    },
    get C150() {
      return C150 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C151 || CT.C151,
        [_Location_name]: null,
        [_Location_column]: 11,
        [_Location_line]: 233,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C155() {
      return C155 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "data",
        [_Location_column]: 25,
        [_Location_line]: 241,
        [_Location_file]: null
      });
    },
    get C156() {
      return C156 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "style",
        [_Location_column]: 34,
        [_Location_line]: 241,
        [_Location_file]: null
      });
    },
    get C154() {
      return C154 = dart.constList([C155 || CT.C155, C156 || CT.C156], widget_inspector._Location);
    },
    get C153() {
      return C153 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C154 || CT.C154,
        [_Location_name]: null,
        [_Location_column]: 20,
        [_Location_line]: 241,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C159() {
      return C159 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "borderSide",
        [_Location_column]: 13,
        [_Location_line]: 237,
        [_Location_file]: null
      });
    },
    get C160() {
      return C160 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "shape",
        [_Location_column]: 13,
        [_Location_line]: 240,
        [_Location_file]: null
      });
    },
    get C161() {
      return C161 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "child",
        [_Location_column]: 13,
        [_Location_line]: 241,
        [_Location_file]: null
      });
    },
    get C162() {
      return C162 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "color",
        [_Location_column]: 13,
        [_Location_line]: 242,
        [_Location_file]: null
      });
    },
    get C163() {
      return C163 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "onPressed",
        [_Location_column]: 13,
        [_Location_line]: 243,
        [_Location_file]: null
      });
    },
    get C164() {
      return C164 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "padding",
        [_Location_column]: 13,
        [_Location_line]: 246,
        [_Location_file]: null
      });
    },
    get C158() {
      return C158 = dart.constList([C159 || CT.C159, C160 || CT.C160, C161 || CT.C161, C162 || CT.C162, C163 || CT.C163, C164 || CT.C164], widget_inspector._Location);
    },
    get C157() {
      return C157 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C158 || CT.C158,
        [_Location_name]: null,
        [_Location_column]: 11,
        [_Location_line]: 236,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C167() {
      return C167 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "mainAxisAlignment",
        [_Location_column]: 9,
        [_Location_line]: 220,
        [_Location_file]: null
      });
    },
    get C168() {
      return C168 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 9,
        [_Location_line]: 221,
        [_Location_file]: null
      });
    },
    get C166() {
      return C166 = dart.constList([C167 || CT.C167, C168 || CT.C168], widget_inspector._Location);
    },
    get C165() {
      return C165 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C166 || CT.C166,
        [_Location_name]: null,
        [_Location_column]: 7,
        [_Location_line]: 219,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C171() {
      return C171 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "crossAxisAlignment",
        [_Location_column]: 5,
        [_Location_line]: 178,
        [_Location_file]: null
      });
    },
    get C172() {
      return C172 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 5,
        [_Location_line]: 179,
        [_Location_file]: null
      });
    },
    get C170() {
      return C170 = dart.constList([C171 || CT.C171, C172 || CT.C172], widget_inspector._Location);
    },
    get C169() {
      return C169 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C170 || CT.C170,
        [_Location_name]: null,
        [_Location_column]: 23,
        [_Location_line]: 177,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C175() {
      return C175 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "height",
        [_Location_column]: 9,
        [_Location_line]: 158,
        [_Location_file]: null
      });
    },
    get C176() {
      return C176 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "width",
        [_Location_column]: 9,
        [_Location_line]: 161,
        [_Location_file]: null
      });
    },
    get C177() {
      return C177 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "decoration",
        [_Location_column]: 9,
        [_Location_line]: 164,
        [_Location_file]: null
      });
    },
    get C174() {
      return C174 = dart.constList([C175 || CT.C175, C176 || CT.C176, C177 || CT.C177], widget_inspector._Location);
    },
    get C173() {
      return C173 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C174 || CT.C174,
        [_Location_name]: null,
        [_Location_column]: 28,
        [_Location_line]: 157,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C180() {
      return C180 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "mainAxisAlignment",
        [_Location_column]: 9,
        [_Location_line]: 257,
        [_Location_file]: null
      });
    },
    get C181() {
      return C181 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "crossAxisAlignment",
        [_Location_column]: 9,
        [_Location_line]: 258,
        [_Location_file]: null
      });
    },
    get C182() {
      return C182 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 9,
        [_Location_line]: 259,
        [_Location_file]: null
      });
    },
    get C179() {
      return C179 = dart.constList([C180 || CT.C180, C181 || CT.C181, C182 || CT.C182], widget_inspector._Location);
    },
    get C178() {
      return C178 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C179 || CT.C179,
        [_Location_name]: null,
        [_Location_column]: 20,
        [_Location_line]: 256,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C185() {
      return C185 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "height",
        [_Location_column]: 13,
        [_Location_line]: 267,
        [_Location_file]: null
      });
    },
    get C184() {
      return C184 = dart.constList([C185 || CT.C185], widget_inspector._Location);
    },
    get C183() {
      return C183 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C184 || CT.C184,
        [_Location_name]: null,
        [_Location_column]: 11,
        [_Location_line]: 266,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C188() {
      return C188 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "mainAxisSize",
        [_Location_column]: 9,
        [_Location_line]: 262,
        [_Location_file]: null
      });
    },
    get C189() {
      return C189 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "mainAxisAlignment",
        [_Location_column]: 9,
        [_Location_line]: 263,
        [_Location_file]: null
      });
    },
    get C190() {
      return C190 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 9,
        [_Location_line]: 264,
        [_Location_file]: null
      });
    },
    get C187() {
      return C187 = dart.constList([C188 || CT.C188, C189 || CT.C189, C190 || CT.C190], widget_inspector._Location);
    },
    get C186() {
      return C186 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C187 || CT.C187,
        [_Location_name]: null,
        [_Location_column]: 20,
        [_Location_line]: 261,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C193() {
      return C193 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "largeScreen",
        [_Location_column]: 7,
        [_Location_line]: 256,
        [_Location_file]: null
      });
    },
    get C194() {
      return C194 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "smallScreen",
        [_Location_column]: 7,
        [_Location_line]: 261,
        [_Location_file]: null
      });
    },
    get C192() {
      return C192 = dart.constList([C193 || CT.C193, C194 || CT.C194], widget_inspector._Location);
    },
    get C191() {
      return C191 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C192 || CT.C192,
        [_Location_name]: null,
        [_Location_column]: 12,
        [_Location_line]: 255,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C197() {
      return C197 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "text",
        [_Location_column]: 9,
        [_Location_line]: 280,
        [_Location_file]: null
      });
    },
    get C198() {
      return C198 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "onPressed",
        [_Location_column]: 9,
        [_Location_line]: 281,
        [_Location_file]: null
      });
    },
    get C199() {
      return C199 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "color",
        [_Location_column]: 9,
        [_Location_line]: 284,
        [_Location_file]: null
      });
    },
    get C196() {
      return C196 = dart.constList([C197 || CT.C197, C198 || CT.C198, C199 || CT.C199], widget_inspector._Location);
    },
    get C195() {
      return C195 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C196 || CT.C196,
        [_Location_name]: null,
        [_Location_column]: 7,
        [_Location_line]: 279,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C202() {
      return C202 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "text",
        [_Location_column]: 9,
        [_Location_line]: 287,
        [_Location_file]: null
      });
    },
    get C203() {
      return C203 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "onPressed",
        [_Location_column]: 9,
        [_Location_line]: 288,
        [_Location_file]: null
      });
    },
    get C204() {
      return C204 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "color",
        [_Location_column]: 9,
        [_Location_line]: 291,
        [_Location_file]: null
      });
    },
    get C201() {
      return C201 = dart.constList([C202 || CT.C202, C203 || CT.C203, C204 || CT.C204], widget_inspector._Location);
    },
    get C200() {
      return C200 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C201 || CT.C201,
        [_Location_name]: null,
        [_Location_column]: 7,
        [_Location_line]: 286,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C207() {
      return C207 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "text",
        [_Location_column]: 9,
        [_Location_line]: 294,
        [_Location_file]: null
      });
    },
    get C208() {
      return C208 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "onPressed",
        [_Location_column]: 9,
        [_Location_line]: 295,
        [_Location_file]: null
      });
    },
    get C209() {
      return C209 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "color",
        [_Location_column]: 9,
        [_Location_line]: 298,
        [_Location_file]: null
      });
    },
    get C206() {
      return C206 = dart.constList([C207 || CT.C207, C208 || CT.C208, C209 || CT.C209], widget_inspector._Location);
    },
    get C205() {
      return C205 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C206 || CT.C206,
        [_Location_name]: null,
        [_Location_column]: 7,
        [_Location_line]: 293,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C212() {
      return C212 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "data",
        [_Location_column]: 9,
        [_Location_line]: 304,
        [_Location_file]: null
      });
    },
    get C213() {
      return C213 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "textAlign",
        [_Location_column]: 9,
        [_Location_line]: 305,
        [_Location_file]: null
      });
    },
    get C214() {
      return C214 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "style",
        [_Location_column]: 9,
        [_Location_line]: 306,
        [_Location_file]: null
      });
    },
    get C211() {
      return C211 = dart.constList([C212 || CT.C212, C213 || CT.C213, C214 || CT.C214], widget_inspector._Location);
    },
    get C210() {
      return C210 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C211 || CT.C211,
        [_Location_name]: null,
        [_Location_column]: 29,
        [_Location_line]: 303,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C217() {
      return C217 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "mainAxisAlignment",
        [_Location_column]: 13,
        [_Location_line]: 318,
        [_Location_file]: null
      });
    },
    get C218() {
      return C218 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 13,
        [_Location_line]: 319,
        [_Location_file]: null
      });
    },
    get C216() {
      return C216 = dart.constList([C217 || CT.C217, C218 || CT.C218], widget_inspector._Location);
    },
    get C215() {
      return C215 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C216 || CT.C216,
        [_Location_name]: null,
        [_Location_column]: 11,
        [_Location_line]: 317,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C221() {
      return C221 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "mainAxisAlignment",
        [_Location_column]: 9,
        [_Location_line]: 315,
        [_Location_file]: null
      });
    },
    get C222() {
      return C222 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 9,
        [_Location_line]: 316,
        [_Location_file]: null
      });
    },
    get C220() {
      return C220 = dart.constList([C221 || CT.C221, C222 || CT.C222], widget_inspector._Location);
    },
    get C219() {
      return C219 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C220 || CT.C220,
        [_Location_name]: null,
        [_Location_column]: 20,
        [_Location_line]: 314,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C225() {
      return C225 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "crossAxisAlignment",
        [_Location_column]: 9,
        [_Location_line]: 325,
        [_Location_file]: null
      });
    },
    get C226() {
      return C226 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "children",
        [_Location_column]: 9,
        [_Location_line]: 326,
        [_Location_file]: null
      });
    },
    get C224() {
      return C224 = dart.constList([C225 || CT.C225, C226 || CT.C226], widget_inspector._Location);
    },
    get C223() {
      return C223 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C224 || CT.C224,
        [_Location_name]: null,
        [_Location_column]: 20,
        [_Location_line]: 324,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    },
    get C229() {
      return C229 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "largeScreen",
        [_Location_column]: 7,
        [_Location_line]: 314,
        [_Location_file]: null
      });
    },
    get C230() {
      return C230 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: null,
        [_Location_name]: "smallScreen",
        [_Location_column]: 7,
        [_Location_line]: 324,
        [_Location_file]: null
      });
    },
    get C228() {
      return C228 = dart.constList([C229 || CT.C229, C230 || CT.C230], widget_inspector._Location);
    },
    get C227() {
      return C227 = dart.const({
        __proto__: widget_inspector._Location.prototype,
        [_Location_parameterLocations]: C228 || CT.C228,
        [_Location_name]: null,
        [_Location_column]: 12,
        [_Location_line]: 313,
        [_Location_file]: "org-dartlang-app:///packages/myportfolio/profile_page.dart"
      });
    }
  });
  const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
  const _Location_name = dart.privateName(widget_inspector, "_Location.name");
  const _Location_column = dart.privateName(widget_inspector, "_Location.column");
  const _Location_line = dart.privateName(widget_inspector, "_Location.line");
  const _Location_file = dart.privateName(widget_inspector, "_Location.file");
  let C2;
  let C3;
  let C1;
  let C0;
  let C6;
  let C7;
  let C5;
  let C4;
  let C10;
  let C11;
  let C9;
  let C8;
  let C14;
  let C15;
  let C13;
  let C12;
  const EdgeInsets__bottom = dart.privateName(edge_insets, "EdgeInsets._bottom");
  const EdgeInsets__right = dart.privateName(edge_insets, "EdgeInsets._right");
  const EdgeInsets__top = dart.privateName(edge_insets, "EdgeInsets._top");
  const EdgeInsets__left = dart.privateName(edge_insets, "EdgeInsets._left");
  let C16;
  let C19;
  let C20;
  let C18;
  let C17;
  let C23;
  let C22;
  let C21;
  let C26;
  let C25;
  let C24;
  let C29;
  let C28;
  let C27;
  let C31;
  let C30;
  let C34;
  let C33;
  let C32;
  let C35;
  let C38;
  let C39;
  let C37;
  let C36;
  let C42;
  let C41;
  let C40;
  let C45;
  let C46;
  let C47;
  let C44;
  let C43;
  let C50;
  let C49;
  let C48;
  let C53;
  let C54;
  let C55;
  let C56;
  let C52;
  let C51;
  let C59;
  let C58;
  let C57;
  profile_page.ProfilePage = class ProfilePage extends framework.StatelessWidget {
    navButtons() {
      return JSArrayOfWidget().of([new profile_page.NavButton.new({text: "Sobre", onPressed: dart.fn(() => {
            html.window[$open]("", "");
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C0 || CT.C0}), new profile_page.NavButton.new({text: "Trabalho", onPressed: dart.fn(() => {
            html.window[$open]("", "");
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C4 || CT.C4}), new profile_page.NavButton.new({text: "Contato", onPressed: dart.fn(() => {
            html.window[$open]("", "");
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C8 || CT.C8})]);
    }
    build(context) {
      return new responsive_widget.ResponsiveWidget.new({largeScreen: new scaffold.Scaffold.new({backgroundColor: colors.Colors.white, appBar: new app_bar.AppBar.new({elevation: 0.0, backgroundColor: colors.Colors.purple, $creationLocationd_0dea112b090073317d4: C12 || CT.C12}), drawer: dart.test(responsive_widget.ResponsiveWidget.isSmallScreen(context)) ? new drawer.Drawer.new({child: new scroll_view.ListView.new({padding: C16 || CT.C16, children: this.navButtons(), $creationLocationd_0dea112b090073317d4: C17 || CT.C17}), $creationLocationd_0dea112b090073317d4: C21 || CT.C21}) : null, body: new single_child_scroll_view.SingleChildScrollView.new({child: new implicit_animations.AnimatedPadding.new({duration: new core.Duration.new({seconds: 1}), padding: new edge_insets.EdgeInsets.all(dart.notNull(media_query.MediaQuery.of(context).size.height) * 0.1), child: new responsive_widget.ResponsiveWidget.new({largeScreen: new basic.Column.new({mainAxisAlignment: flex.MainAxisAlignment.start, children: JSArrayOfWidget().of([new profile_page.NavHeader.new({navButtons: this.navButtons(), $creationLocationd_0dea112b090073317d4: C24 || CT.C24}), new basic.SizedBox.new({height: dart.notNull(media_query.MediaQuery.of(context).size.height) * 0.1, $creationLocationd_0dea112b090073317d4: C27 || CT.C27}), new profile_page.ProfileInfo.new({$creationLocationd_0dea112b090073317d4: C30 || CT.C30}), new basic.SizedBox.new({height: dart.notNull(media_query.MediaQuery.of(context).size.height) * 0.2, $creationLocationd_0dea112b090073317d4: C32 || CT.C32}), new profile_page.SocialInfo.new({$creationLocationd_0dea112b090073317d4: C35 || CT.C35})]), $creationLocationd_0dea112b090073317d4: C36 || CT.C36}), $creationLocationd_0dea112b090073317d4: C40 || CT.C40}), $creationLocationd_0dea112b090073317d4: C43 || CT.C43}), $creationLocationd_0dea112b090073317d4: C48 || CT.C48}), $creationLocationd_0dea112b090073317d4: C51 || CT.C51}), $creationLocationd_0dea112b090073317d4: C57 || CT.C57});
    }
  };
  (profile_page.ProfilePage.new = function(opts) {
    let key = opts && 'key' in opts ? opts.key : null;
    let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
    profile_page.ProfilePage.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
    ;
  }).prototype = profile_page.ProfilePage.prototype;
  dart.addTypeTests(profile_page.ProfilePage);
  dart.setMethodSignature(profile_page.ProfilePage, () => ({
    __proto__: dart.getMethods(profile_page.ProfilePage.__proto__),
    navButtons: dart.fnType(core.List$(framework.Widget), []),
    build: dart.fnType(framework.Widget, [framework.BuildContext])
  }));
  dart.setLibraryUri(profile_page.ProfilePage, "package:myportfolio/profile_page.dart");
  let C60;
  let C63;
  let C62;
  let C61;
  let C66;
  let C67;
  let C68;
  let C65;
  let C64;
  let C71;
  let C70;
  let C69;
  const NavHeader_navButtons = dart.privateName(profile_page, "NavHeader.navButtons");
  profile_page.NavHeader = class NavHeader extends framework.StatelessWidget {
    get navButtons() {
      return this[navButtons$];
    }
    set navButtons(value) {
      super.navButtons = value;
    }
    build(context) {
      return new responsive_widget.ResponsiveWidget.new({largeScreen: new basic.Row.new({mainAxisAlignment: dart.test(responsive_widget.ResponsiveWidget.isSmallScreen(context)) ? flex.MainAxisAlignment.center : flex.MainAxisAlignment.spaceBetween, crossAxisAlignment: flex.CrossAxisAlignment.center, children: (() => {
            let t0 = JSArrayOfWidget().of([]);
            t0[$add](new profile_page.PKDot.new({$creationLocationd_0dea112b090073317d4: C60 || CT.C60}));
            if (!dart.test(responsive_widget.ResponsiveWidget.isSmallScreen(context))) t0[$add](new basic.Row.new({children: this.navButtons, $creationLocationd_0dea112b090073317d4: C61 || CT.C61}));
            return t0;
          })(), $creationLocationd_0dea112b090073317d4: C64 || CT.C64}), $creationLocationd_0dea112b090073317d4: C69 || CT.C69});
    }
  };
  (profile_page.NavHeader.new = function(opts) {
    let key = opts && 'key' in opts ? opts.key : null;
    let navButtons = opts && 'navButtons' in opts ? opts.navButtons : null;
    let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
    this[navButtons$] = navButtons;
    profile_page.NavHeader.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
    ;
  }).prototype = profile_page.NavHeader.prototype;
  dart.addTypeTests(profile_page.NavHeader);
  const navButtons$ = NavHeader_navButtons;
  dart.setMethodSignature(profile_page.NavHeader, () => ({
    __proto__: dart.getMethods(profile_page.NavHeader.__proto__),
    build: dart.fnType(framework.Widget, [framework.BuildContext])
  }));
  dart.setLibraryUri(profile_page.NavHeader, "package:myportfolio/profile_page.dart");
  dart.setFieldSignature(profile_page.NavHeader, () => ({
    __proto__: dart.getFields(profile_page.NavHeader.__proto__),
    navButtons: dart.finalFieldType(core.List$(framework.Widget))
  }));
  let C74;
  let C75;
  let C76;
  let C73;
  let C72;
  let C79;
  let C78;
  let C77;
  let C82;
  let C83;
  let C84;
  let C85;
  let C81;
  let C80;
  let C88;
  let C87;
  let C86;
  profile_page.PKDot = class PKDot extends framework.StatelessWidget {
    build(context) {
      return new basic.Row.new({children: JSArrayOfWidget().of([new text.Text.new("zapiti", {textScaleFactor: 2.0, style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, color: colors.Colors.purple}), $creationLocationd_0dea112b090073317d4: C72 || CT.C72}), new basic.SizedBox.new({width: 5.0, $creationLocationd_0dea112b090073317d4: C77 || CT.C77}), new implicit_animations.AnimatedContainer.new({duration: new core.Duration.new({seconds: 1}), height: 8.0, width: 8.0, decoration: new box_decoration.BoxDecoration.new({shape: box_border.BoxShape.circle, color: colors.Colors.orange}), $creationLocationd_0dea112b090073317d4: C80 || CT.C80})]), $creationLocationd_0dea112b090073317d4: C86 || CT.C86});
    }
  };
  (profile_page.PKDot.new = function(opts) {
    let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
    profile_page.PKDot.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
    ;
  }).prototype = profile_page.PKDot.prototype;
  dart.addTypeTests(profile_page.PKDot);
  dart.setMethodSignature(profile_page.PKDot, () => ({
    __proto__: dart.getMethods(profile_page.PKDot.__proto__),
    build: dart.fnType(framework.Widget, [framework.BuildContext])
  }));
  dart.setLibraryUri(profile_page.PKDot, "package:myportfolio/profile_page.dart");
  const Color__value = dart.privateName(ui, "Color._value");
  let C91;
  let C92;
  let C93;
  let C94;
  let C95;
  let C96;
  let C97;
  let C98;
  let C99;
  let C100;
  let C90;
  const ColorSwatch__swatch = dart.privateName(colors$, "ColorSwatch._swatch");
  let C89;
  let C103;
  let C104;
  let C102;
  let C101;
  let C107;
  let C108;
  let C109;
  let C110;
  let C106;
  let C105;
  const NavButton_text = dart.privateName(profile_page, "NavButton.text");
  const NavButton_onPressed = dart.privateName(profile_page, "NavButton.onPressed");
  const NavButton_color = dart.privateName(profile_page, "NavButton.color");
  profile_page.NavButton = class NavButton extends framework.StatelessWidget {
    get text() {
      return this[text$];
    }
    set text(value) {
      super.text = value;
    }
    get onPressed() {
      return this[onPressed$];
    }
    set onPressed(value) {
      super.onPressed = value;
    }
    get color() {
      return this[color$];
    }
    set color(value) {
      super.color = value;
    }
    build(context) {
      return new outline_button.OutlineButton.new({child: new text.Text.new(core.String._check(this.text), {style: new text_style.TextStyle.new({color: colors.Colors.purple}), $creationLocationd_0dea112b090073317d4: C101 || CT.C101}), borderSide: new borders.BorderSide.new({color: this.color}), onPressed: VoidTovoid()._check(this.onPressed), highlightedBorderColor: this.color, $creationLocationd_0dea112b090073317d4: C105 || CT.C105});
    }
  };
  (profile_page.NavButton.new = function(opts) {
    let key = opts && 'key' in opts ? opts.key : null;
    let text = opts && 'text' in opts ? opts.text : null;
    let onPressed = opts && 'onPressed' in opts ? opts.onPressed : null;
    let color = opts && 'color' in opts ? opts.color : C89 || CT.C89;
    let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
    this[text$] = text;
    this[onPressed$] = onPressed;
    this[color$] = color;
    profile_page.NavButton.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
    ;
  }).prototype = profile_page.NavButton.prototype;
  dart.addTypeTests(profile_page.NavButton);
  const text$ = NavButton_text;
  const onPressed$ = NavButton_onPressed;
  const color$ = NavButton_color;
  dart.setMethodSignature(profile_page.NavButton, () => ({
    __proto__: dart.getMethods(profile_page.NavButton.__proto__),
    build: dart.fnType(framework.Widget, [framework.BuildContext])
  }));
  dart.setLibraryUri(profile_page.NavButton, "package:myportfolio/profile_page.dart");
  dart.setFieldSignature(profile_page.NavButton, () => ({
    __proto__: dart.getFields(profile_page.NavButton.__proto__),
    text: dart.finalFieldType(dart.dynamic),
    onPressed: dart.finalFieldType(dart.dynamic),
    color: dart.finalFieldType(ui.Color)
  }));
  let C113;
  let C114;
  let C115;
  let C112;
  let C111;
  let C118;
  let C119;
  let C120;
  let C117;
  let C116;
  let C123;
  let C122;
  let C121;
  let C124;
  let C127;
  let C128;
  let C126;
  let C125;
  let C131;
  let C130;
  let C129;
  let C134;
  let C135;
  let C136;
  let C133;
  let C132;
  let C139;
  let C138;
  let C137;
  let C142;
  let C141;
  let C140;
  let C145;
  let C146;
  let C147;
  let C148;
  let C149;
  let C144;
  let C143;
  let C152;
  let C151;
  let C150;
  let C155;
  let C156;
  let C154;
  let C153;
  let C159;
  let C160;
  let C161;
  let C162;
  let C163;
  let C164;
  let C158;
  let C157;
  let C167;
  let C168;
  let C166;
  let C165;
  let C171;
  let C172;
  let C170;
  let C169;
  let C175;
  let C176;
  let C177;
  let C174;
  let C173;
  let C180;
  let C181;
  let C182;
  let C179;
  let C178;
  let C185;
  let C184;
  let C183;
  let C188;
  let C189;
  let C190;
  let C187;
  let C186;
  let C193;
  let C194;
  let C192;
  let C191;
  const ProfileInfo_profileData = dart.privateName(profile_page, "ProfileInfo.profileData");
  profile_page.ProfileInfo = class ProfileInfo extends framework.StatelessWidget {
    get profileData() {
      return this[profileData];
    }
    set profileData(value) {
      super.profileData = value;
    }
    profileImage(context) {
      return new container.Container.new({height: dart.test(responsive_widget.ResponsiveWidget.isSmallScreen(framework.BuildContext._check(context))) ? dart.notNull(media_query.MediaQuery.of(framework.BuildContext._check(context)).size.height) * 0.25 : dart.notNull(media_query.MediaQuery.of(framework.BuildContext._check(context)).size.width) * 0.25, width: dart.test(responsive_widget.ResponsiveWidget.isSmallScreen(framework.BuildContext._check(context))) ? dart.notNull(media_query.MediaQuery.of(framework.BuildContext._check(context)).size.height) * 0.25 : dart.notNull(media_query.MediaQuery.of(framework.BuildContext._check(context)).size.width) * 0.25, decoration: new box_decoration.BoxDecoration.new({backgroundBlendMode: ui.BlendMode.luminosity, color: colors.Colors.deepOrange, shape: box_border.BoxShape.circle, image: new decoration_image.DecorationImage.new({image: new image_provider.NetworkImage.new("https://ovicio.com.br/wp-content/uploads/2019/03/20190317-dr-stone-anime-visual-1151423-1280x0-1200x675.jpeg"), alignment: alignment.Alignment.center, fit: box_fit.BoxFit.cover})}), $creationLocationd_0dea112b090073317d4: C173 || CT.C173});
    }
    build(context) {
      return new responsive_widget.ResponsiveWidget.new({largeScreen: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.spaceEvenly, crossAxisAlignment: flex.CrossAxisAlignment.center, children: JSArrayOfWidget().of([framework.Widget._check(this.profileImage(context)), this.profileData]), $creationLocationd_0dea112b090073317d4: C178 || CT.C178}), smallScreen: new basic.Column.new({mainAxisSize: flex.MainAxisSize.max, mainAxisAlignment: flex.MainAxisAlignment.spaceBetween, children: JSArrayOfWidget().of([framework.Widget._check(this.profileImage(context)), new basic.SizedBox.new({height: dart.notNull(media_query.MediaQuery.of(context).size.height) * 0.1, $creationLocationd_0dea112b090073317d4: C183 || CT.C183}), this.profileData]), $creationLocationd_0dea112b090073317d4: C186 || CT.C186}), $creationLocationd_0dea112b090073317d4: C191 || CT.C191});
    }
  };
  (profile_page.ProfileInfo.new = function(opts) {
    let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
    this[profileData] = new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new text.Text.new("Doctor stone", {textScaleFactor: 2.0, style: new text_style.TextStyle.new({color: colors.Colors.orange}), $creationLocationd_0dea112b090073317d4: C111 || CT.C111}), new text.Text.new("Senku", {textScaleFactor: 5.0, style: new text_style.TextStyle.new({color: colors.Colors.purple, fontWeight: ui.FontWeight.bold}), $creationLocationd_0dea112b090073317d4: C116 || CT.C116}), new basic.SizedBox.new({height: 10.0, $creationLocationd_0dea112b090073317d4: C121 || CT.C121}), new container.Container.new({padding: C124 || CT.C124, width: 500.0, child: new basic.Column.new({children: JSArrayOfWidget().of([new text.Text.new("O típico estudante Taiju diz a seu amigo Senku, que ama a ciência, " + "que ele está finalmente prestes a confessar a Yuzuriha, " + "com quem ele esteve secretamente apaixonado por cinco anos. " + "Encontrando-se debaixo de uma árvore de cânfora nos terrenos da escola, " + "assim como Taiju está prestes a confessar, uma luz brilhante aparece no céu. ", {style: new text_style.TextStyle.new({color: colors.Colors.purple, fontSize: 22.0}), $creationLocationd_0dea112b090073317d4: C125 || CT.C125})]), $creationLocationd_0dea112b090073317d4: C129 || CT.C129}), $creationLocationd_0dea112b090073317d4: C132 || CT.C132}), new basic.SizedBox.new({height: 20.0, $creationLocationd_0dea112b090073317d4: C137 || CT.C137}), new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.spaceEvenly, children: JSArrayOfWidget().of([new raised_button.RaisedButton.new({shape: new stadium_border.StadiumBorder.new(), child: new text.Text.new("Resumo", {$creationLocationd_0dea112b090073317d4: C140 || CT.C140}), color: colors.Colors.red, onPressed: dart.fn(() => {
                html.window[$open]("", "");
              }, VoidToNull()), padding: new edge_insets.EdgeInsets.all(10.0), $creationLocationd_0dea112b090073317d4: C143 || CT.C143}), new basic.SizedBox.new({width: 20.0, $creationLocationd_0dea112b090073317d4: C150 || CT.C150}), new outline_button.OutlineButton.new({borderSide: new borders.BorderSide.new({color: colors.Colors.red}), shape: new stadium_border.StadiumBorder.new(), child: new text.Text.new("teste!", {style: new text_style.TextStyle.new({color: colors.Colors.purple}), $creationLocationd_0dea112b090073317d4: C153 || CT.C153}), color: colors.Colors.red, onPressed: dart.fn(() => {
                html.window[$open]("", "");
              }, VoidToNull()), padding: new edge_insets.EdgeInsets.all(10.0), $creationLocationd_0dea112b090073317d4: C157 || CT.C157})]), $creationLocationd_0dea112b090073317d4: C165 || CT.C165})]), $creationLocationd_0dea112b090073317d4: C169 || CT.C169});
    profile_page.ProfileInfo.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
    ;
  }).prototype = profile_page.ProfileInfo.prototype;
  dart.addTypeTests(profile_page.ProfileInfo);
  const profileData = ProfileInfo_profileData;
  dart.setMethodSignature(profile_page.ProfileInfo, () => ({
    __proto__: dart.getMethods(profile_page.ProfileInfo.__proto__),
    profileImage: dart.fnType(dart.dynamic, [dart.dynamic]),
    build: dart.fnType(framework.Widget, [framework.BuildContext])
  }));
  dart.setLibraryUri(profile_page.ProfileInfo, "package:myportfolio/profile_page.dart");
  dart.setFieldSignature(profile_page.ProfileInfo, () => ({
    __proto__: dart.getFields(profile_page.ProfileInfo.__proto__),
    profileData: dart.finalFieldType(basic.Column)
  }));
  let C197;
  let C198;
  let C199;
  let C196;
  let C195;
  let C202;
  let C203;
  let C204;
  let C201;
  let C200;
  let C207;
  let C208;
  let C209;
  let C206;
  let C205;
  let C212;
  let C213;
  let C214;
  let C211;
  let C210;
  let C217;
  let C218;
  let C216;
  let C215;
  let C221;
  let C222;
  let C220;
  let C219;
  let C225;
  let C226;
  let C224;
  let C223;
  let C229;
  let C230;
  let C228;
  let C227;
  profile_page.SocialInfo = class SocialInfo extends framework.StatelessWidget {
    socialMediaWidgets() {
      return JSArrayOfWidget().of([new profile_page.NavButton.new({text: "Github", onPressed: dart.fn(() => {
            html.window[$open]("", "Git");
          }, VoidToNull()), color: colors.Colors.blue, $creationLocationd_0dea112b090073317d4: C195 || CT.C195}), new profile_page.NavButton.new({text: "Twitter", onPressed: dart.fn(() => {
            html.window[$open]("", "Twitter");
          }, VoidToNull()), color: colors.Colors.blue, $creationLocationd_0dea112b090073317d4: C200 || CT.C200}), new profile_page.NavButton.new({text: "Facebook", onPressed: dart.fn(() => {
            html.window[$open]("", "Facebook");
          }, VoidToNull()), color: colors.Colors.blue, $creationLocationd_0dea112b090073317d4: C205 || CT.C205})]);
    }
    copyRightText() {
      return new text.Text.new("Copirignt", {textAlign: ui.TextAlign.center, style: new text_style.TextStyle.new({color: colors.Colors.purple}), $creationLocationd_0dea112b090073317d4: C210 || CT.C210});
    }
    build(context) {
      return new responsive_widget.ResponsiveWidget.new({largeScreen: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.spaceBetween, children: JSArrayOfWidget().of([new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.start, children: this.socialMediaWidgets(), $creationLocationd_0dea112b090073317d4: C215 || CT.C215}), this.copyRightText()]), $creationLocationd_0dea112b090073317d4: C219 || CT.C219}), smallScreen: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: (() => {
            let t1 = JSArrayOfWidget().of([]);
            for (let t2 of this.socialMediaWidgets())
              t1[$add](t2);
            t1[$add](this.copyRightText());
            return t1;
          })(), $creationLocationd_0dea112b090073317d4: C223 || CT.C223}), $creationLocationd_0dea112b090073317d4: C227 || CT.C227});
    }
  };
  (profile_page.SocialInfo.new = function(opts) {
    let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
    profile_page.SocialInfo.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
    ;
  }).prototype = profile_page.SocialInfo.prototype;
  dart.addTypeTests(profile_page.SocialInfo);
  dart.setMethodSignature(profile_page.SocialInfo, () => ({
    __proto__: dart.getMethods(profile_page.SocialInfo.__proto__),
    socialMediaWidgets: dart.fnType(core.List$(framework.Widget), []),
    copyRightText: dart.fnType(framework.Widget, []),
    build: dart.fnType(framework.Widget, [framework.BuildContext])
  }));
  dart.setLibraryUri(profile_page.SocialInfo, "package:myportfolio/profile_page.dart");
  dart.trackLibraries("packages/myportfolio/profile_page", {
    "package:myportfolio/profile_page.dart": profile_page
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["profile_page.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAQ+B,mCACvB,sCACQ,oBACK;AACe,YAAnB,AAAO,mBAAK,IAAI;mFAGzB,sCACQ,uBACK;AACe,YAAnB,AAAO,mBAAK,IAAI;mFAGzB,sCACQ,sBACK;AACe,YAAnB,AAAO,mBAAK,IAAI;;IAG1B;UAGqB;AACxB,YAAO,0DACQ,4CACa,6BAChB,mCACK,sBACa,iGAED,iDAAc,OAAO,KACxC,8BACS,gEAEK,sIAGd,YACA,+DACG,uDACK,gCAAkB,cACR,+BAAuC,aAAxB,AAAY,AAAK,0BAAd,OAAO,iBAAgB,aACtD,yDACQ,yCAC0B,wCACnB,sBAChB,4CAAsB,4EACtB,gCAC6C,aAAxB,AAAY,AAAK,0BAAd,OAAO,iBAAgB,8DAE/C,2FACA,gCAC6C,aAAxB,AAAY,AAAK,0BAAd,OAAO,iBAAgB,8DAE/C;IAQhB;;;QAhEuB;;AAAQ,4DAAW,GAAG;;EAAC;;;;;;;;;;;;;;;;;;;;;;IAoE3B;;;;;;UAIO;AACxB,YAAO,0DACQ,gDACyB,iDAAc,OAAO,KACjC,gCACA,yDACe;;qBAErC;AAEA,2BAAsB,iDAAc,OAAO,aACzC,6BACY;;;IAKtB;;;QAnBqB;QAAU;;;AAAe,0DAAW,GAAG;;EAAC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;UAwBnC;AACxB,YAAO,8BACa,sBAChB,kBACE,4BACiB,YAEV,0CACkB,2BACT,iFAIlB,+BACS,8DAET,yDACY,gCAAkB,aACpB,YACD,iBACK,6CACM,mCACF;IAKxB;;;;;;EACF;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;IAGQ;;;;;;IACA;;;;;;IACM;;;;;;UAUc;AACxB,YAAO,8CACE,qCAAK,oBAAW,qCAAwB,+FACnC,mCACH,6CAEE,yCACa;IAE5B;;;QAhBS;QACU;QACA;QACV;;IAFU;IACA;IACV;AACH,0DAAW,GAAG;;EAAC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;IAoCf;;;;;;iBApBO;AAAY,4DACM,+EAAc,OAAO,MACL,aAAxB,AAAY,AAAK,wDAAd,OAAO,kBAAgB,OACH,aAAvB,AAAY,AAAK,wDAAd,OAAO,iBAAe,uBAClB,+EAAc,OAAO,MACJ,aAAxB,AAAY,AAAK,wDAAd,OAAO,kBAAgB,OACH,aAAvB,AAAY,AAAK,wDAAd,OAAO,iBAAe,kBAC9B,2DACqB,gCACjB,iCAEE,mCACT,iDACE,oCAAa,4HACC,iCACT;IAGjB;UA+EqB;AACxB,YAAO,0DACQ,sCAC0B,wDACE,0CACrB,8CAAC,kBAAa,OAAO,IAAG,4FAE/B,oCACgB,0CACU,+CACnB,8CAChB,kBAAa,OAAO,IACpB,gCAC6C,aAAxB,AAAY,AAAK,0BAAd,OAAO,iBAAgB,gEAE/C;IAIR;;;;IAhGM,oBAAc,0CACqB,yCACrB,sBAChB,kBACE,kCACiB,YACV,qCAAwB,mFAEjC,kBACE,2BACiB,YACV,qCACS,kCACS,iFAG3B,gCACU,iEAEV,8DAEO,cACC,gCACY,sBACf,kBACH,AAAqE,AACX,AACI,AACY,wEAF1E,6DACA,iEACA,6EACA,yFAEO,qCAAwB,gCAAiB,2LAQlD,gCACU,iEAEV,sCACuC,8CACnB,sBAChB,2CACS,+CACA,kBAAK,6EACE,8BACH;AAGF,gBAFF,AAAO,mBACR,IACA;yCAEc,+BAAI,kEAE1B,+BACS,iEAET,kDACc,mCACI,4BAET,+CACA,kBAAK,kBAAgB,qCAAwB,0FACtC,8BACH;AACe,gBAAnB,AAAO,mBAAK,IAAI;yCAEH,+BAAI;;;EA4BpC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAII,YAAO,uBACL,sCACQ,qBACK;AACkB,YAAtB,AAAO,mBAAK,IAAI;mCAET,+EAEhB,sCACQ,sBACK;AACsB,YAA1B,AAAO,mBAAK,IAAI;mCAET,+EAEhB,sCACQ,uBACK;AACuB,YAA3B,AAAO,mBAAK,IAAI;mCAET;IAGpB;;AAE0B,+BACpB,yBACqB,4BACd,qCACS;IAEjB;UAGqB;AACxB,YAAO,0DACQ,sCAC0B,+CACnB,sBAChB,sCACuC,wCAC3B,sFAEZ,gGAGS,0CAC4B;;0BAElC;;qBACH;;;IAIR;;;;;;EACF","file":"profile_page.ddc.js"}');
  // Exports:
  return {
    profile_page: profile_page
  };
});

//# sourceMappingURL=profile_page.ddc.js.map
