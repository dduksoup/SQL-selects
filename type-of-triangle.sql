/*

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Not A Triangle: The given values of A, B, and C don't form a triangle.
Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Input Format

The TRIANGLES table is described as follows:

Column  Type
A       Integer
B       Integer
C       Integer

Each row in the table denotes the lengths of each of a triangle's three sides.

*/
SELECT case
WHEN NOT A + B > C or NOT A + C > B or NOT B + C > A  THEN 'Not A Triangle'
WHEN A = B and B = C THEN 'Equilateral'
WHEN NOT A = B and NOT B = C and NOT A = C THEN 'Scalene'
WHEN (A = B AND A != C AND B != C) OR (B = C AND A != C AND A != B) OR (A = C AND A != B AND B != C) THEN 'Isosceles'

ELSE null
END as shape
FROM TRIANGLES;
