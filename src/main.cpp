#include <iostream>
#include <ios>

using namespace std;

extern "C" void Calculate_(
	double* a, double* b,
	double* add, double* sub, double* mul, double* div
);

static void PrintResult(
	const char* msg,
	double a, double b,
	double add, double sub, double mul, double div
) {
	cout << msg << '\n';

	cout << "a = " << a << ", b = " << b << '\n';
	cout << "a + b = " << std::fixed << add << '\n';
	cout << "a - b = " << std::fixed << sub << '\n';
	cout << "a * b = " << std::fixed << mul << '\n';
	cout << "a / b = " << std::fixed << div << '\n';

	cout << '\n' << std::endl;
}

int main() {
	{
		double a = 505796.124, b = 27684.569;
		double add{0}, sub{0}, mul{0}, div{0};
		Calculate_(&a, &b, &add, &sub, &mul, &div);
		PrintResult("Пример 1", a, b, add, sub, mul, div);
	}
	{
		double a = 780213.92, b = 476758.376;
		double add, sub, mul, div;
		Calculate_(&a, &b, &add, &sub, &mul, &div);
		PrintResult("Пример 2", a, b, add, sub, mul, div);
	}
}