#include <iostream>
#include <ctime>
#include <ratio>
#include <chrono>



using namespace std::chrono;
inline double pi(unsigned long n) {
    double sum = 0.0;
    int sign = 1;
    for (unsigned long i = 0; i < n; ++i) {           
        sum += sign/(2.0*i+1.0);
        sign *= -1;
    }
    return 4.0*sum;
}


const unsigned long iterations = 1000000000;


int main(){
    high_resolution_clock::time_point start = high_resolution_clock::now();
    auto value = pi(iterations);
    high_resolution_clock::time_point end = high_resolution_clock::now();
	std::cout << "iterations " << iterations << " value " << value << std::endl;
    duration<double> time_span = duration_cast<duration<double>>(end - start);
    std::cout << "time " << time_span.count() << std::endl;
	return 0;
}
