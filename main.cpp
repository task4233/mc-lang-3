#include <iostream>

extern "C" {
    int fib(int);
}

extern "C" {
  int myfunc(int,int);
}

int main() {
  // std::cout << "Call fib with 10: " << fib(10) << std::endl;
  std::cout << "test myfunc(5,10)" << myfunc(5,10) << std::endl;
    return 0;
}
