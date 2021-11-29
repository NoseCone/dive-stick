module Tab = {
  @react.component
  let make = (~name: string, ~selected: string, ~linkTo: string) => {
    let c = if selected == name {
      "is-active"
    } else {
      ""
    }

    <li className=c ><a onClick={_ => RescriptReactRouter.push(linkTo)}> {React.string(name)} </a></li>
  }
}

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  let selected = switch url.path {
  | list{"settings", ..._} => "Settings"
  | list{"comp", ..._} => "Tasks"
  | list{"pilots", ..._} => "Pilots"
  | _ => ""
  }

  <div className="tabs">
    <ul>
      <Tab name="Settings" selected={selected} linkTo="/settings" />
      <Tab name="Tasks" selected={selected} linkTo="/comp" />
      <Tab name="Pilots" selected={selected} linkTo="/pilots" />
    </ul>
  </div>
}
