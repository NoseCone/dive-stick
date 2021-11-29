// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as RescriptReactRouter from "@rescript/react/src/RescriptReactRouter.bs.js";
import * as Comps$RescriptReactIntro from "./Comps.bs.js";
import * as Types$RescriptReactIntro from "./Types.bs.js";
import * as CompTabs$RescriptReactIntro from "./CompTabs.bs.js";
import * as CompHeader$RescriptReactIntro from "./CompHeader.bs.js";

function App$Breadcrumb(Props) {
  var compName = Props.compName;
  return React.createElement("nav", {
              className: "breadcrumb"
            }, React.createElement("ul", undefined, React.createElement("li", undefined, React.createElement("a", {
                          href: "/"
                        }, "Dive Stick (Rescript)")), React.createElement("li", {
                      className: "is-active"
                    }, compName)));
}

var Breadcrumb = {
  make: App$Breadcrumb
};

function App$Spacer(Props) {
  return React.createElement("div", {
              className: "spacer"
            });
}

var Spacer = {
  make: App$Spacer
};

function App(Props) {
  var url = RescriptReactRouter.useUrl(undefined, undefined);
  var match = React.useState(function () {
        return "";
      });
  var setCompUrl = match[1];
  var compUrl = match[0];
  var match$1 = React.useState(function () {
        return Types$RescriptReactIntro.nullComp;
      });
  var setComp = match$1[1];
  var comp = match$1[0];
  var match$2 = React.useState(function () {
        return Types$RescriptReactIntro.nullNominals;
      });
  var setNominals = match$2[1];
  var nominals = match$2[0];
  var haveCompUrl = compUrl !== "";
  React.useEffect((function () {
          var match = url.path;
          if (!match) {
            return ;
          }
          if (match.hd !== "comp-prefix") {
            return ;
          }
          var match$1 = match.tl;
          if (!match$1) {
            return ;
          }
          if (match$1.tl) {
            return ;
          }
          var compPrefix = match$1.hd;
          Curry._1(setCompUrl, (function (param) {
                  return "http://" + compPrefix + ".flaretiming.com/json";
                }));
          RescriptReactRouter.push("/comp");
          
        }), [
        url,
        setCompUrl
      ]);
  React.useEffect((function () {
          Types$RescriptReactIntro.getComp(haveCompUrl, compUrl, setComp);
          
        }), [
        haveCompUrl,
        compUrl,
        setComp
      ]);
  React.useEffect((function () {
          Types$RescriptReactIntro.getNominals(haveCompUrl, compUrl, setNominals);
          
        }), [
        haveCompUrl,
        compUrl,
        setNominals
      ]);
  var match$3 = url.path;
  if (!match$3) {
    return React.createElement(Comps$RescriptReactIntro.make, {});
  }
  switch (match$3.hd) {
    case "comp-prefix" :
        var match$4 = match$3.tl;
        if (match$4 && !match$4.tl) {
          return React.createElement("div", undefined);
        }
        break;
    case "comp" :
    case "pilots" :
    case "settings" :
        if (!match$3.tl) {
          return React.createElement("div", undefined, React.createElement(App$Spacer, {}), React.createElement(CompHeader$RescriptReactIntro.make, {
                          comp: comp,
                          nominals: nominals
                        }), React.createElement(App$Spacer, {}), React.createElement(App$Breadcrumb, {
                          compName: comp.compName
                        }), React.createElement(CompTabs$RescriptReactIntro.make, {}));
        }
        break;
    default:
      
  }
  return React.createElement("div", undefined, "Route not found");
}

var make = App;

export {
  Breadcrumb ,
  Spacer ,
  make ,
  
}
/* react Not a pure module */
