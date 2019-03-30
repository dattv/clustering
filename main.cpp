/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: dat
 *
 * Created on March 28, 2019, 9:19 PM
 */

#include <cstdlib>
#include <iostream>
#include "CRandom.h"
#include "CClustering.h"
#include "CMathLib.h"

using namespace std;

/*
 * 
 */
int main(int argc, char** argv) {
    
    std::cout<<"djkfdlj"<<std::endl;
   
    CClustering cluster;
    
    
    int nVar = 10;
    int nPoint = 1000;
    double *point = new double [nVar*nPoint];
    for(int i = 0; i < nVar*nPoint; i++) point[i] = dRandom(-100., 100.);
    
    int kGroup = 4;
    cluster.kMeans(nPoint, nVar, point, kGroup);
    
    return 0;
}

