#import "@preview/touying:0.6.1": *
#import "../theme.typ": *
#import "@preview/ctyp:0.3.0": *
#let (ctypset, fonts) = ctyp(
  fontset-cjk: default-fontset,
  font-latin: (
    serif: "Georgia",
    sans: "Roboto",
  ),
  fix-first-line-indent: false,
)
#show: ctypset

#show: hhu-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [标题],
    subtitle: [子标题],
    author: [作者],
    date: datetime.today(),
    institution: [单位],
    logo: emoji.school,
  ),
  config-page(
    footer: (self) => {
      self.info.title
    }
  )
)

#title-slide()

= 目录 <touying:hidden>

#outline(title: none, indent: 1em, depth: 1)

= 第一节

---

A slide without a title but with some *important* information.

== A long long long long long long long long long long long long long long long long long long long long long long long long Title

=== 幻灯片内的标题

A slide with equation:

$ x_(n+1) = (x_n + a/x_n) / 2 $

#lorem(200)

= Second Section

#focus-slide[
  注意
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

= 附录

---

Please pay attention to the current slide number.
