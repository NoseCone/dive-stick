let s = React.string

@react.component
let make = (~giveFraction: float, ~earthRadius: string, ~earthMath: string) => {
  <>
    <table className="table is-bordered">
      <thead>
        <tr>
          <th colSpan=3>
          </th>
          <th>
            {s("Value")}
          </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>
            {s("* Give")}
          </th>
          <td colSpan=2>
            {s("give fraction only, no give distance")}
          </td>
          <td>
            {s({Belt.Float.toString(giveFraction)})}
          </td>
        </tr>
        <tr>
          <th>
            {s("Earth model")}
          </th>
          <td colSpan=2>
            {s("Sphere with radius")}
          </td>
          <td>
            {s({earthRadius})}
          </td>
        </tr>
        <tr>
          <th colSpan=3>
            {s("Earth math")}
          </th>
          <td>
            {s({earthMath})}
          </td>
        </tr>
      </tbody>
      <tfoot>
        <tr>
          <td colSpan=4>
            {s("* Adjusting the turnpoint radius with some give for pilots just short of the control zone")}
          </td>
        </tr>
      </tfoot>
    </table>
  </>
}