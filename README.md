![](https://img.shields.io/badge/version-1.0-blue?style=for-the-badge) &nbsp;
![](https://img.shields.io/badge/renderer-V3-orange?style=for-the-badge)
# Prunus Minimal
A dynamic CSS theme I've developed for use with the Homebrewery.
It is a more minimal take on popular tabletop book formatting, but also comes with a large set of features and options — over 1000 lines of CSS
in features!
Additionally, it has been designed to be highly customizable, with the various colors and fonts able to be changed via variables, and with features
to override formatting of certain elements over an entire page.

You can view the theme on the Homebrewery [here](https://homebrewery.naturalcrit.com/share/KGLiIpmqt0t8).

&nbsp;

## What is the Homebrewery?  
[The Homebrewery](https://homebrewery.naturalcrit.com) is a website for creating and publishing custom content designed for
tabletop roleplaying systems (which is known as "homebrew" content).
In addition to automatically providing styling and formatting reminiscent of the style of various popular tabletop rulebooks,
it also has a rendering engine that utilizes what they call  `Markdown+` sytnax for formatting.

As the name implies, Markdown+ is a superset of the popular Markdown formatting language. The primary distinction is that
Markdown+ comes with additional features tuned for the purposes of generating documents with more complicated formatting
that Markdown does not allow without manually adding HTML into the text.

A primary feature of Markdown+ is the ability to inject CSS styling information to portions of the document with the following
syntax:
```
{{style This is some text styled with the ".style" class}}
```

This allows for more complex styling of elements with a relatively minimal syntax that blends well with Markdown.

## What is this theme?
This theme is a library of CSS written to both set the default styling of elements writting with the Markdown+ syntax and provide
a wide array of formatting options both for convenience and to tackle real situations I've encountered in my writing.

In addition to the CSS, the theme comes with a document detailing how to use its various features.

### What are some of the features of this theme?
- A clean, minimal style for the overall look and feel of the document.
- A selection of formatting styles that you can apply to text, such as: alignment, font styling, font family, etc.
- Multiple alternatives to various styling options available by default, both for stylistic variety and as solutions to
  real use cases I've had.
- A selection of styles to generate useful symbols in text.
- Various options to provide more granular control of things such as the spacing of elements on the page.
- The ability to provide a page-level override of default styles with a preferred alternative.
- Extra features, such as a customizable style for generating symbolic representations of the rank of spells and other things.

## How can I use this theme for my own creations?
The process to being able to apply this theme to any of your Homebrewery documents is very simple:
1) Have a Homebrewery account.
2) Go to the theme and clone it.
3) Go to the document you want to apply the theme to.
4) Go to the properties tab by clicking the ⓘ button at the top.
5) There is a `THEME` property with a dropdown list.
6) In the list, if you have the theme cloned, you should see `prunus: Prunus Minimal` as an option.
7) Select it, and now it should apply.

And there you go, the theme is now automatically applied to the document, and all of its features are available for use.
