## Vim

vim is a text editor to help us manipulate text faster ( you can handle everything with shortcuts. )

``` bash
$vim test.txt
```

this command opens test.txt file if exists. Otherwise, it creates test.txt file in the current directory ( if you save and quit from vim :) )

--------

There are 3 modes on vim 

| Modes       | what it is doing                                             | Key Shortcut            |
| ----------- | ------------------------------------------------------------ | ----------------------- |
| Normal Mode | Everything is shortcut                                       | esc                     |
| Insert Mode | for editing file, Insert mode is the same as normal text editing. | inNormal Mode press 'i' |
| Visual Mode | For selecting and listing things.                            | inNormal Mode press 'v' |

## Exit vim

Most searched thing :) 

:wq -> write quit

:q! -> force quit without saveing

:w -> only write

ZZ -> same as :wq

ZQ -> same as :q!

---------

Normal Mode: Everything is a shortcut. 

## Insert Mode:

Press i for insert mode.

a-> rightside

Write some text.

## Move Cursor:

h,j,k,l -> For movement

w-> word

e->end

b-> back

$ -> end

0 -> beginning

GG -> move cursor to top

g -> move cursor to bottom 

## Operators:

c-> change

d->delete

y->yank

p->paste

x->char delete

``` bash
:d3w
```

## Advance entering insert mode

I -> enter insert mode in beginning of line

A -> enter insert mode at the end of line

o -> insert mode with new bottom-line 

O -> insert mode with new upper-line

## REPEAT:

. -> repeats  the last thing you do.

## Around, inside:

"this is sample string" 

``` bash
:ci"
:ca"
:di"
:da"
```

p -> Paragraph

also show tag 

t -> ( cit ) changes inside tag like div tag etc
## Undo, redo:

u for undo

ctrl+r for redo

## f and t (find & till)

sample1:
git commit -m "JiraId:4321 message: this is sample message. tag:VimEditor,VimCourse"

sample2: create new alias.

cf. 

df.

## Copy-paste

y -> yank

p -> paste

## upper-case

gUw -> makes the word all upper case
gU2w -> makes the 2 word all upper case
guw -> makes the word all lower case

## run vim commands from bash

``` bash
vim -c "normal! @p" filename -c wq
```
this command opens the filename then in normal mode running the @p macro ( you can change here ) then quit the file with wq

``` bash
vim -c "normal! A this is first line ending" filename
```

this script adding the " this is first line ending" text to end of the first line






