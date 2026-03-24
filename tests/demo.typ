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
  config-store(
    footer: (self) => {
      self.info.title
    }
  )
)

#title-slide()

#outline-slide(title: [目录], column: 1, indent: 1em, depth: 1)

= 基本元素

#slide(subtitle: [带标题框])[
  A slide without a title but with some #highlight[important] information.

  #{
    set text(size: 0.8em)
    grid(
      columns: 7,
      column-gutter: 4pt,
      row-gutter: 8pt,
      note(title: [说明])[`note`],
      example(title: [示例])[`example`],
      warning(title: [注意])[`warning`],
      important(title: [重要])[`important`],
      caution(title: [警惕])[`caution`],
      refer(title: [参考])[`refer`],
      question(title: [问题])[`question`],
      note-i(title: [说明])[`note-i`],
      example-i(title: [示例])[`example-i`],
      warning-i(title: [注意])[`warning-i`],
      important-i(title: [重要])[`important-i`],
      caution-i(title: [警惕])[`caution-i`],
      refer-i(title: [参考])[`refer-i`],
      question-i(title: [问题])[`question-i`],
      note[无标题],
      example[无标题],
      warning[无标题],
      important[无标题],
      caution[无标题],
      refer[无标题],
      question[无标题],
      note-i[仅图标],
      example-i[仅图标],
      warning-i[仅图标],
      important-i[仅图标],
      caution-i[仅图标],
      refer-i[仅图标],
      question-i[仅图标],
    )

    heading(level: 3)[用法示例]
    
    grid(
      columns: 4,
      column-gutter: 4pt,
      row-gutter: 1em,
      [带标题],
      [标题和图标],
      [无标题],
      [仅图标],
      note(title: [标题])[`#note(title: [])[]`],
      note-i(title: [标题和图标])[`#note-i(title: [])[]`],
      note[`#note[]`],
      note[`#note-i[]`],
    )
  }
]

== A long long long long long long long long long long long long long long long long long long long long long long long long Title

=== 幻灯片内的标题

A *slide with equation*:

$ x_(n+1) = (x_n + a/x_n) / 2 $

- #lorem(10)
- #lorem(10)

=== 幻灯片内的标题

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
