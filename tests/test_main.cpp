#include <iostream>

using namespace std;

void swap(int& a, int& b)
{
    int temp = a;
    a = b;
    b = temp;
}

int main(void)
{
    int x1 = 4;
    int x2 = 6;
    int& x3 = x2;
    int* y = &x3;
    swap(x1, x2);
    cout << x1 << x2 << *y << endl;

    return 0;
}