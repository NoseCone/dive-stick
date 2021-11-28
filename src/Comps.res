let s = React.string

// SEE: https://html-to-rescript-jsx.protoship.io/
@react.component
let make = () => {
  <>
    <div id="content" className="content">
      <div className="tile is-ancestor">
        <div className="tile is-parent">
          <article className="tile is-child notification is-light">
            <p className="title"> {s("Leading Edge")} </p>
            <p className="subtitle">
              {s("Comps scored with ")}
              <a href="https://flaretiming.com"> {s("Flare Timing")} </a>
              {s(" and presented with ")}
              <a href="https://rescript-lang.org/"> {s("rescript")} </a>
            </p>
          </article>
        </div>
      </div>
      <p>
        {s("Want")}
        <a href="https://flaretiming.com/posts/2018-12-19-add-a-comp.html">
          {s("your comp here")}
        </a>
        {s("?")}
      </p>
      <div className="tile is-ancestor">
        <div className="tile is-vertical is-5">
          <div className="tile">
            <div className="tile is-parent is-vertical">
              <div className="tile is-child box">
                <h3> {s("Paragliding")} </h3>
                <p />
                <ul>
                  <li>
                    {s("Italian Open ")} <a href="/comp-prefix/2020-italy-open"> {s("2020")} </a>
                  </li>
                  <li>
                    {s("Dalmatian ")}
                    <a href="/comp-prefix/2019-dalmatian"> {s("2019")} </a>
                    {s(" ")}
                    <a href="/comp-prefix/2018-dalmatian"> {s("2018")} </a>
                  </li>
                  <ul> <p /> </ul>
                </ul>
              </div>
              <div className="tile is-child box">
                <h3> {s("Comp Archetypes")} </h3>
                <p />
                <ul>
                  <li> <a href="/comp-prefix/1976-never-land"> {s("1976 Never Land")} </a> </li>
                  <li> <a href="/comp-prefix/1989-lift-lines"> {s("1989 Lift Lines")} </a> </li>
                  <ul> <p /> </ul>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div className="tile is-vertical is-7">
          <div className="tile">
            <div className="tile is-parent is-vertical">
              <div className="tile is-child box">
                <h3> {s("Hang Gliding")} </h3>
                <h5> {s("Oceania")} </h5>
                <ul>
                  <li>
                    {s("Forbes Flatlands ")}
                    <a href="/comp-prefix/2018-forbes"> {s("2018")} </a>
                    {s(" ")}
                    <a href="/comp-prefix/2017-forbes"> {s("2017")} </a>
                    {s(" ")}
                    <a href="/comp-prefix/2016-forbes"> {s("2016")} </a>
                    {s(" ")}
                    <a href="/comp-prefix/2015-forbes"> {s("2015")} </a>
                    {s(" ")}
                    <a href="/comp-prefix/2014-forbes"> {s("2014")} </a>
                    {s(" ")}
                    <a href="/comp-prefix/2012-forbes"> {s("2012")} </a>
                  </li>
                  <li>
                    {s("Dalby Big Air ")} <a href="/comp-prefix/2017-dalby"> {s("2017")} </a>
                  </li>
                </ul>
                <h5> {s("Europe")} </h5>
                <ul>
                  <li> {s("Meduno ")} <a href="/comp-prefix/2020-meduno"> {s("2020")} </a> </li>
                  <li> {s("Tolmezzo ")} <a href="/comp-prefix/2019-italy"> {s("2019")} </a> </li>
                </ul>
                <h5> {s("Americas")} </h5>
                <ul>
                  <li>
                    {s("Green Swamp Klassic 2016 ")}
                    <a href="/comp-prefix/2016-greenswamp"> {s("Topless")} </a>
                    {s(" ")}
                    <a href="/comp-prefix/2016-greenswamp-sport"> {s("Kingposted")} </a>
                  </li>
                  <li> {s("Big Spring ")} <a href="2016-big-spring"> {s("2016")} </a> </li>
                  <li>
                    {s("QuestAir Open ")} <a href="/comp-prefix/2016-quest"> {s("2016")} </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </>
}
