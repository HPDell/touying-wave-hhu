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
  ),
  config-page(
    footer: (self) => {
      self.info.title
    }
  )
)

#title-slide()

#outline-slide(title: [目录], column: 1, indent: 1em, depth: 1)

= 基本元素

---

A slide without a title but with some *important* information.

#grid(
  columns: 4,
  gutter: 8pt,
  note(title: [说明])[内容],
  example(title: [示例])[内容],
  warning(title: [注意])[内容],
  important(title: [重要])[内容],
  caution(title: [警惕])[内容],
  refer(title: [参考])[内容],
  note-i(title: [说明])[内容],
  example-i(title: [示例])[内容],
  warning-i(title: [注意])[内容],
  important-i(title: [重要])[内容],
  caution-i(title: [警惕])[内容],
  refer-i(title: [参考])[内容],
)

== A long long long long long long long long long long long long long long long long long long long long long long long long Title

=== 幻灯片内的标题

A *slide with equation*:

$ x_(n+1) = (x_n + a/x_n) / 2 $

#lorem(200)

= 布局

== side-by-side 布局

#slide[
  #important[两列内容居中显示]

  适合文字与图片并排，或者两张图片并排展示的场景。
][
  第二列
]

== multi-columns 布局

#slide-mc[
  === 第一列内容
  
  #important[内容顶端对齐]

  适合多个标题和内容并列展示的场景。
][
  === 第二列内容
][
  === 第三列内容
]

== page-aligned 布局

#slide-aligned[
  === 第一列内容


  沿页面顶端对齐
][
  === 第二列内容
][
  === 第三列内容
]

= 动画

#focus-slide[
  注意
]

== 简单动画

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
