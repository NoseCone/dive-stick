%%raw(`import './site.css';`)

external unsafeCastComp: Js.Json.t => Types.comp = "%identity"

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let (compUrl, setCompUrl) = React.useState(_ => "")
  let (comp, setComp) = React.useState(_ => Types.nullComp)
  let haveCompUrl = compUrl != ""

  React.useEffect2(() => {
    switch url.path {
    | list{"comp-prefix", compPrefix} =>
      setCompUrl(_ => `http://${compPrefix}.flaretiming.com/json`)
      RescriptReactRouter.push("/comp")->ignore
      None

    | _ => None
    }
  }, (url, setCompUrl))

  React.useEffect3(() => {
    Js.log(`compUrl: ${compUrl}`)
    if haveCompUrl {
      let dataUrl = `${compUrl}/comp-input/comps.json`
      Js.log(`fetching JSON from: ${dataUrl}`)
      dataUrl->Fetch.fetch->Js.Promise.then_(Fetch.Response.json, _)->Js.Promise.then_(obj => {
        obj->unsafeCastComp->((c: Types.comp) => {
          Js.log2("got COMP:", c)
          setComp(_ => c)
          })->Js.Promise.resolve
      }, _) |> ignore
    }
    None
  }, (haveCompUrl, compUrl, setComp))

  let component = switch url.path {
  | list{"comp-prefix", _compPrefix} => <div />
  | list{"settings"} =>
    <div> <CompHeader comp={comp} /> {React.string("Settings")} <CompTabs /> </div>
  | list{"comp"} => <div> <CompHeader comp={comp} /> {React.string("Tasks")} <CompTabs /> </div>
  | list{"pilots"} => <div> <CompHeader comp={comp} /> {React.string("Pilots")} <CompTabs /> </div>
  | list{} => <Comps />
  | _ => <div> {React.string("Route not found")} </div>
  }

  <div> {component} {React.string("comp url: " ++ compUrl)} </div>
}
