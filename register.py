#!/Python27/python

import MySQLdb
import cgi

print "Content-type:text/html\r\n\r\n"
print '<html>'
print '<body>'


form = cgi.FieldStorage()
name =form.getvalue('name')
username =form.getvalue('username')
password =form.getvalue('password')
college=form.getvalue('college')
sel = form.getvalue('sel')

try:
	db = MySQLdb.connect('localhost','root','','quiz')

	cursor = db.cursor()

	if sel == 'student':
		cursor.execute("""insert into student(name,college) values(%s,%s)""",(name,college))
		cursor.execute("SELECT StudentId FROM student ORDER BY StudentId DESC LIMIT 1")
		var=cursor.fetchone()
		sql1="""insert into studentregister values(%d,%s, %s)""" % (var[0], 'username', 'password')
		cursor.execute(sql1)
	else:
		sub=form.getvalue('subject')
		cursor.execute("""insert into teacher(name,subject,college) values(%s,%s,%s)""",(name,subject,college))
		cursor.execute("SELECT TeacherId FROM teacher ORDER BY TeacherId DESC LIMIT 1")
		var=cursor.fetchone()
		cursor.execute("""insert into teacherregister values(%d, %s,%s)""",(var[0], username,password))
	
	db.commit()
	print "<h1>data inserted successfully</h1>"

except:
	print "<p>Error: unable to insert data </p>" 

db.close()

print '</body>'
print '</html>'