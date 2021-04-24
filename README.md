# haskell-bisect
This is a simple Haskell module that allows to use the **bisection method**. According to [Wikipedia](https://en.wikipedia.org/wiki/Bisection_method):
>In mathematics, the bisection method is a root-finding method that applies to any continuous functions for which one knows two values with opposite signs. ... The method is also called the interval halving method, the binary search method, or the dichotomy method.

To use it, load the module `bisect.hs` into `ghci` and use the function as follows:

`bisect f a b eps` where `f` is the function to find the root for, `a` and `b` the interval in which to search for (`[a, b]`) and `eps` the tolerance. For example, to find the root in the interval `[10, 14]` for `f(x) = sin(x)` with a tolerance of `10^(-9)`, use the following function call:

```
*Main> bisect sin 10 14 (10**(-9))
12.566370614338666
```
