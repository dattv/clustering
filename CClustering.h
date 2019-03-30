/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   CClustering.h
 * Author: dat
 *
 * Created on March 30, 2019, 11:46 AM
 */

#ifndef CCLUSTERING_H
#define CCLUSTERING_H

#include "CRandom.h"
#include "CMathLib.h"

class CClustering {
public:
    CClustering();
    CClustering(const CClustering& orig);
    virtual ~CClustering();
    
    int kMeans(int nPoint, int nVar, double *points, int kGroup);
    int kMedoid(int nPoint, int nVar, double *points, int kGroup);
    
    void remove();
private:
    int kGroup;
    int *sizeGroup;
    int *data;

};

#endif /* CCLUSTERING_H */

