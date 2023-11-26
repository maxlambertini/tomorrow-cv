#let contact(text: "", link: none) = {
  (text: text, link: link)
}

#let subSection(title: "", titleEnd: none, subTitle: none, subTitleEnd: none, content: [], textContent: none) = {
  (title: title, titleEnd: titleEnd, subTitle: subTitle, subTitleEnd: subTitleEnd, content: content ,textContent : textContent)
}

#let textSection(title: "", content: "") = {
  (title:title, content:content)
}

#let section(title: "", content: subSection(), textContent : none) = {
  (title: title, content: content, textContent : textContent)
}

#let project(
  theme: rgb("#C03452"),
  name: "",
  email: none,
  title: none,
  contact: ((text: [], link: "")),
  skills: (
    languages: ()
  ),
  about: (title:"", content: ""),
  main: (
    (title: "", content: [])
  ),
  titleFont: "Chivo",
  sidebar: (),
  body) = {


  
  //fill: theme, 
  
  let backgroundTitle(content) = {
    align(center, box(
        fill: theme.lighten(97%),
        text(theme.darken(25%), font:titleFont, 
        size: 1.25em, weight: "bold", 
        upper(content)), 
        width: 1fr, 
        inset: (
          top: 0.35em,
          bottom: 0.45em,
          rest: 0.3em
        ),
        stroke: (
          top: none,
          left: none, 
          right: none,
          bottom: (paint: theme, thickness: 2pt, dash: "dotted"),
          
        )
      )
    )
  }

  let secondaryTitle(content) = {
    text(weight: "bold", size: 1.125em, font:titleFont, upper(content))
  }

  let italicColorTitle(content) = {
    text(weight: "bold", style: "italic", font:titleFont, size: 1.125em, theme, content)
  }

  let italicColorSimpleTitle(content) = {
    text(weight: "bold", style: "italic", size: 1.125em, theme, content)
  }


  let formattedName = block(upper(text(2.5em, font: titleFont, weight: "bold", theme, name)))

  let formattedTitle = block(upper(text(1.8em, gray.darken(50%), title)))

  let titleColumn = align(center)[
    #formattedName
    #formattedTitle
    #v(0.5em)
    #contact.map(c => {
    if c.link == none [
      #c.text
    ] else [
      #underline(link(c.link, text(theme, c.text)))
    ]
    }).join(" - ")
  ]

  let contactColumn = align(center)[
    #image("max.png", width: 50%)
  ]

  grid(
    columns: (1fr, 2fr),
    column-gutter: 6mm,   
    contactColumn,
    titleColumn,
  )
  
  set par(justify: true)

  let formattedLanguageSkills = [
    #text(skills.languages.join(" • "))
  ]

  let createLeftRight(left: [], right: none) = {
    if (right == none) { 
      align(start, text(left))
    } else {
      grid(
        columns: (2fr, 1fr),
        align(start, text(left)),
        align(end, right),
      )
    } 
  }

//  let parseContentList(contentList) = {
//    if contentList.format == "bulletJoin" [
//      #text(contentList.content.join(" • "))
//    ] else if contentList.format == "bulletList" [
//      #contentList.content.map(c => list(c)).join()
//    ]
//  }

  let parseSubSections(subSections) = {    
    subSections.map(s => {
      [    
        #if s.textContent == none [   
          #if s.title != none [
            #v(3pt)
            #createLeftRight(
              left: secondaryTitle(s.title),
              right: if s.titleEnd != none { 
                italicColorSimpleTitle(s.titleEnd)
              }
            )
            #if s.subTitle != none or s.subTitleEnd != none [
              #text(
                top-edge: 0.2em,
                createLeftRight(
                  left: italicColorTitle(s.subTitle),
                  right: s.subTitleEnd
                ),
              )
            ]
          ] 
          #s.content
        ] else [
          #v(4pt)
          #s.textContent
        ]
      ]
    }).join()
  }

  let parseSection(section) = {  
    section.map(m => {
      [
        #backgroundTitle(m.title)
        #parseSubSections(m.content)
      ]
    }).join()
  }

 let parseTextSection(section) = {  
      [
        #backgroundTitle(section.title)
        #section.content
      ]
  }
  

  let aboutSection = parseTextSection(about)
  let mainSection = parseSection(main)
  let sidebarSection = parseSection(sidebar)


  grid(
    columns: (1fr, 2fr),
    column-gutter: 6mm,
    sidebarSection,
    [
      #aboutSection
      #mainSection
    ],
  )

  // Main body.
  set par(justify: true)
  show: columns.with(3, gutter: 1.3em)

  // body
}