open Types

type taskRow = {
  taskName: string,
  tps: string,
  distance: string,
  stopped: bool,
  cancelled: bool,
}

let mkTaskRows = (tasks: list<task>, taskLengths: list<taskLength>): list<taskRow> =>
  Belt.List.zipBy(tasks, taskLengths, ({taskName: t, zones: zs, stopped: s, cancelled: c}, d) => {
    {
      taskName: t,
      tps: Js.String2.concatMany("-", Belt.List.toArray(Belt.List.map(zs.raw, z => z.zoneName))),
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

@react.component
let make = () => {
  <>
    <table className="table is-striped">
      <thead>
        <tr>
          <th>
            {s("#")}
          </th>
          <th className="th-task-name">
            {s("Name")}
          </th>
          <th className="th-task-tps">
            {s("Turnpoints")}
          </th>
          <th className="th-task-dist">
            {s("Distance")}
          </th>
          <th className="th-task-stopped">
            {s("Stopped")}
          </th>
          <th className="th-task-cancelled">
            {s("Cancelled")}
          </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>
            {s("1")}
          </td>
          <td className="td-task-name">
            {s("day one")}
          </td>
          <td className="td-task-tps">
            {s("1DALBY-JANDOW-WARRA-1DALBY")}
          </td>
          <td className="td-task-dist">
            {s("99.561444 km")}
          </td>
          <td className="td-task-stopped">
          </td>
          <td className="td-task-cancelled">
          </td>
        </tr>
        <tr>
          <td>
            {s("1")}
          </td>
          <td className="td-task-name">
            {s("day four T2")}
          </td>
          <td className="td-task-tps">
            {s("1DALBY-MACALI-JIMBOU-WARRA-JANDOW-BRIGAL")}
          </td>
          <td className="td-task-dist">
            {s("111.259762 km")}
          </td>
          <td className="td-task-stopped">
          </td>
          <td className="td-task-cancelled">
          </td>
        </tr>
        <tr>
          <td>
            {s("1")}
          </td>
          <td className="td-task-name">
            {s("day five")}
          </td>
          <td className="td-task-tps">
            {s("1DALBY-BRIGAL-IRON-1DALBY")}
          </td>
          <td className="td-task-dist">
            {s("96.889354 km")}
          </td>
          <td className="td-task-stopped">
          </td>
          <td className="td-task-cancelled">
          </td>
        </tr>
        <tr>
          <td>
            {s("1")}
          </td>
          <td className="td-task-name">
            {s("day six")}
          </td>
          <td className="td-task-tps">
            {s("1DALBY-WARRA-BELL-1DALBY")}
          </td>
          <td className="td-task-dist">
            {s("114.373717 km")}
          </td>
          <td className="td-task-stopped">
          </td>
          <td className="td-task-cancelled">
          </td>
        </tr>
        <tr>
          <td>
            {s("1")}
          </td>
          <td className="td-task-name">
            {s("day seven")}
          </td>
          <td className="td-task-tps">
            {s("1DALBY-BROADW-JIMBOU-MACALI-1DALBY")}
          </td>
          <td className="td-task-dist">
            {s("88.969527 km")}
          </td>
          <td className="td-task-stopped">
          </td>
          <td className="td-task-cancelled">
          </td>
        </tr>
      </tbody>
    </table>
  </>
}