(this["webpackJsonpdive-stick"]=this["webpackJsonpdive-stick"]||[]).push([[0],{20:function(e,t,a){},21:function(e,t,a){"use strict";a.r(t);var n=a(0),r=a(13),c=a(6),i=function(e){e&&e instanceof Function&&a.e(3).then(a.bind(null,22)).then((function(t){var a=t.getCLS,n=t.getFID,r=t.getFCP,c=t.getLCP,i=t.getTTFB;a(e),n(e),r(e),c(e),i(e)}))},l=a(1),s=a(10);var m=function(e){return n.createElement(n.Fragment,void 0,n.createElement("div",{className:"content",id:"content"},n.createElement("div",{className:"tile is-ancestor"},n.createElement("div",{className:"tile is-parent"},n.createElement("article",{className:"tile is-child notification is-light"},n.createElement("p",{className:"title"},"Leading Edge"),n.createElement("p",{className:"subtitle"},"Comps scored with ",n.createElement("a",{href:"https://flaretiming.com"},"Flare Timing")," and presented with ",n.createElement("a",{href:"https://rescript-lang.org/"},"rescript"))))),n.createElement("p",void 0,"Want",n.createElement("a",{href:"https://flaretiming.com/posts/2018-12-19-add-a-comp.html"},"your comp here"),"?"),n.createElement("div",{className:"tile is-ancestor"},n.createElement("div",{className:"tile is-vertical is-5"},n.createElement("div",{className:"tile"},n.createElement("div",{className:"tile is-parent is-vertical"},n.createElement("div",{className:"tile is-child box"},n.createElement("h3",void 0,"Paragliding"),n.createElement("p",void 0),n.createElement("ul",void 0,n.createElement("li",void 0,"Italian Open ",n.createElement("a",{href:"/comp-prefix/2020-italy-open"},"2020")),n.createElement("li",void 0,"Dalmatian ",n.createElement("a",{href:"/comp-prefix/2019-dalmatian"},"2019")," ",n.createElement("a",{href:"/comp-prefix/2018-dalmatian"},"2018")),n.createElement("ul",void 0,n.createElement("p",void 0)))),n.createElement("div",{className:"tile is-child box"},n.createElement("h3",void 0,"Comp Archetypes"),n.createElement("p",void 0),n.createElement("ul",void 0,n.createElement("li",void 0,n.createElement("a",{href:"/comp-prefix/1976-never-land"},"1976 Never Land")),n.createElement("li",void 0,n.createElement("a",{href:"/comp-prefix/1989-lift-lines"},"1989 Lift Lines")),n.createElement("ul",void 0,n.createElement("p",void 0))))))),n.createElement("div",{className:"tile is-vertical is-7"},n.createElement("div",{className:"tile"},n.createElement("div",{className:"tile is-parent is-vertical"},n.createElement("div",{className:"tile is-child box"},n.createElement("h3",void 0,"Hang Gliding"),n.createElement("h5",void 0,"Oceania"),n.createElement("ul",void 0,n.createElement("li",void 0,"Forbes Flatlands ",n.createElement("a",{href:"/comp-prefix/2018-forbes"},"2018")," ",n.createElement("a",{href:"/comp-prefix/2017-forbes"},"2017")," ",n.createElement("a",{href:"/comp-prefix/2016-forbes"},"2016")," ",n.createElement("a",{href:"/comp-prefix/2015-forbes"},"2015")," ",n.createElement("a",{href:"/comp-prefix/2014-forbes"},"2014")," ",n.createElement("a",{href:"/comp-prefix/2012-forbes"},"2012")),n.createElement("li",void 0,"Dalby Big Air ",n.createElement("a",{href:"/comp-prefix/2017-dalby"},"2017"))),n.createElement("h5",void 0,"Europe"),n.createElement("ul",void 0,n.createElement("li",void 0,"Meduno ",n.createElement("a",{href:"/comp-prefix/2020-meduno"},"2020")),n.createElement("li",void 0,"Tolmezzo ",n.createElement("a",{href:"/comp-prefix/2019-italy"},"2019"))),n.createElement("h5",void 0,"Americas"),n.createElement("ul",void 0,n.createElement("li",void 0,"Green Swamp Klassic 2016 ",n.createElement("a",{href:"/comp-prefix/2016-greenswamp"},"Topless")," ",n.createElement("a",{href:"/comp-prefix/2016-greenswamp-sport"},"Kingposted")),n.createElement("li",void 0,"Big Spring ",n.createElement("a",{href:"2016-big-spring"},"2016")),n.createElement("li",void 0,"QuestAir Open ",n.createElement("a",{href:"/comp-prefix/2016-quest"},"2016"))))))))))},o=a(7),d=a(2),E=a(5);function u(e){if(2!==e.length)return{pilotId:"",pilotName:"",pilotStatus:[]};var t=e[0];return 2!==t.length?{pilotId:"",pilotName:"",pilotStatus:[]}:{pilotId:t[0],pilotName:t[1],pilotStatus:e[1]}}var p=o.f((function(e){return[e.announced,e.retroactive]}),(function(e){return{TAG:0,_0:{announced:e[0],retroactive:e[1]}}}),o.d("announced",o.i),o.d("retroactive",o.i)),v=o.e((function(e){return e.zoneName}),(function(e){return{TAG:0,_0:{zoneName:e}}}),o.d("zoneName",o.i)),f=o.e((function(e){return e.raw}),(function(e){return{TAG:0,_0:{raw:e}}}),o.d("raw",o.a(v))),h=o.g((function(e){return[e.taskName,e.zones,e.stopped,e.cancelled]}),(function(e){return{TAG:0,_0:{taskName:e[0],zones:e[1],stopped:e[2],cancelled:e[3]}}}),o.d("taskName",o.i),o.d("zones",f),o.h(o.d("stopped",p)),o.h(o.d("cancelled",o.b)));var N={compName:"",scoreBack:void 0,utcOffset:{timeZoneMinutes:0},from:"",to:"",location:"",earth:{sphere:{radius:""}},earthMath:"",give:{giveDistance:void 0,giveFraction:0}},g={free:"",distance:"",time:"",goal:0};function k(e){var t=e.name,a=e.selected,r=e.linkTo,c=a===t?"is-active":"";return n.createElement("li",{className:c},n.createElement("a",{onClick:function(e){return s.a(r)}},t))}var b=function(e){var t,a=s.b(void 0,void 0).path;if(a)switch(a.hd){case"comp":t="Tasks";break;case"pilots":t="Pilots";break;case"settings":t="Settings";break;default:t=""}else t="";return n.createElement("div",{className:"tabs"},n.createElement("ul",void 0,n.createElement(k,{name:"Settings",selected:t,linkTo:"/settings"}),n.createElement(k,{name:"Tasks",selected:t,linkTo:"/comp"}),n.createElement(k,{name:"Pilots",selected:t,linkTo:"/pilots"})))},S=a(9);function x(e){var t=e.row;return n.createElement("tr",void 0,n.createElement("td",void 0,"1"),n.createElement("td",{className:"td-task-name"},t.taskName),n.createElement("td",{className:"td-task-tps"},t.tps),n.createElement("td",{className:"td-task-dist"},t.distance),n.createElement("td",{className:"td-task-stopped"},t.stopped?"STOPPED":""),n.createElement("td",{className:"td-task-cancelled"},t.cancelled?"CANCELLED":""))}var w=function(e){var t=e.tasks,a=e.taskLengths,r=d.d(function(e,t){return d.h(e,t,(function(e,t){return{taskName:e.taskName,tps:d.c(e.zones.raw,(function(e){return e.zoneName})).join("-"),distance:t,stopped:!!S.b(e.stopped),cancelled:S.a(e.cancelled,!1)}}))}(t,a),(function(e,t){return n.createElement(x,{row:t,key:String(e)})}));return n.createElement(n.Fragment,void 0,n.createElement("table",{className:"table is-striped"},n.createElement("thead",void 0,n.createElement("tr",void 0,n.createElement("th",void 0,"#"),n.createElement("th",{className:"th-task-name"},"Name"),n.createElement("th",{className:"th-task-tps"},"Turnpoints"),n.createElement("th",{className:"th-task-dist"},"Distance"),n.createElement("th",{className:"th-task-stopped"},"Stopped"),n.createElement("th",{className:"th-task-cancelled"},"Cancelled"))),n.createElement("tbody",void 0,r)))};var T=function(e){var t=e.comp,a=e.nominals;return n.createElement(n.Fragment,void 0,n.createElement("div",{className:"container"},n.createElement("div",{className:"tile is-ancestor",wrap:""},n.createElement("div",{className:"tile"},n.createElement("div",{className:"tile is-parent"},n.createElement("div",{className:"tile is-child box"},n.createElement("p",{className:"title is-3"},t.compName),n.createElement("p",{className:"title is-5"},function(e){return e.from+" to "+e.to+", "+e.location}(t)),n.createElement("div",{className:"example"},n.createElement("div",{className:"field is-grouped is-grouped-multiline"},n.createElement("div",{className:"control"},n.createElement("div",{className:"tags has-addons"},n.createElement("span",{className:"tag"},"UTC offset"),n.createElement("span",{className:"tag is-warning"},String(t.utcOffset.timeZoneMinutes)))),n.createElement("div",{className:"control"},n.createElement("div",{className:"tags has-addons"},n.createElement("span",{className:"tag"},"minimum distance"),n.createElement("span",{className:"tag is-black"},a.free))),n.createElement("div",{className:"control"},n.createElement("div",{className:"tags has-addons"},n.createElement("span",{className:"tag"},"nominal distance"),n.createElement("span",{className:"tag is-info"},a.distance))),n.createElement("div",{className:"control"},n.createElement("div",{className:"tags has-addons"},n.createElement("span",{className:"tag"},"nominal time"),n.createElement("span",{className:"tag is-success"},a.time))),n.createElement("div",{className:"control"},n.createElement("div",{className:"tags has-addons"},n.createElement("span",{className:"tag"},"nominal goal"),n.createElement("span",{className:"tag is-primary"},String(a.goal)))),n.createElement("div",{className:"control"},n.createElement("div",{className:"tags has-addons"},n.createElement("span",{className:"tag"},"score-back time"),n.createElement("span",{className:"tag is-danger"},S.a(t.scoreBack,""))))))))))))};function F(e){return"DF"===e?"":e}function y(e){var t=e.pilot;return n.createElement("tr",void 0,n.createElement("td",{className:"td-pid"},t.pilotId),n.createElement("td",void 0,t.pilotName),d.d(t.pilotStatus,(function(e,t){return n.createElement("td",{key:String(e)},F(t))})))}var j=function(e){var t=e.tasks,a=e.pilots,r=d.c(a,(function(e){return n.createElement(y,{pilot:e,key:e.pilotId})}));return n.createElement(n.Fragment,void 0,n.createElement("table",{className:"table is-bordered is-striped"},n.createElement("thead",void 0,n.createElement("tr",void 0,n.createElement("th",{className:"th-pid"},"Id"),n.createElement("th",void 0,"Name"),d.d(t,(function(e,t){return n.createElement("th",{key:String(e)},t.taskName)})))),n.createElement("tbody",void 0,r)))};var P=function(e){var t=e.giveFraction,a=e.earthRadius,r=e.earthMath;return n.createElement(n.Fragment,void 0,n.createElement("table",{className:"table is-bordered"},n.createElement("thead",void 0,n.createElement("tr",void 0,n.createElement("th",{colSpan:3}),n.createElement("th",void 0,"Value"))),n.createElement("tbody",void 0,n.createElement("tr",void 0,n.createElement("th",void 0,"* Give"),n.createElement("td",{colSpan:2},"give fraction only, no give distance"),n.createElement("td",void 0,String(t))),n.createElement("tr",void 0,n.createElement("th",void 0,"Earth model"),n.createElement("td",{colSpan:2},"Sphere with radius"),n.createElement("td",void 0,a)),n.createElement("tr",void 0,n.createElement("th",{colSpan:3},"Earth math"),n.createElement("td",void 0,r))),n.createElement("tfoot",void 0,n.createElement("tr",void 0,n.createElement("td",{colSpan:4},"* Adjusting the turnpoint radius with some give for pilots just short of the control zone")))))};function z(e){var t=e.compName;return n.createElement("nav",{className:"breadcrumb"},n.createElement("ul",void 0,n.createElement("li",void 0,n.createElement("a",{href:"/"},"Dive Stick (Rescript)")),n.createElement("li",{className:"is-active"},t)))}function A(e){return n.createElement("div",{className:"spacer"})}var C=function(e){var t=s.b(void 0,void 0),a=n.useState((function(){return""})),r=a[1],c=a[0],i=n.useState((function(){return N})),p=i[1],v=i[0],f=n.useState((function(){return g})),k=f[1],S=f[0],x=n.useState((function(){return[]})),F=x[1],y=n.useState((function(){return[]})),C=y[1],L=y[0],D=n.useState((function(){return[]})),I=D[1],G=""!==c;n.useEffect((function(){var e=t.path;if(e&&"comp-prefix"===e.hd){var a=e.tl;if(a&&!a.tl){var n=a.hd;l.a(r,(function(e){return"http://"+n+".flaretiming.com/json"})),s.a("/comp")}}}),[t,r]),n.useEffect((function(){!function(e,t,a){e&&fetch(t+"/comp-input/comps.json").then((function(e){return e.json()})).then((function(e){return Promise.resolve(l.a(a,(function(t){return e})))}))}(G,c,p)}),[G,c,p]),n.useEffect((function(){!function(e,t,a){e&&fetch(t+"/comp-input/nominals.json").then((function(e){return e.json()})).then((function(e){return Promise.resolve(l.a(a,(function(t){return e})))}))}(G,c,k)}),[G,c,k]),n.useEffect((function(){!function(e,t,a){e&&fetch(t+"/task-length/task-lengths.json").then((function(e){return e.json()})).then((function(e){return Promise.resolve(l.a(a,(function(t){return e})))}))}(G,c,F)}),[G,c,F]),n.useEffect((function(){!function(e,t,a){e&&fetch(t+"/comp-input/tasks.json").then((function(e){return e.json()})).then((function(e){var t=o.c(e,o.a(h)),n=E.b(t,[]);return Promise.resolve(l.a(a,(function(e){return n})))}))}(G,c,C)}),[G,c,C]),n.useEffect((function(){!function(e,t,a){e&&fetch(t+"/gap-point/pilots-status.json").then((function(e){return e.json()})).then((function(e){var t=o.c(e,o.a(o.a(o.a(o.i)))),n=d.c(E.b(t,[]),u);return Promise.resolve(l.a(a,(function(e){return n})))}))}(G,c,I)}),[G,c,I]);var M=t.path;if(!M)return n.createElement(m,{});switch(M.hd){case"comp":if(!M.tl)return n.createElement("div",void 0,n.createElement(A,{}),n.createElement(T,{comp:v,nominals:S}),n.createElement(A,{}),n.createElement(z,{compName:v.compName}),n.createElement(b,{}),n.createElement(w,{tasks:L,taskLengths:x[0]}));break;case"comp-prefix":var O=M.tl;if(O&&!O.tl)return n.createElement("div",void 0);break;case"pilots":if(!M.tl)return n.createElement("div",void 0,n.createElement(A,{}),n.createElement(T,{comp:v,nominals:S}),n.createElement(A,{}),n.createElement(z,{compName:v.compName}),n.createElement(b,{}),n.createElement(j,{tasks:L,pilots:D[0]}));break;case"settings":if(!M.tl)return n.createElement("div",void 0,n.createElement(A,{}),n.createElement(T,{comp:v,nominals:S}),n.createElement(A,{}),n.createElement(z,{compName:v.compName}),n.createElement(b,{}),n.createElement(P,{giveFraction:v.give.giveFraction,earthRadius:v.earth.sphere.radius,earthMath:v.earthMath}))}return n.createElement("div",void 0,"Route not found")};a(20);var L=document.querySelector("#rescript");null!=L&&r.render(n.createElement(C,{}),L),i();null==L||c.a(L)}},[[21,1,2]]]);
//# sourceMappingURL=main.6b41eb3d.chunk.js.map