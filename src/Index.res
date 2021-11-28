%%raw(`import './index.css';`)
@module("./reportWebVitals") external reportWebVitals: unit => unit = "default"

let root = ReactDOM.querySelector("#rescript")

switch root {
  | None => ()
  | Some(root) => ReactDOM.render(<App />, root)
}

reportWebVitals()