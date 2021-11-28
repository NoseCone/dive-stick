let s = React.string

@react.component
let make = () => {
  <>
    <div className="container">
      <div className="tile is-ancestor" wrap="">
        <div className="tile">
          <div className="tile is-parent">
            <div className="tile is-child box">
              <p className="title is-3"> {s("{comp.compName}")} </p>
              <p className="title is-5"> {s("{comp.compSlug}")} </p>
              <div className="example">
                <div className="field is-grouped is-grouped-multiline">
                  <div className="control">
                    <div className="tags has-addons">
                      <span className="tag"> {s("UTC offset")} </span>
                      <span className="tag is-warning">
                        {s("{comp.utcOffset.timeZoneMinutes}")}
                      </span>
                    </div>
                  </div>
                  <div className="control">
                    <div className="tags has-addons">
                      <span className="tag"> {s("minimum distance")} </span>
                      <span className="tag is-black"> {s("{nominals.free}")} </span>
                    </div>
                  </div>
                  <div className="control">
                    <div className="tags has-addons">
                      <span className="tag"> {s("nominal distance")} </span>
                      <span className="tag is-info"> {s("{nominals.distance}")} </span>
                    </div>
                  </div>
                  <div className="control">
                    <div className="tags has-addons">
                      <span className="tag"> {s("nominal time")} </span>
                      <span className="tag is-success"> {s("{nominals.time}")} </span>
                    </div>
                  </div>
                  <div className="control">
                    <div className="tags has-addons">
                      <span className="tag"> {s("nominal goal")} </span>
                      <span className="tag is-primary"> {s("{nominals.goal}")} </span>
                    </div>
                  </div>
                  <div className="control">
                    <div className="tags has-addons">
                      <span className="tag"> {s("score-back time")} </span>
                      <span className="tag is-danger"> {s("{comp.scoreBack}")} </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </>
}
