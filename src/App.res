%%raw(`import './site.css';`)

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let (compUrl, setCompUrl) = React.useState(_ => "")
  let (comp, setComp) = React.useState(_ => Types.nullComp)
  let (nominals, setNominals) = React.useState(_ => Types.nullNominals)
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
    Types.getComp(~haveUrl = haveCompUrl, ~url = compUrl, ~set = setComp)
    None
  }, (haveCompUrl, compUrl, setComp))

  React.useEffect3(() => {
    Types.getNominals(~haveUrl = haveCompUrl, ~url = compUrl, ~set = setNominals)
    None
  }, (haveCompUrl, compUrl, setNominals))

  let component = switch url.path {
  | list{"comp-prefix", _compPrefix} => <div />
  | list{"settings"} =>
    <div> <CompHeader comp={comp} nominals={nominals} /> {React.string("Settings")} <CompTabs /> </div>
  | list{"comp"} => <div> <CompHeader comp={comp} nominals={nominals} /> {React.string("Tasks")} <CompTabs /> </div>
  | list{"pilots"} => <div> <CompHeader comp={comp} nominals={nominals} /> {React.string("Pilots")} <CompTabs /> </div>
  | list{} => <Comps />
  | _ => <div> {React.string("Route not found")} </div>
  }

  <div> {component} {React.string("comp url: " ++ compUrl)} </div>
}
