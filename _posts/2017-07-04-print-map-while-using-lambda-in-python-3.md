---
title: Print map while using lambda in Python 3
time: 2017-06-27 16:00:00 +0800
layout: post
keywords: map, lambda, python
categories : [python]
tags : [python]
---

Since `lambda x: print(x)` is a syntax error in Python < 3, I'm assuming Python 3. That means map returns a generator, meaning to get map to actually call the function on every element of a list, you need to iterate through the resultant generator.
 
Fortunately, this can be done easily:

```
list(map(lambda x:print(x),primes))
```

Oh, and you can get rid of the lambda too, if you like:

```
list(map(print,primes))
```

But, at that point you are better off with letting print handle it:

```
print(*primes, sep='\n')
```

NOTE: I said earlier that `'\n'.join` would be a good idea. That is only true for a list of str's.

More information see [here][1] and [there][2]

  [1]: https://stackoverflow.com/questions/7731213/print-doesnt-print-when-its-in-map-python

  [2]: https://www.zhihu.com/question/20125256