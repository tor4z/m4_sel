define(`h1count', 0)

define(`_h1', `divert(9)
define(`h1count', incr(h1count))
<li><a href="`#'H1`_'h1count">$1</a></li>
divert(1)
<h1 id="H1`_'h1count">$1</h1>
divert')

define(`_p', `divert(1)
<p>
$1
</p>
divert')

include(`htmltext.m4')

<strong>Table of content:</strong>
<ol>
undivert(9)
</ol>
undivert(1)

