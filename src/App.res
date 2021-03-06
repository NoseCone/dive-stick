module Breadcrumb = {
  @react.component
  let make = (~compName: string) => {
    <nav className="breadcrumb">
      <ul>
        <li> <a href="/"> {React.string("Dive Stick (Rescript)")} </a> </li>
        <li className="is-active"> {React.string(compName)} </li>
      </ul>
    </nav>
  }
}

module Spacer = {
  @react.component
  let make = () => {
    <div className="spacer" />
  }
}

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let (compUrl, setCompUrl) = React.useState(_ => "")
  let (comp, setComp) = React.useState(_ => Types.nullComp)
  let (nominals, setNominals) = React.useState(_ => Types.nullNominals)
  let (taskLengths, setTaskLengths) = React.useState(_ => [])
  let (compTasks, setCompTasks) = React.useState(_ => [])
  let (compPilots, setCompPilots) = React.useState(_ => [])
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
    Types.getComp(~haveUrl=haveCompUrl, ~url=compUrl, ~set=setComp)
    None
  }, (haveCompUrl, compUrl, setComp))

  React.useEffect3(() => {
    Types.getNominals(~haveUrl=haveCompUrl, ~url=compUrl, ~set=setNominals)
    None
  }, (haveCompUrl, compUrl, setNominals))

  React.useEffect3(() => {
    Types.getTaskLengths(~haveUrl=haveCompUrl, ~url=compUrl, ~set=setTaskLengths)
    None
  }, (haveCompUrl, compUrl, setTaskLengths))

  React.useEffect3(() => {
    Types.getCompTasks(~haveUrl=haveCompUrl, ~url=compUrl, ~set=setCompTasks)
    None
  }, (haveCompUrl, compUrl, setCompTasks))

  React.useEffect3(() => {
    Types.getCompPilots(~haveUrl=haveCompUrl, ~url=compUrl, ~set=setCompPilots)
    None
  }, (haveCompUrl, compUrl, setCompPilots))

  let component = switch url.path {
  | list{"comp-prefix", _compPrefix} => <div />
  | list{"settings"} =>
    <div>
      <Spacer />
      <CompHeader comp={comp} nominals={nominals} />
      <Spacer />
      <Breadcrumb compName={comp.compName} />
      <CompTabs />
      <CompSettings
        giveFraction={comp.give.giveFraction}
        earthRadius={comp.earth.sphere.radius}
        earthMath={comp.earthMath}
      />
    </div>

  | list{"comp"} =>
    <div>
      <Spacer />
      <CompHeader comp={comp} nominals={nominals} />
      <Spacer />
      <Breadcrumb compName={comp.compName} />
      <CompTabs />
      <CompTasks taskLengths={taskLengths} tasks={compTasks} />
    </div>

  | list{"pilots"} =>
    <div>
      <Spacer />
      <CompHeader comp={comp} nominals={nominals} />
      <Spacer />
      <Breadcrumb compName={comp.compName} />
      <CompTabs />
      <CompPilots tasks={compTasks} pilots={compPilots} />
    </div>

  | list{} => <Comps />

  | _ => <div> {React.string("Route not found")} </div>
  }

  {component}
}
