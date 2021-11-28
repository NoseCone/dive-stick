module Tab = {
  @react.component
  let make = (~name: string, ~selected: string, ~linkTo: string) => {
    let style = if selected == name {
      ReactDOM.Style.make(~backgroundColor="#656565", ~padding="1ex", ())
    } else {
      ReactDOM.Style.make(~backgroundColor="#efefef", ~padding="1ex", ())
    }

    <div style={style} onClick={_ => RescriptReactRouter.push(linkTo)}> {React.string(name)} </div>
  }
}

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  let selected = switch url.path {
  | list{"settings", ..._} => "Settings"
  | list{"comp", ..._} => "Tasks"
  | list{"pilots", ..._} => "Pilots"
  | _ => "Home"
  }

  <div style={ReactDOM.Style.make(~display="flex", ~justifyContent="center", ())}>
    <Tab name="Settings" selected={selected} linkTo="/settings" />
    <Tab name="Tasks" selected={selected} linkTo="/comp" />
    <Tab name="Pilots" selected={selected} linkTo="/pilots" />
  </div>
}
