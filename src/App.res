%%raw(`import './site.css';`)

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  let component = switch url.path {
  | list{"settings"} => <div> <CompHeader /> {React.string("Settings")} <CompTabs /> </div>
  | list{"comp"} => <div> <CompHeader /> {React.string("Tasks")} <CompTabs /> </div>
  | list{"pilots"} => <div> <CompHeader /> {React.string("Pilots")} <CompTabs /> </div>
  | list{"comp-prefix", comp} => <div> {React.string("Select comp " ++ comp)} </div>
  | list{} => <Comps />
  | _ => <div> {React.string("Route not found")} </div>
  }

  <div> {component} </div>
}
