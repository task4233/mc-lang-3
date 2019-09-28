def gcd(a, b)
  b ? gcd(b, a%b):a;

def test(x)
    gcd(x, 20)
