#import "@preview/cuti:0.2.1": show-cn-fakebold

#show: show-cn-fakebold

#set page(width: 1920pt, height: 1080pt, margin: (x: 120pt, top: 160pt, bottom: 20pt))
#set table.hline(stroke: .6pt)

#let _table(
  _en,
  _zh,
  _ja,
  _title,
) = table(
  stroke: none,
  columns: (auto, 1fr),
  gutter: 0.4em,
  align: (center, center),
  inset: (top: 0.5em),

  table.header(
    table.cell(colspan: 2)[== #_title],
  ),
  table.hline(),
  [English], _en,
  [中文], _zh,
  [日本語], _ja,
)

#rect(
  fill: rgb("#f3e5f5"),
  radius: (top-left: 8pt),
  inset: (left: 0pt, right: 0pt, top: 0pt, bottom: 0pt),
  outset: (left: 30pt, right: -35pt, top: 25pt, bottom: 2pt),
)[
  #set text(size: 90pt, fill: black)
  = Typography
]

#text(size: 40pt)[
  #heading([
    #v(-140pt)#h(750pt)字体排印 | タイポグラフィ
  ])
]

#v(80pt)

#set text(size: 40pt)

#box(
  columns(3)[
    #set text(font: ("Merriweather", "TsangerJinKai03 W03"), fill: rgb("#b388ff"), weight: "light")

    // == Title & Badge | 标题和徽章 | タイトルとバッジ

    #_table(
      link("https://fonts.google.com/specimen/Merriweather")[Merriweather],
      link("http://tsanger.cn/product/37")[仓耳今楷03-W03],
      link("http://tsanger.cn/product/37")[仓耳今楷03-W03],
      "Title & Badge",
    )

    #colbreak()
    #set text(font: ("Livvic", "TsangerJinKai03 W03"), fill: rgb("#212121"), weight: "regular")

    // == Text | 文本 | テキスト

    #_table(
      link("https://fonts.google.com/specimen/Livvic")[Livvic],
      link("http://tsanger.cn/product/37")[仓耳今楷03-W03],
      link("http://tsanger.cn/product/37")[仓耳今楷03-W03],
      "Text",
    )

    #colbreak()
    #set text(font: ("Roboto Mono", "Roboto", "LXGW WenKai Mono"), fill: rgb("#37474f"), weight: "regular")

    // == Code | 代码 | コード

    #_table(
      link("https://fonts.google.com/specimen/Roboto+Mono")[Roboto Mono],
      link("https://fonts.google.com/specimen/LXGW+WenKai+Mono+TC")[霞鹜文楷等宽],
      link("https://fonts.google.com/specimen/LXGW+WenKai+Mono+TC")[霞鹜文楷等宽],
      "Code",
    )
  ],
)

#v(20pt)

#set text(fill: rgb("#455a64"))

For Italics, English uses the italic fonts, instead of pseudo-italics.

Titles use serif fonts, and body text uses sans-serif fonts.

汉文没有使用斜体的习惯，只使用*伪粗体*。

#let _line_start = 55%

#line(
  stroke: (thickness: 1pt, paint: black),
  start: (_line_start, 0%),
  length: 100% - _line_start,
)

#v(-25pt)

#set text(size: 30pt, dir: rtl, fill: gray)

*Not All Fonts Are Released Under Free Licenses*

Made with Typst and Love by ChillCicada
