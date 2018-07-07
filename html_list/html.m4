define(`_startpage',`<html>
<head>
<title>$1</title>
</head>
<body>
<h1>$1</h1>')dnl
dnl
define(`_endpage', `
<p>Lastest change: esyscmd(date)</p>
</body>
</html>')dnl
dnl
define(`_listitem', `ifelse($#, 0, ,
		    	    $#, 1, `<li>$1</li>',
			    `<li>$1</li>
			    _listitem(shift($@))')')dnl
dnl
define(`_ul', `<ul>
_listitem($@)
</ul>')dnl
