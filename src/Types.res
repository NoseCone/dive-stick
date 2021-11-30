type utcOffset = {timeZoneMinutes: int}
type radius = {radius: string}
type give = {giveDistance: option<string>, giveFraction: float}
type earth = {sphere: radius}
type earthMath = string

type comp = {
  compName: string,
  scoreBack: option<string>,
  utcOffset: utcOffset,
  from: string,
  to: string,
  location: string,
  earth: earth,
  earthMath: earthMath,
  give: give,
}

let nullComp = {
  compName: "",
  scoreBack: None,
  utcOffset: {timeZoneMinutes: 0},
  from: "",
  to: "",
  location: "",
  earth: {sphere: {radius: ""}},
  earthMath: "",
  give: {giveDistance: None, giveFraction: 0.0},
}

let compSlug = (comp: comp) => `${comp.from} to ${comp.to}, ${comp.location}`

type nominals = {
  free: string,
  distance: string,
  time: string,
  goal: float,
}

let nullNominals = {
  free: "",
  distance: "",
  time: "",
  goal: 0.0,
}

type taskLength = string
type rawZone = {zoneName: string}
type stopped = {announced: string, retroactive: string}
type rawZones = {raw: array<rawZone>}

type task = {
  taskName: string,
  zones: rawZones,
  stopped: option<stopped>,
  cancelled: option<bool>,
}

type pilotStatus = {
  pilotId: string,
  pilotName: string,
  pilotStatus: array<string>,
}

let nullPilotStatus = {
  pilotId: "",
  pilotName: "",
  pilotStatus: [],
}

let mkPilot = (xs) => switch (xs) {
  | [[pilotId, pilotName], pilotStatus] => {pilotId, pilotName, pilotStatus}
  | _ => {pilotId: "", pilotName: "", pilotStatus: []}
}

module Codecs = {
  let stopped = Jzon.object2(
    ({announced, retroactive}) => (announced, retroactive),
    ((announced, retroactive)) => {announced: announced, retroactive: retroactive}->Ok,
    Jzon.field("announced", Jzon.string),
    Jzon.field("retroactive", Jzon.string),
  )

  let rawZone = Jzon.object1(
    ({zoneName}) => zoneName,
    zoneName => {zoneName: zoneName}->Ok,
    Jzon.field("zoneName", Jzon.string),
  )

  let rawZones = Jzon.object1(
    ({raw}) => raw,
    raw => {raw: raw}->Ok,
    Jzon.field("raw", Jzon.array(rawZone)),
  )

  let task = Jzon.object4(
    ({taskName, zones, stopped, cancelled}) => (taskName, zones, stopped, cancelled),
    ((taskName, zones, stopped, cancelled)) =>
      {taskName: taskName, zones: zones, stopped: stopped, cancelled: cancelled}->Ok,
    Jzon.field("taskName", Jzon.string),
    Jzon.field("zones", rawZones),
    Jzon.field("stopped", stopped)->Jzon.optional,
    Jzon.field("cancelled", Jzon.bool)->Jzon.optional,
  )
}

external unsafeCast: Js.Json.t => 'a = "%identity"

let getComp = (~haveUrl: bool, ~url: string, ~set: (comp => comp) => unit) => {
  if haveUrl {
    let dataUrl = `${url}/comp-input/comps.json`
    dataUrl->Fetch.fetch->Js.Promise.then_(Fetch.Response.json, _)->Js.Promise.then_(x => {
      x->unsafeCast->(c => set(_ => c))->Js.Promise.resolve
    }, _) |> ignore
  }
}

let getNominals = (~haveUrl: bool, ~url: string, ~set: (nominals => nominals) => unit) => {
  if haveUrl {
    let dataUrl = `${url}/comp-input/nominals.json`
    dataUrl->Fetch.fetch->Js.Promise.then_(Fetch.Response.json, _)->Js.Promise.then_(x => {
      x->unsafeCast->(n => set(_ => n))->Js.Promise.resolve
    }, _) |> ignore
  }
}

let getTaskLengths = (
  ~haveUrl: bool,
  ~url: string,
  ~set: (array<taskLength> => array<taskLength>) => unit,
) => {
  if haveUrl {
    let dataUrl = `${url}/task-length/task-lengths.json`
    dataUrl->Fetch.fetch->Js.Promise.then_(Fetch.Response.json, _)->Js.Promise.then_(x => {
      x->unsafeCast->(n => set(_ => n))->Js.Promise.resolve
    }, _) |> ignore
  }
}

let getCompTasks = (~haveUrl: bool, ~url: string, ~set: (array<task> => array<task>) => unit) => {
  if haveUrl {
    let dataUrl = `${url}/comp-input/tasks.json`
    dataUrl->Fetch.fetch->Js.Promise.then_(Fetch.Response.json, _)->Js.Promise.then_(x => {
      x
      ->Jzon.decodeWith(Jzon.array(Codecs.task))
      ->(ts => {
        let ts' = Belt.Result.getWithDefault(ts, [])
        set(_ => ts')
      })
      ->Js.Promise.resolve
    }, _) |> ignore
  }
}

let getCompPilots = (
  ~haveUrl: bool,
  ~url: string,
  ~set: (array<pilotStatus> => array<pilotStatus>) => unit,
) => {
  if haveUrl {
    let dataUrl = `${url}/gap-point/pilots-status.json`
    dataUrl->Fetch.fetch->Js.Promise.then_(Fetch.Response.json, _)->Js.Promise.then_(x => {
      x->Jzon.decodeWith(Jzon.array(Jzon.array(Jzon.array(Jzon.string))))
      ->(ps => {
        let ps' = Belt.Array.map(Belt.Result.getWithDefault(ps, []), mkPilot)
        set(_ => ps')
      })->Js.Promise.resolve
    }, _) |> ignore
  }
}
