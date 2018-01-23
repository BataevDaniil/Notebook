'''
Задание №1 Вариант №1
Программа вычисляет квадраты всех элементов поля GF(p)
Простое число p в данной программе = 479
'''
import os

print ('Task №1 Option №1')
print ('The program calculates the squares of all elements of the field GF(p)')
print ('A prime number p in this program = 479')
print ('')
p = int (479)
i = 0
print ('Squares of all elements of the field:')
while i < p:
    print (i*i % p)
    i = i + 1
os.system("pause")