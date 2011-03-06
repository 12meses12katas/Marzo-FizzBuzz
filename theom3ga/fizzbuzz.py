#!/usr/bin/env python
# -*- coding: utf-8 -*-

criterion = lambda x, y: x % y == 0 or str(y) in str(x)
print '\n'.join(["Fizz" * criterion(i, 3) + "Buzz" * criterion(i, 5) or str(i) for i in range(1,101)])
