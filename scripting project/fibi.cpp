#include <iostream>
#include <vector>

std::vector<int> fibonacci_series(int n) {
    std::vector<int> fib_series;
    int a = 0, b = 1;
    for (int i = 0; i < n; ++i) {
        fib_series.push_back(a);
        int next = a + b;
        a = b;
        b = next;
    }
    return fib_series;
}

int main() {
    int n;
    std::cout << "Enter the value to print the series upto that length:: ";
    std::cin >> n;

    std::vector<int> fib_series = fibonacci_series(n);
    std::cout << "Fibonacci series up to " << n << " terms is ::" << std::endl;
    for (int num : fib_series) {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    return 0;
}