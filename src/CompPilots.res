let s = React.string

module PilotRow = {
  @react.component
  let make = (~pilot: Types.pilotStatus) => {
    <tr>
      <td className="td-pid"> {s(pilot.pilotId)} </td>
      <td> {s(pilot.pilotName)} </td>
      {React.array(
        Belt.Array.mapWithIndex(pilot.pilotStatus, (i, status) => {
          <td key={Belt.Int.toString(i)}> {s(status)} </td>
        }),
      )}
    </tr>
  }
}

@react.component
let make = (~tasks: array<Types.task>, ~pilots: array<Types.pilotStatus>) => {
  let xs = Belt.Array.map(pilots, pilot => {
    <PilotRow pilot={pilot} />
  })
  <>
    <table className="table is-bordered is-striped">
      <thead>
        <tr>
          <th className="th-pid"> {s("Id")} </th>
          <th> {s("Name")} </th>
          {React.array(
            Belt.Array.mapWithIndex(tasks, (i, task) => {
              <th key={Belt.Int.toString(i)}> {s(task.taskName)} </th>
            }),
          )}
        </tr>
      </thead>
      <tbody> {React.array(xs)} </tbody>
    </table>
  </>
}
