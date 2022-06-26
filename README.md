# statq: basic machine learning library for kdb+/q

DISCLAIMER: THIS WORK IS NOT NECESSARILY A REPRESENTATION OF ANY PAST OR CURRENT EMPLOYER OF MINE

## 1) Set up kdb+

- [What is kdb+](https://en.wikipedia.org/wiki/Kdb+)
- [How to set up kdb+](https://code.kx.com/q/)
- [Introduction to kdb+ and q language](https://code.kx.com/q4m3/)
- [IDE for kdb+/q](http://www.timestored.com/qstudio/)

## 2) Set up statq

```console
$ cd statq
$ q lib/statq.q -p 5000
```

## 3) Examples

### Feature Transformation
```q
.statq.feature
```
### Linear Regression
```q
q) t: ([] x1: 1 5 4f; x2: 3 6 1f; y: 3 11 9f);
q) .statq.linreg.insample[t; ] (enlist`equation)!(enlist"y~intercept+x1");
```
### Logistic Regression
```q
q) t: ([] x1: 1 5 200f; x2: 6 3 40f; y: 1 1 0f);
q) .statq.logreg.insample[t; ] (`equation`iterations`step)!("y~intercept+x1+x2";10000;0.1);
```
### Validation
```q
.statq.validation
```
