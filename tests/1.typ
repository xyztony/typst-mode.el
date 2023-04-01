// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), date: none, body) = {
    // Set the document's basic properties.
    set document(author: authors.map(a => a.name), title: title)
    set page(numbering: "1", number-align: center)
    set text(font: "Linux Libertine", lang: "en")
    set heading(numbering: "1.1")
	// type test
	none, auto, false, true, 1, 1.1, 1e1
	1pt, 1mm, 1cm, 1.1in, 1em
	1e32deg, 1.32rad
    100.0%
	
	// Title row.
	align(center)[
		#block(text(weight: 700, 1.75em, title))
		#v(1em, weak: true)
		#date
	]

	
	// Author information.
	pad(
		top: 0.5em,
		bottom: 0.5em,
		x: 2em,
		grid(
			columns: (1fr,) * calc.min(3, authors.len()),
			gutter: 1em,
			..authors.map(author => align(center)[
				*#author.name* \
				#author.email
			]),
		),
	)
	
	// Main body.
	set par(justify: true)
	
	body
}	

#show: project.with(
  title: "Test",
  authors: (
    (name: "author 1", email: "author1@anonym.anonym"),
    (name: "author 2", email: "author2@anonym.anonym"),
  ),
  date: "March 23, 2023",
)

#let amazed(term, color: blue) = {
  text(color, box[✨ #term "asdf" ✨])
}

// single line comment
/* multiple
line comment */

= styles<label>
*strong* _emphasized_ `hello` https://typst.app/ @label

- *Content*
  - Text
  - Math
  + Visualize
  + Meta
  
/ Ligature: A merged glyph.
/ 你好.hello: Used as a greeting or to begin a phone conversation.

$ 1 + 1 $

#if x == 1 {..} else if {..}

#if x == 1 {

} else {

}

\ \aha

= Introduction
#lorem(2)
== In this paper
=== Contributions

#let \{
	This is not a code block
\}

#let name = "Typst"
This is #name's documentation.
It explains #name.

#let add(x, y) = x + y
Sum is #add(2, 3).

#emph[Hello] \
#emoji.face \
#"hello".len()
