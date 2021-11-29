%%raw(`import './site.css';`)

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

external unsafeCastComp: Js.Json.t => comp = "%identity"

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let (compUrl, setCompUrl) = React.useState(_ => "")

  React.useEffect2(() => {
    switch url.path {
    | list{"comp-prefix", compPrefix} =>
      let compUrl' = `http://${compPrefix}.flaretiming.com/json`
      setCompUrl(_ => compUrl')
      let data = `${compUrl'}/comp-input/comps.json`
      Js.log2("JSON", data)
      data->Fetch.fetch->Js.Promise.then_(Fetch.Response.json, _)->Js.Promise.then_(obj => {
        obj->unsafeCastComp->(c => Js.log2("COMP", c))->Js.Promise.resolve
      }, _) |> ignore

      RescriptReactRouter.push("/comp")->ignore
      None

    | _ => None
    }
  }, (url, setCompUrl))

  let component = switch url.path {
  | list{"comp-prefix", _compPrefix} => <div />
  | list{"settings"} => <div> <CompHeader /> {React.string("Settings")} <CompTabs /> </div>
  | list{"comp"} => <div> <CompHeader /> {React.string("Tasks")} <CompTabs /> </div>
  | list{"pilots"} => <div> <CompHeader /> {React.string("Pilots")} <CompTabs /> </div>
  | list{} => <Comps />
  | _ => <div> {React.string("Route not found")} </div>
  }

  <div> {component} {React.string("comp url: " ++ compUrl)} </div>
}
