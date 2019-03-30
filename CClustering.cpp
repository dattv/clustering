/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   CClustering.cpp
 * Author: dat
 * 
 * Created on March 30, 2019, 11:46 AM
 */

#include <algorithm>

#include "CClustering.h"

CClustering::CClustering() {
}

CClustering::CClustering(const CClustering& orig) {
}

CClustering::~CClustering() {
}

void CClustering::remove()
{
    this->kGroup = 0;
    delete [] this->sizeGroup;
    delete [] this->data;
    return;
}

int CClustering::kMeans(int nPoint, int nVar, double* points, int kGroup)
{
    this->data = new int[nPoint];
    this->kGroup = kGroup;
    this->sizeGroup = new int [kGroup];
    for(int i = 0; i < kGroup; i++) this->sizeGroup[i] = 0;
    
    // allocate centroid of each group
    double *centroid = new double[nVar*kGroup];
    double *dist = new double[kGroup];
    
    // randomly choose K centroid points
    for(int i = 0; i < kGroup; i++)
    {
        int index = iRandom(0, nPoint - 1);
        
        for(int j = 0; j < nVar; j++) centroid[i*nVar + j] = points[index*nVar + j];
    }
    
    // 
    bool lContinue = 1;
    while(lContinue)
    {
        lContinue = 0;
        for(int k = 0; k < kGroup; k++) this->sizeGroup[k] = 0;
        
        // distribute all point in to group
        for(int i = 0; i < nPoint; i++)
        {
            for(int j = 0; j < kGroup; j++)
                dist[j] = distance2(nVar, &centroid[j*nVar], &points[i*nVar]);
            
            int min_ind = std::distance(dist, std::min_element(dist, (dist + kGroup)));
            
            this->sizeGroup[min_ind] ++;
            if (this->data[i] != min_ind)
            {
                lContinue = 1;
                this->data[i] = min_ind;
            }
            
        }
        
        // compute new centroid
        for(int k = 0; k < kGroup; k++)
            for(int i = 0; i < nVar; i++) centroid[k*nVar + i] = 0.e0;
        
        for(int i = 0; i < nPoint; i++)
        {
            int group_ind = this->data[i];
            for(int j = 0; j < nVar; j++) centroid[group_ind*nVar + j] += points[i*nVar + j];
        }
        for(int k = 0; k < kGroup; k++)
            for(int j = 0; j < nVar; j++) centroid[k*nVar + j] /= (double)this->sizeGroup[k];
        
    }
    
    delete [] centroid;
    delete [] dist;
    return 0;
}

int CClustering::kMedoid(int nPoint, int nVar, double* points, int kGroup)
{
    
    return 0;
}

