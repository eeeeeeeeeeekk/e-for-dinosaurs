# E for Dinosaurs 🐱‍🐉

![png](png.png)

Calculating e (Euler's number) via Monte Carlo method in ancient programing languages (before 1991)



Implement the following pseudocode (Python3) or something like it to get Euler's number

```python
import random

print("Number of iterations: ", end="")
n = int(input())

sum_total = 0
for _ in range(n):
    temp = 0
    counter = 0
    while temp < 1:
        temp += random.random()
        counter += 1

	sum_total += counter

print(sum_total/n)
```

## Thanks

Inspired by [github.com/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee](https://github.com/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee/eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)

## Licence

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT) 

