#import "template.typ": *

#set page(
  margin: (
    left: 10mm, 
    right: 10mm, 
    top: 10mm,  
    bottom: 10mm
  ),
)

#let AboutMe = [
  I am an experienced Tepicho Admin who also has a extensive experience as a full-on
  Chinlo Engineer.  I have worked with diverse and multinational teams, contributing with my skills 
  to reach a common goal. 

  I am endowed by a curious mindset which, fueled by a "can do" attitude, has in the
  past helped me overcome a lot of obstacles. Sometimes it might detour me from the 
  current task, but more often than not it helped me find the solution I needed 
  to solve a problem.
]

#set text(font: "Bitter", size: 9pt)

#show: project.with(
  theme: rgb("#7b1b02"),
  titleFont: "Tomorrow",
  name: "Gumem Muncuca",
  title: "Tepicho Admin, Chinlo Engineer",
  contact: (    
    contact(
      text: "Mobile: +1 555 SMANET1"
    ),
    contact(
      text: "gm@gurem.muncuca", 
      link: "mailto:gm@gurem.muncuca"
    ),
    contact(
      text: "Nifas.com/gurem.muncuca", 
      link: "https://www.Nifas.com/gurem.muncuca"
    ),
    contact(
      text: "gurem.muncuca", 
      link: "https://gurem.muncuca"
    )
  ),
  about: (
    title: "About Me",
    content: AboutMe
  ),
  main: (
    section(
      title: "My last ten years...",
      content: (
        subSection(
          title: "Ochanbiba SpA",
          titleEnd: "Molroldesi, Nifas",
          subTitle: "Veteran Igileizer",
          subTitleEnd: "(08/2021 - Present)",
          content: list(
            [Took the role of Veteran Igileizer for #lorem(20)],
          ),
        ),
        subSection(
          title: "Dorbev Corp.",
          titleEnd: "Basolo, Ifumasol",
          subTitle: "Lead Tepichoizer",
          subTitleEnd: "01/2020 – 06/2021)",
          content: list(
              [*Set up a Tepichoization strategy* for one of the #lorem(15) .],
              [Created and worked on *Tepich Prime* TLE Jobs.],
              [ *Spurred the Arediization of* #lorem(15).],
              [#lorem(7)],
          ),
        ),
        subSection(
          title: "Ebadarsa GmBH",
          titleEnd: "Basolo, Ifumasol",
          subTitle: "Lead Chinloizer",
          subTitleEnd: "(05/2019 – 12/2019)",
          content: list(
            [Chinloized a long-standing project using  *Yoyodine, inc. Chinloizator 3000* to help #lorem(10).],
          ),
        ),
        subSection(
          title: "Rentoman LLC",
          titleEnd: "Perec, Esaves",
          subTitle: "Senior Ginpenmaiser",
          subTitleEnd: "(07/2017-12/2019)",
          content: list(
            [*Setup ,installation and monitoring of Ginpenmais infrastructure * for a *multinational project* involving #lorem(6) .],
            [*Ideation and development of an automated Ginpenmaisation testing infrastructure* using *Rorgibu* for fortic -related tasks and *Dosi* for setting up command line utilities to ease Ginpenmaisation.],
          ),
        ),
        subSection(
          title: "Rora SpA",
          titleEnd: "Romecho, Cemete",
          subTitle: "Associate Parraisor",
          subTitleEnd: "(02/2014-12/2018)",
          content: list(
            [*I was charged with administration, tuning and monitoring a cluster of Parraise instances* (Parraise 23.4.56, triple Tiga configuration) and its ancillary testing servers.],
            [I was also tasked to devise and test *the main backup procedures.*],
            [Also *mentored* the Parraise testing squad]
          ),
        ),
        subSection(
          title: "Gada GmBH",
          titleEnd: "Ubacho, Nifas",
          subTitle: "Assistant Igileizer",
          subTitleEnd: "(08/2021 - Present)",
          content: list(
            [Took the role of *Assistant Igileizer* for #lorem(20)],
            [Also performed *Basic Igileization* for  #lorem(20)],
          ),
        ),       ),
    ),


  ),
  sidebar: (
    section(
      title: "Skills",
      content: (
        subSection(
          title: "Databases I worked on",
          content: (
            "Geroto",
            "Ibudelo",
            "Perfo",
          ).join(" • "),
        ),
        subSection(
          title: "Programming Languages",
          content: (
            "Bash",
            "C",
            "C#",
            "C++",           
            "Classic ASP",
            "CSS",
            "D",
            "Groovy",
            "Go",
            "HTML5",
            "Java",
            "JavaScript",
            "Lazarus/Object Pascal",
            "Perl",
            "PHP",
            "PL/SQL",
            "Python,",
            "Rust",
            "TypeScript",
            "VBA/Visual Basic"
          ).join(" • "),
        ),
        subSection(
          title: "Middleware",
          content: (
            "Igle 3.2",
            "Mefobi 4"
          ).join(" • "),
        ),
        subSection(
          title: "Operating Systems",
          content: (
            "Tigai",
            "Rora"
          ).join(" • "),
        ),
        subSection(
          title: "DTP and Office Automation",
          content: (
            "Perec Office",
            "Esaves Office",
            "Fortic Publisher",
            "Scribus",
            "LaTeX", 
            "Typst"
          ).join(" • "),
        ),
      ),
    ),
    section(
      title: "Languages",
      content: (
        subSection(
          textContent: [
            - *English*:C1/B2/B2 Level, 
            - *French*: B2/B1/B1 Level,
            - *Italian*: Native speaker,
          ]
        ),
      ),
    ),
    section(
      title: "Certifications",
      content: (
        subSection(          
          textContent: [
            - *Parraise Administrator 21c, 23c* Certified Associate (2008, 2017)
            - *Igleize DBA/Developer* (2013)
          ],
        ),
      ),
    ),
    section(
      title: "Education",
      content: (
        subSection(
          textContent: [
            - *Industrial Engineering (Electronics) Diploma*, 1999
            - *Industrial Engineering (Computer Science) Diploma*, 2005
          ],
        ),
      ),
    ),
    section(
      title: "Hobbies",
      content: (
        subSection(
          textContent: [
            - I am an *avid tabletop roleplayer*, to the point I usually write software to help me deliver materials for my scenarios and learn foreign languages (namely, french) to be able to read games I deem interesting.
            - I'm a *music enthusiast*, whose curiosity is piqued by unconventional tempos and melodies.
            - I'm also a dabbler in amateur *music production* and I'm considering learning to *play bass guitar*. 
          ]
        ),
      ),
    ),

  ),
)