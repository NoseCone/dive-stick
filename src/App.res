%%raw(`import './site.css';`)

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  let component = switch url.path {
  | list{"settings"} => <div> {React.string("Settings")} </div>
  | list{"comp"} => <div> {React.string("Tasks")} </div>
  | list{"pilots"} => <div> {React.string("Pilots")} </div>
  | list{} => <div> {React.string("Home page")} </div>
  | _ => <div> {React.string("Route not found")} </div>
  }

  <div> <CompTabs /> {component} </div>
}
