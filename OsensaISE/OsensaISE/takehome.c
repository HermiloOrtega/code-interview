//
//  takehome.c
//  OsensaISE
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-26.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//
/*
 Write a C Program that takes as an input a comma-separated values (CSV) file that contains rows of
 UNIX time, temperature, other stuff 1, other stuff 2, ...
 and outputs the following text file (filled in correctly of course!):*/

 /*====================================================
 OSENSA Junior Software Engineer Take-fome Assignment
 Written by: Jose Hermilo Ortega Martinez
 ====================================================
 Statistical summary of temperature data:
    Mean (Media):
    Median (Mediana):
    Mode (Moda):
    Max (Max):
    Min (Min):
    Stdev (Stdev):
 ====================================================*/
 
 /*Things to assume:
    - The temperature values are floating point number in Kelvin
    - The first row of the CSV file contains header information that you'll need to ignore
    - You don't know how many items will follow the temperature column
    - The file could contain errors of be corrupt and your program should deal with them gracefully
    - You can easily generate CSV files for testing by exporting to CSV in Excel
 
 Your code shold be written in a single file called "Takehome.c" and I sould be able to compile
 and run it using gcc. It should ONLY use standard C library files.
 
 Submit your code to *******@******* before midnight on Sunday
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define _CANDIDATE_ "Jose Hermilo Ortega Martinez"
#define _KELVINS_ 273.15
#define _SIZE_ 1024
#define _INITIAL_SIZE_ 0
#define _INITIAL_CAPACITY_ 0

float* chargeFile(int size, int capacity, float *dataTemperatures);
void showResults(float *dataTemperatures);
void exportResult(void);

float calculateMean(float *dataTemperatures);
float calculateMedian(float *dataTemperatures);
float calculateMode(float *dataTemperatures);
float calculateMax(float *dataTemperatures);
float calculateMin(float *dataTemperatures);
float calculateStdev(float *dataTemperatures);

float convertKelvinToCelcius    (float kelvins){ return kelvins-_KELVINS_;          }
float convertKelvinToFahrenheit (float kelvins){ return (kelvins-_KELVINS_)*9/5+32; }

int main() {
    int size     = _INITIAL_SIZE_;
    int capacity = _INITIAL_CAPACITY_;
    float *dataTemperatures = malloc(_INITIAL_CAPACITY_ * sizeof(int));
    char option;
    do {
        printf("\n==== Menu ====\n");
        printf("1: Charge file\n");
        printf("2: Show Results\n");
        printf("3: Export Results\n");
        printf("4: Exit\n");
        printf("Choose one option (type the number): \n");
        scanf("%c",&option);
        switch (option) {
            case '1': dataTemperatures = chargeFile(size, capacity, dataTemperatures);   break;
            case '2': showResults(dataTemperatures);  break;
            case '3': exportResult(); break;
            case '4': return(0);      break;
            default: printf("Wrong option, please type again the number of your option"); break;
        }
        while( option!='\n' && (option=getchar())!='\n' && option!= EOF);
    }while (1);
    return(0);
}

float* push(float *arr, int index, float value, int *size, int *capacity){
     if(*size > *capacity){
          realloc(arr, sizeof(arr) * 2);
          *capacity = sizeof(arr) * 2;
     }
     arr[index] = value;
     *size = *size + 1;
    return arr;
}
float* chargeFile(int size, int capacity, float *dataTemperatures){
    char buf[_SIZE_],
         token[_SIZE_];
    int  row_count        = 0,
         fieldIndex       = 0,
         in_double_quotes = 0,
         token_pos        = 0,
         i                = 0,
         array_index      = 0;
    
    FILE *fp = fopen("/Users/hermilo/Desktop/temperatureReportOK.csv", "r");
    if (!fp) {
        printf("Can't open file\n");
        return NULL;
    }
    while (fgets(buf, _SIZE_, fp)) {
        row_count++;
        if (row_count == 1) continue; // Ignore first row
        fieldIndex = 0;
        i = 0;
        do {
            token[token_pos++] = buf[i];
            if (!in_double_quotes && (buf[i] == ',' || buf[i] == '\n')) {
                token[token_pos - 1] = 0;
                token_pos = 0;
                if (fieldIndex == 1){
                    dataTemperatures = push(dataTemperatures, array_index, atof(token), &size, &capacity);
                    array_index++;
                }
                fieldIndex++;
            }
            if (buf[i] == '"' && buf[i + 1] != '"') {
                token_pos--;
                in_double_quotes = !in_double_quotes;
            }
            if (buf[i] == '"' && buf[i + 1] == '"')
                i++;
        } while (buf[++i]);
    }
    fclose(fp);
    printf("The file has been charged...");
    return dataTemperatures;
}

void showResults(float *dataTemperatures){
    printf("\n====================================================\n");
    printf("OSENSA Junior Software Engineer Take-fome Assignment\n");
    printf("Written by: %s\n", _CANDIDATE_);
    printf("====================================================\n");
    printf("Statistical summary of temperature data:\n");
    printf("Mean: %.2f\n",calculateMean(dataTemperatures));
    printf("Median: %.2f\n",calculateMedian(dataTemperatures));
    printf("Mode: %.2f\n",calculateMode(dataTemperatures));
    printf("Max: %.2f\n",calculateMax(dataTemperatures));
    printf("Min: %.2f\n",calculateMin(dataTemperatures));
    printf("Stdev: %.2f\n",calculateStdev(dataTemperatures));
    printf("====================================================\n");
}

float calculateMean     (float *dataTemperatures) {
    
    return 1;
}
float calculateMedian   (float *dataTemperatures) {
    return 2;
}
float calculateMode     (float *dataTemperatures) {
    return 3;
}
float calculateMax      (float *dataTemperatures) {
    return 4;
}
float calculateMin      (float *dataTemperatures) {
    return 5;
}
float calculateStdev    (float *dataTemperatures) {
    return 6;
}

void exportResult(void){
    printf("Export Results");
}
