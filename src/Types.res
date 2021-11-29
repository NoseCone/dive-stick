type utcOffset = {timeZoneMinutes: int}
type radius = {radius: string}
type give = {giveDistance: option<string>, giveFraction: float}
type earth = {sphere: radius}
type earthMath = string

type comp = {
  compName: string,
  scoreBack: option<string>,
  utcOffset: utcOffset,
  from: string,
  to: string,
  location: string,
  earth: earth,
  earthMath: earthMath,
  give: give,
}

let nullComp = {
  compName: "",
  scoreBack: None,
  utcOffset: {timeZoneMinutes: 0},
  from: "",
  to: "",
  location: "",
  earth: {sphere: {radius: ""}},
  earthMath: "",
  give: {giveDistance: None, giveFraction: 0.0},
}