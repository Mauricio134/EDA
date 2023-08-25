#include <iostream>
#include <random>
#include <chrono>
#include <utility>
#include <vector>
#include <cmath>
#include <math.h>
#include <fstream>


using namespace std;
std::ofstream ofs("distancia.txt");

double random(double low, double high) {
    double f = (double)rand() / RAND_MAX;
    return low + f * (high - low);
}

int main()
{
    int d; cin >> d;
    int t = 100 * (100 - 1) / 2;
    vector<vector<double> > punto(100,vector<double>(d));
    vector<double> dist;
    for (int i = 0; i < 100; ++i) {
        for (int j = 0; j < d; ++j) {
            double p = random(0, 1);
            punto[i][j] = p;
        }
    }

    double rest = 0;
    double sum = 0;
    for(int i = 0; i < 100; ++i){
        for(int j = i+1; j < 100; ++j){
            for(int k = 0; k < d; ++k){
                rest = punto[i][k] - punto[j][k];
                sum += pow(rest,2);
            }
            dist.push_back(sqrt(sum));
            sum = 0;
        }
    }

    for (int i = 0; i < dist.size(); i++) {
        ofs << dist[i] << std::endl;
    }
}
