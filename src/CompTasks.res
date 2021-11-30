open Types

type taskRow = {
  taskName: string,
  tps: string,
  distance: string,
  stopped: bool,
  cancelled: bool,
}

let mkBool = (s: string, x) =>
  if x {
    s
  } else {
    ""
  }

let mkTaskRows = (tasks: array<task>, taskLengths: array<taskLength>): array<taskRow> =>
  Belt.Array.zipBy(tasks, taskLengths, ({taskName: t, zones: zs, stopped: s, cancelled: c}, d) => {
    {
      taskName: t,
      tps: Js.Array.joinWith("-", Belt.Array.map(zs.raw, z => z.zoneName)),
      distance: d,
      stopped: if Belt.Option.isSome(s) {
        true
      } else {
        false
      },
      cancelled: Belt.Option.getWithDefault(c, false),
    }
  })

let s = React.string

module TaskRow = {
  @react.component
  let make = (~row: taskRow) => {
    <tr>
      <td> {s("1")} </td>
      <td className="td-task-name"> {s(row.taskName)} </td>
      <td className="td-task-tps"> {s(row.tps)} </td>
      <td className="td-task-dist"> {s(row.distance)} </td>
      <td className="td-task-stopped"> {s(mkBool("STOPPED", row.stopped))} </td>
      <td className="td-task-cancelled"> {s(mkBool("CANCELLED", row.cancelled))} </td>
    </tr>
  }
}

@react.component
let make = (~tasks: array<task>, ~taskLengths: array<taskLength>) => {
  let xs = mkTaskRows(tasks, taskLengths)->Belt.Array.map(row => <TaskRow row={row} />)
  <>
    <table className="table is-striped">
      <thead>
        <tr>
          <th> {s("#")} </th>
          <th className="th-task-name"> {s("Name")} </th>
          <th className="th-task-tps"> {s("Turnpoints")} </th>
          <th className="th-task-dist"> {s("Distance")} </th>
          <th className="th-task-stopped"> {s("Stopped")} </th>
          <th className="th-task-cancelled"> {s("Cancelled")} </th>
        </tr>
      </thead>
      <tbody> {React.array(xs)} </tbody>
    </table>
  </>
}
