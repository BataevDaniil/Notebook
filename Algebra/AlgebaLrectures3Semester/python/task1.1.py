print ('Task 1.1')
print ('The program calculates the squares of all elements of the field GF(p)')

p = int(55)
print 'p = %d' % p

for i in range(0, p):
	print '%d^2 mod %d = %d' % (i, p, i*i % p);