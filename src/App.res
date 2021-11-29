%%raw(`import './site.css';`)

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let (compUrl, setCompUrl) = React.useState(_ => "")

  React.useEffect1(() => {
    switch url.path {
    | list{"comp-prefix", compPrefix} =>
      setCompUrl(_ => `http://${compPrefix}.faretiming.com/json`);
      RescriptReactRouter.push("/comp")->ignore;
      None
    | _ => None
    }
  }, [url])

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
