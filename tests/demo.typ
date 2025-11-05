#import "@preview/touying:0.6.1": *
#import "../theme.typ": *

#show: hhu-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Title],
    subtitle: [Subtitle],
    author: [Authors],
    date: datetime.today(),
    institution: [Institution],
    logo: emoji.school,
  ),
)

#title-slide()

= Outline <touying:hidden>

#outline(title: none, indent: 1em, depth: 1)

= First Section

---

A slide without a title but with some *important* information.

== A long long long long long long long long long long long long long long long long long long long long long long long long Title

=== sdfsdf

A slide with equation:

$ x_(n+1) = (x_n + a/x_n) / 2 $

#lorem(200)

= Second Section

#focus-slide[
  Wake up!
]

== Simple Animation

We can use `#pause` to #pause display something later.

#meanwhile

Meanwhile, #pause we can also use `#meanwhile` to display other content synchronously.

#speaker-note[
  + This is a speaker note.
  + You won't see it unless you use `config-common(show-notes-on-second-screen: right)`
]

#show: appendix

= Appendix

---

Please pay attention to the current slide number.
