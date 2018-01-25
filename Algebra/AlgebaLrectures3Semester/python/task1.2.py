print ('Task 1.1')
print ('The program determines what degree\n \
is the number from the quadratic equationof the field GF(p)')

p = int(479)
num = int(67)

Yn = False;
i = int(-1);
maxCount = 1e7
while not Yn and (maxCount != i):
	i+=1
	if  i*i % p == num:
		Yn = True;

if Yn:
	print 'Degree: %d' % i
else:
	print 'No quadratic %d in field GF(%d) before number %d' % (num, p, maxCount)