#import "@preview/showybox:2.0.4": *
#import "theme-color.typ": theme-color

#let callout(
  icon: none,
  title: none,
  title-fg: theme-color.blue,
  title-bg: theme-color.blue.lighten(90%),
  body-fg: theme-color.black,
  body-bg: theme-color.blue.lighten(90%),
  border: theme-color.white + 0pt,
  ..bodies
) = {
  set text(size: 0.9em)
  showybox(
    frame: (
      title-color: title-bg,
      body-color: body-bg,
      border-color: border.paint,
      thickness: border.thickness,
    ),
    title: if title == none { "" } else if icon != none { 
      show: pad.with(left: 1em)
      place(icon, top + left, dx: -1.5em)
      title
    } else { title },
    title-style: (
      color: title-fg,
      weight: "bold"
    ),
    ..bodies.pos().map(body => {
      if title == none and icon != none {
        show: pad.with(left: 1em)
        place(icon, top + left, dx: -1.5em)
        body
      } else { body }
    })
  )
}

#let question = callout.with(
  title-fg: theme-color.black,
  title-bg: theme-color.pink.lighten(60%),
  body-bg: theme-color.pink.lighten(90%),
)

#let tip = callout.with(
  icon: "💡"
)

#let note = callout.with(
  title-fg: theme-color.black,
  title-bg: theme-color.blue.lighten(60%),
  body-bg: theme-color.blue.lighten(90%),
)

#let example = callout.with(
  title-fg: theme-color.black,
  title-bg: theme-color.lime.lighten(60%),
  body-bg: theme-color.lime.lighten(90%),
)

#let important = callout.with(
  title-fg: theme-color.black,
  title-bg: theme-color.purple.lighten(60%),
  body-bg: theme-color.purple.lighten(90%),
)

#let warning = callout.with(
  title-fg: theme-color.black,
  title-bg: theme-color.orange.lighten(60%),
  body-bg: theme-color.orange.lighten(90%),
)

#let caution = callout.with(
  title-fg: theme-color.black,
  title-bg: theme-color.red.lighten(60%),
  body-bg: theme-color.red.lighten(90%),
)

#let refer = callout.with(
  title-fg: theme-color.black,
  title-bg: theme-color.aqua.lighten(60%),
  body-bg: theme-color.aqua.lighten(90%),
)

// Callout with icons

#let example-i = example.with(
  icon: "💡",
)

#let important-i = important.with(
  icon: "🌟",
)

#let warning-i = warning.with(
  icon: "❗️",
)

#let caution-i = caution.with(
  icon: "🚩",
)

#let note-i = note.with(
  icon: "✏️",
)

#let refer-i = refer.with(
  icon: "🔖",
)

#let question-i = question.with(
  icon: "❓",
)