# `trajingresume`

A basic LaTeX résumé class more-or-less based off of Doruk Çetin's
[Simple-CV](https://github.com/dcetin/Simple-CV/) package. The design is
basically the same, some portions of the class are from his package, some of
them I rewrote because I didn't understand enough of what was going on to
transfer from the package to a class. Here for your usage and convenience.

## Goals:
Here's what I'm keeping in mind when writing this, and what I'm looking for if
you send in a patch.
* **Be as comprehensible as possible**. LaTeX is often difficult to understand.
  I'm still an amateur. Ideally, everything in the class itself is able to be
  understood, relatively quickly, by an amateur. Simple rule of thumb: use
  plenty of whitespace, and indent liberally.
* **Be as clean as possible.** I want the LaTeX source of the résumé to be as
  easy to read as the résumé itself (if you're familiar with LaTeX, at least).
  "Self-documenting" may be something of a buzzword and excuse for poor
  comments, but that is what this should be: function, not form, in the source
  of the résumé itself, as much as is possible.
* **Don't compromise aesthetics.** It is what it says on the tin. At the end of
  the day, this is there to make something that will be read, probably in PDF
  format. Sometimes that means that you have to break an earlier rule. Just make
  sure you find a way to manage the damage.

## Example Résumé

`resume.pdf` is a (mildly anonymized) copy of my résumé, and `resume.png` is a
([Glimpse](https://glimpse-editor.github.io)-created) image of it. Neither is
guaranteed to stay 100% up-to-date with the current state of the code, but they
should give you a rough idea of what a résumé using this class might look like
(up to date as of 2020-11-06).

![Sample Résumé](resume.png)
