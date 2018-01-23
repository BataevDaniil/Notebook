'''
Задание №1 Вариант №2
Программа вычисляет степени примитивного элемента поля GF(p),
а также определяет какой степенью являетя дисриминант из квадратного уравнения.
Простое число p в данной программе = 479
Примитивный элемент = 239
Дискриминант = 166
'''
import os

print ('Task number 1 Option number ')
print ('The program calculates the degrees of the primitive element of the field GF (p),')
print ('and also determines what degree is the discriminant from the quadratic equation.')
print ('A prime number p in this program = 479')
print ('Primitive element = 239')
print ('Discriminant = 166')
print ('')

p = int (239)
d = int (166)
i = int (1)
o = i

while o != d:
    o = p^i % 479
    i = i + 1
print ('Degree:')
print (i)
os.system("pause")