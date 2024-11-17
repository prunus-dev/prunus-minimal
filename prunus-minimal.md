{{wide
# Prunus Minimal
{centered}

{{aside
This is a compilation of the custom styles and formatting I've made with CSS for use with the Homebrewery.  
My CSS not only changes the style of things to be "clean" in a more minimal sense, but also adds in additional convenient features that I've made while writing my homebrew.
}}
}}

### Text Styling
There are several predefined styles that can be used to format how your text is laid out, such as changing the alignment, indentation, or visual level of importance.
:

#### Text Alignment
You can use the `centered` style to set some text to align itself within the center of its space. Combining this with the `fullwidth` style makes it so that it takes up the full width of its space, and then centers within that. You can use the `centerfull` style as a shorthand combination of the two.

```
{{centerfull Hello!}}
```
{centered}

{{downarrow,centerfull}}  
{{centerfull Hello!}}
:

You can also use the `left-text` and `right-text` to align some text to the left or right, which also have corresponding `leftfull` and `rightfull` styles.
::

#### Horizontal Lines
If you would like a horizontal line across a portion of the page, possibly as a way to visually separate two sections, you can use the `horizontal-rule` style:

```
{{horizontal-rule}}
```
{{downarrow,centerfull}}
{{horizontal-rule}}
:
If you would like a similar line, but a bit thinner, you can put a `###` on its own line:

```
###
```
{{downarrow,centerfull}}
###
::

### Basic Formatting
The `normal`, `bold`, `italics`, and `underlined` styles apply their respective formatting.
\column
#### Indented Text
The `indented` style is a simple way to have a consistent indent for a block of text.

```
{{indented
  This is indented.  
  This second line is also indented.
}}
```
{{downarrow,centerfull}}
{{indented
  This is indented.  
  This second line is also indented.
}}
:

If you would like something to be indented like a list, where you can specify when a "new item" starts, you can use the `indent-list` style:

```
{{indent-list 
  - First thing
  - Second thing
}}
```
{{downarrow,centerfull}}
{{indent-list
  - First thing
  - Second thing
}}
::

#### Highlighted Text
You can use the `highlighted` style to make a small bit of text pop out, such as for the names of features or spells:

```
You know the {{highlighted Fireball}} spell.
```
{{downarrow,centerfull}}  
{{centerfull You know the {{highlighted Fireball}} spell.}}
::

#### Passive Text
You can use the `passive` style to do the opposite of highlighting and make some text more visually subtle, which may better visually convey parenthesized text:

```
I gave the dinosaurs lasers.  
{{passive (cause they're cool)}}
```
{{downarrow,centerfull}}
{{centerfull I gave the dinosaurs lasers. {{passive (cause they're cool)}}}}
\page
### Notes
By default, the homebrewery provides a `{{note}}` block style that allows you to write things in boxes that appear separate from the rest of the text, intended for side notes (duh).
:

In this formatting, a note block looks relatively similar, with just the color changed to fit with the rest of the theme:
{{note
  This is a note.
}}
:

While this is perfectly fine, there are a couple additional styles created to fit more use cases in the niche of "note or an aside".
:

If you want something like a note block, but a bit more subtle and without the decoration, you can use the `focused` style:

```
{{focused
  Hi there.
}}
```
{{downarrow,centerfull}}
{{focused
  Hi There
}}
:

If you like the look of the focused text, but want something with a little less padding, you can use the `aside` style:

```
{{aside
  Hi there.
}}
```
{{downarrow,centerfull}}
{{aside
  Hi There
}}
::

### Alternative Code Text
If you want an alternative to the standard code style text, you can try the `altcode` style:

```
I got some cool {{altcode code style}} text.
```
{{downarrow,centerfull}}
I got some cool {{altcode alternative code style}} text.
{centerfull}
\column
### Simple Quotes
The homebrewery provides a `{{quote}}` block style that allows you to write out nice quotes.
However, if you want a style of quoting that is more simple looking, you can try out the `simplequote` style:
:

```
{{simplequote
  And so here I am again, being quoted  
  as if I said anything new to this
  universe.
  
  {{attribution Zaltar the Erudite}}
}}
```
:
{{downarrow,centerfull}}  
{{simplequote
  And so here I am again, being quoted as if I said anything new to this universe.
  
  {{attribution Zaltar the Erudite}}
}}
::

### Alternative Tables
Aside from a different color scheme and some minor tweaks in the spacing of things with the table to better fit everything around it, tables are generally the same.
:

However, there are two alternative table styles provided: `plaintable` and `decotable`.
:
```
| Cat Name | Cat Ranking          |
|:--------:|:---------------------|
| Sprinkle | Fantastic Feline     |
| Chungy   | Cute Cat             |
| Kevin    | Knowledgeable Kitten |
```
:
If we were to modify this table, then the plaintable and decotable versions would look like:
:

{{altcode plaintable}}  
{{plaintable
| Cat Name | Cat Ranking          |
|:--------:|:---------------------|
| Sprinkle | Fantastic Feline     |
| Chungy   | Cute Cat             |
| Kevin    | Knowledgeable Kitten |
}}
:

{{altcode decotable}}  
{{decotable
| Cat Name | Cat Ranking          |
|:--------:|:---------------------|
| Sprinkle | Fantastic Feline     |
| Chungy   | Cute Cat             |
| Kevin    | Knowledgeable Kitten |
}}
\page
{{__PAGE__,wide,bg-white,monochrome}}
### Page Modification Part 1
{centered}

As you write with the Homebrewery, you may find yourself repeatedly having to wrap elements to apply the same style repeatedly. For example, you might prefer one of the alternative styles offered by this theme to the default, or you might want to have all your pages be wide instead of having two columns.
:

Either way, the text for your brew may be slightly more awkward than it could be due to all the wrapping you have to do to apply the same style over and over again. To address this potential issue, this style has a method of doing a page-wide application of various modifiers and alternative styles.
:

To do these page-wide modifications, you simply need to use the `__PAGE__` style somewhere in your page.  
This marks whatever is combined with the style as a page-wide modification.
:

The following options are available for page-wide modification:
:

{{altcode wide}}  
Automatically makes the page wide, as if you wrapped it with a `wide` block.
:

{{altcode bg-white}}  
Changes the page to have a white background.
:

{{altcode monochrome}}  

{{gap-negative}}

Makes the page black and white. Good for if you want to be nicer on your printer.  
{{passive (Can use the `monochrome` style for individual things if you want to)}}

:

{{altcode listmarker-bar}} {{passive (Can also use diamond, triangle, arrowhead, or arrow listmarker styles)}}  
Changes the default marker for unordered lists to use the specified symbol.
:

{{altcode decotable}}  
Changes the default table style to that of the `decotable` style.
:

{{altcode plaintable}}  
Changes the default table style to that of the `plaintable` style.
:

{{altcode altcode}}  
Changes the code text in {{altcode \`backticks\`}} to that of the `altcode` style.
:

{{altcode simplequote}}  
Changes the `quote` style to match that of the `simplequote` style instead.

:::

As an example of using page modifiers, this very page is using the modifier:  
```
{{__PAGE__,wide,bg-white,monochrome}}
```
:
\page
### Page Modification Part 2
#### Changing the page dimensions
If you would like to alter the page dimensions to fit with some other page size or layout when printing, there are several styles that do just that.
:

There are portrait and landscape layout styles for all the common page sizes, such as:
- A0 to A5
- Letter
- Legal
- Tabloid
:

To set the layout and size for a page, put a style in the format of `{{layout-size}}` with the `__PAGE__` style.
:
For example, if you want a landscape layout and A3 size, you can put `{{landscape-A3}}`.  
Similarly, you could put `{{portrait-legal}}` for a portrait-oriented legal-size page.

{{focused
There are also the `{{portrait}}` and `{{landscape}}` styles, which default to being the same as  
`{{portrait-letter}}` and `{{landscape-letter}}`.
}}
::

#### Putting an automatically numbered page footer
While the homebrewery comes with styles for creating footers and page numbers, it doesn't have one that is nice and combined together. To address this, you can use the `pagenumber-footer` style, which allows for a footer with or without an automatic page number.
:

You can put  
```{{pagenumber-footer Footer Text}}```  
to make a basic footer, and  
`{{pagenumber-footer,auto Footer Text}}`  
to make a footer with an automatically generated page number and a seperator between the number and footer text.
\column
### Custom Gaps
You can use `:` to insert gaps in text, but what if you want a more specific amount of spacing? Well, the `gap` styles are for you. The styles are based around the space given with a `:`, and each style applies the following difference in space:
:

{{tablespace-3,plaintable
| Style        | Space        |
|-------------:|:-------------|
| gap-double   | +1 Space     |
| gap-full     | +0 Space     |
| gap-half     | -0.5 Space   |
| gap-quarter  | -0.75 Space  |
| gap-eight    | -0.875 Space |
| gap-zero     | -1 Space     |
| gap-negative | -1.25 Space  |
}}
::

### Table Gaps
Additionally, there are styles for placing gaps between the columns of a table. A good example of when this is useful is the table in the previous section.
:

To set the spacing between table columns, you can use the following styles:

{{tablespace-3,plaintable
| Style        | Spacing      |
|:-------------|:------------:|
| tablespace-5px  | 5 pixels  |
| tablespace-10px | 10 pixels |
| tablespace-15px | 15 pixels |
| tablespace-20px | 20 pixels |
| tablespace-1 | Based on text size |
| tablespace-2 | {{times}}2 space |
| {{verticaldots,centered,fullwidth}} | {{verticaldots,centered,fullwidth}}|
| tablespace-15 | {{times}}15 space |
}}
::

### List Markers
If you would like an alternative marker for each item in a list, you can use the `listmarker` styles:
:
`listmarker-bar`
{{}}
{{listmarker-bar
- Woah
}}
`listmarker-diamond`
{{}}
{{listmarker-diamond
- Cool
}}
`listmarker-triangle`
{{}}
{{listmarker-triangle
- List
}}
`listmarker-arrowhead`
{{}}
{{listmarker-arrowhead
- Item
}}
`listmarker-arrow
`
{{}}
{{listmarker-arrow
- Markers
}}

{{pagenumber-footer,auto Example Auto Footer}}
\page
### Symbols
There are several predefined styles that you can use to generate some common or useful text symbols.
:

| Style              | Symbol                 |
|:------------------:|:----------------------:|
| one-half           | {{one-half}}           |
| one-third          | {{one-third}}          |
| one-fourth         | {{one-fourth}}         |
| times              | {{times}}              |
| double             | {{double}}             |
| triple             | {{triple}}             |
| quadruple          | {{quadruple}}          |
| product            | {{product}}            |
| divide             | {{divide}}             |
| en                 | {{en}}                 |
| em                 | {{em}}                 |
| bar                | {{bar}}                |
| arrow              | {{arrow}}              |
| uparrow            | {{uparrow}}            |
| rightarrow         | {{rightarrow}}         |
| downarrow          | {{downarrow}}          |
| leftarrow          | {{leftarrow}}          |
| uparrow-right      | {{uparrow-right}}      |
| uparrow-left       | {{uparrow-left}}       |
| downarrow-right    | {{downarrow-right}}    |
| downarrow-left     | {{downarrow-left}}     |
| downarrow          | {{downarrow}}          |
| verticaldots       | {{verticaldots}}       |
| horizontaldots     | {{horizontaldots}}     |
| diagonaldots-right | {{diagonaldots-right}} |
| diagonaldots-left  | {{diagonaldots-left}}  |
| ellipses           | {{ellipses}}           |
| star               | {{star}}               |
| square             | {{square}}             |
| circle             | {{circle}}             |
| opencircle         | {{opencircle}}         |
| triangle           | {{triangle}}           |
| triangle-right     | {{triangle-right}}     |
| triangle-down      | {{triangle-down}}      |
| triangle-left      | {{triangle-left}}      |

::

#### Inserting Space
There are also a few styles that you can use to forcibly insert space inside of some text, which mostly comes in handy for either:
- Forcing the alignment of some stuff
- Forcibly growing/shrinking the columns in a list<br>{{passive (The space will grow the column it's shoved in)}}
:

| Style | Result |
|:-:|:-:|
|sp | 1 space |
|sp2, sp3, sp4, sp5 | 2 - 5 spaces |
| sp10| 10 spaces |
|sp20| 20 spaces |
|sp45| 45 spaces |
\column
### Spell Rank Symbols
As multiple systems have leveled spells, there are styles for a predefined format that can be used to symbolically represent a spell's level.
:

You can put `{{spell-rank,spell-rankX}}`, where `X` is the spell level (cantrips are rank 0).
:

For example, `{{spell-rank,spell-rank3}}` would represent a 3rd level spell with: {{spell-rank,spell-rank3}}
:

You can customize the symbols used for spell ranks, including for cantrips, and the color given to them.  
See the section on customizing variables for more information.

### Sentence Formatting

The `interrupt` style allows you to automatically format a break in a sentence with em-dashes around it:

```
I like toast {{interrupt particularly the buttered kind}} as it's so crunchy.
```
{{downarrow,centerfull}}
I like toast {{interrupt particularly the buttered kind}} as it's so crunchy.
::

### Using the Theme
This theme uses the `Theme` meta-tag, which means that you can easily use it to theme any of your creations without needing to manually copy the CSS each time!
:

To do so, do the following steps:

1) Clone this theme for yourself if you haven't yet.
2) Create or go to an existing brew of yours.
3) Go to the properties tab by clicking the ⓘ button at the top.
4) You'll see a `THEME` property, with a little list you can click.
5) Click the list for the theme and, if you have this theme cloned, you should see an option that says `prunus: Prunus Style`.
6) Select it, and now it should automatically apply the theme to the brew you're working on.
\page
### Customizing Variables
The CSS for this style has been written in a customizable manner. If you want to change a font or color, you just have to change the value for the variable defining it.
:

If you're unfamiliar with how colors are written in CSS, check out
[this link](https://www.quackit.com/css/css_color_codes.cfm)
which has everything to get started.
:

Once you understand what you would put for a color, and you've applied the theme to your brew, go to the Style Editor and put the following:
```
:root {
 
}
```
:

Next, you'll put your customizations.  
For example, if you wanted to change the page background to grey:
```
:root {
  --page-background-color: grey;
}
```
::
### Variable List
Here is a list of all the variables used in the style.  
The default is listed to the right of their names.
:
|`--general-font`|{{passive,altcode Overpass}}|
|:-|-:|
{{indented
The general font used for most text on the page.
}}
:

|`--info-font`|{{passive,altcode Overpass}}|
|:-|-:|
{{indented
The font used for information blocks, such as the {{altcode \{\{focused\}\} }} or {{altcode \{\{aside\}\} }} styles.
}}
:

|`--name-font`|{{passive,altcode Overpass}}|
|:-|-:|
{{indented
The font used for the names of things, such as when using the {{altcode \{\{highlighted\}\} }} style.  
}}
:

|`--quote-font`|{{passive,altcode BookInsanity}}|
|:-|-:|
{{indented
The font used for text in quotes with the {{altcode \{\{simplequote\}\} }} style.
}}
:
|`--footer-font`|{{passive,altcode ScalySansSmallCaps}}|
|:-|-:|
{{indented
The font used for footer text with the {{altcode \{\{pagenumber-footer\}\} }} style.
}}
\column
|`--code-font`|{{passive,altcode Monospace}}|
|:-|-:|
{{indented
The font used for code text, such as with text using {{altcode \`backticks\`}} or the {{altcode \{\{altcode}\} }} style.
}}
:

|`--spell-cantrip-symbol`|{{passive,altcode,monochrome ⭕}}|
|:-|-:|
{{indented
The symbol used to represent a spell of rank 0, aka a cantrip.
}}
:

|`--spell-leveled-symbol`|{{passive,altcode,monochrome ⚫}}|
|:-|-:|
{{indented
The symbol used to represent a spell of rank 1 or higher.
}}
:

|`--spell-rank-color`|{{passive,altcode,monochrome Black}}|
|:-|-:|
{{indented
The color to make the symbols used for spell ranks
}}
:

|`--text-highlight-color`|{{passive,altcode,monochrome MidnightBlue}}|
|:-|-:|
{{indented
The color to use for highlighted text.
}}
:

|`--page-background-color`|{{passive,altcode,monochrome #FBFCF9}}|
|:-|-:|
{{indented
The background color for the page.
}}
:
|`--artist-attribution-color`|{{passive,altcode,monochrome #000033}}|
|:-|-:|
{{indented
The color for the artist name text for images.
}}
:

|`--big-header-color`|{{passive,altcode,monochrome #000022}}|
|:-|-:|
{{indented
The color to use for larger headers. {{passive (aka H1 and H2)}}
}}
:

|`--small-header-color`|{{passive,altcode,monochrome #1C2D36}}|
|:-|-:|
{{indented
The color to use for smaller headers. {{passive (aka H3 and H4)}}
}}
:

|`--code-background-color`|{{passive,altcode,monochrome #C9DAE4}}|
|:-|-:|
{{indented
The color to use for the background of code text, such as with {{altcode \`backticks\`}}.
}}
:

|`--horizontal-line-color`|{{passive,altcode,monochrome #37596C}}|
|:-|-:|
{{indented
The color to use for horizontal lines, such as the {{altcode \{\{horizontal-rule\}\} }} style, or the line under an H3.
}}
:

|`--theme-color-1`|{{passive,altcode,monochrome #BCD1DD}}|
|:-|-:|
{{indented
Theme color used for {{altcode \{\{note\}\} }} blocks and table rows (the "stripe" color for them).
}}
:

|`--theme-color-2`|{{passive,altcode,monochrome #E4EDF1}}|
|:-|-:|
{{indented
Theme color used for the {{altcode \{\{aside\}\} }}, {{altcode \{\{focused\}\} }}, and {{altcode \{\{altcode\}\} }} styles.
}}

\page
### Setting Text Fonts
The Homebrewery already comes with the option to set the font for some text, but this theme comes with another method that may be slightly more convenient.
:

If you want to set the font for something, you can use several predefined styles for each font option:

| Font                   | {{sp10}} | Style            |
|:-----------------------|:---------|:-----------------|
| Monospace              | ->       | f-mono           |
| Open Sans              | ->       | f-opensans       |
| Code Bold              | ->       | f-codebold       |
| Code Light             | ->       | f-codelight      |
| Scaly Sans             | ->       | f-scalysans      |
| Book Insanity          | ->       | f-bookinsanity   |
| Mr Eaves               | ->       | f-mreaves        |
| Pagella                | ->       | f-pagella        |
| Solbera Imitation      | ->       | f-solbera        |
| Scaly Sans Small Caps  | ->       | f-scalysanssmall |
| Walter Turncoat        | ->       | f-walterturncoat |
| Lata                   | ->       | f-lato           |
| Courier                | ->       | f-courier        |
| Nodesto Caps Condensed | ->       | f-nodesto        |
| Overpass               | ->       | f-overpass       |
| Davek                  | ->       | f-davek          |
| Iokharic               | ->       | f-iokharic       |
| Rellanic               | ->       | f-rellanic       |
| Times New Roman        | ->       | f-timesnewroman  |
{plaintable}
::

#### Example:
```
{{f-bookinsanity This is some text in the Book Insanity font.}}
```
{{downarrow,centerfull}}

{{f-bookinsanity This is some text in the Book Insanity font.}}
{centerfull}
::

{{h3 Header Styles}}  
If you want a close approximation of a header, but without using an actual header, you can use the styles `h1`, `h2`, `h3`, `h4`, `h5`, and `h6`.
:

```
{{h4 I'm an H4, but as a style}}
```
{{downarrow,centerfull}}  
{{h4,centerfull I'm an H4, but as a style}}
::

Note that these header styles are *not* actually headers, and do not behave exactly 1:1 with their equivalents. They are text styles that closely mimic the attributes of headers, and are great if you need header-like text.

{{aside
Secretly, this one section uses an \{\{h3\}\} header.
}}
\column
### Final Remarks
If you've gone and taken the time to read through this guide on how to use my custom homebrew formatting {{em}} thank you!
:

This personal style I've developed is the result of many hours developing my own ideas and researching the myriad minutiae involved in creating quality homebrew and tabletop roleplay systems overall.
:

The Homebrewery is an incredibly quality tool, and the Markdown+ syntax for applying styles gives a great balance of simplicity and extensibility that I'm a big fan of.

{{aside
{{underlined Silly Fun Fact}}  
I actually wrote the PDF that earned me my degree with the Homebrewery.
}}
::

Again, thanks for reading, and I hope that this format I've developed can help others as well as it helps me.

::
## Credits
{centered}
{{horizontal-rule}}
:
{{prunus-credit
Developed By
{{prunus-icon,centered,max-width:140px}}  
Prunus
\column
::
- [Homebrewery](https://homebrewery.naturalcrit.com/user/prunus?sort=views&dir=asc)
:
- [Github](https://github.com/prunus-dev)
}}
:
###
:

{{homebreweryCredits
Made With
{{homebreweryIcon}}
The Homebrewery  
[Homebrewery.Naturalcrit.com](https://homebrewery.naturalcrit.com)
}}
