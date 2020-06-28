//
//  takehome.c
//  OsensaISE
//
//  Created by Jose Hermilo Ortega Martinez on 2020-06-26.
//  Copyright © 2020 Jose Hermilo Ortega Martinez. All rights reserved.
//

//#define _PATH_ "/Users/hermilo/Desktop/temperatureReportError.csv" // CHANGE THIS PATH TO TEST DIFFERENT FILES
#define _PATH_ "/Users/hermilo/Desktop/temperatureReportOK.csv" // CHANGE THIS PATH TO TEST DIFFERENT FILES

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#define _CANDIDATE_ "Jose Hermilo Ortega Martinez"
#define _KELVIN_ 273.15
#define _SIZE_ 1024
#define _INITIAL_SIZE_ 0
#define _INITIAL_CAPACITY_ 0

int     _size             = _INITIAL_SIZE_;
int     _capacity         = _INITIAL_CAPACITY_;

/// function to resize the array of temperatures
/// @param arr array of data
/// @param index index where the function will allocate the value
/// @param value new value to store in the array
float* push                  (float *arr, int index, float value){
    if(_size > _capacity){
        realloc(arr, sizeof(arr) * 2);
        _capacity = sizeof(arr) * 2;
    }
    arr[index] = value;
    _size = _size + 1;
    return arr;
}

/// function to charge information from the csv file
/// @param dataTemperatures empty array of temperatures to fill with the csv file
float* chargeFile            (float *dataTemperatures){
    _size     = _INITIAL_SIZE_;
    _capacity = _INITIAL_CAPACITY_;
    char buf[_SIZE_],
         token[_SIZE_];
    int  row_count        = 0,
         fieldIndex       = 0,
         in_double_quotes = 0,
         token_pos        = 0,
         i                = 0,
         array_index      = 0,
         chargeFile       = 1;
    
    FILE *fp = fopen(_PATH_, "r");
    
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
            if (buf[i] != '1' && buf[i] != '2' && buf[i] != '3' && buf[i] != '4' && buf[i] != '5' &&
                buf[i] != '6' && buf[i] != '7' && buf[i] != '8' && buf[i] != '9' && buf[i] != '0' &&
                buf[i] != ',' && buf[i] != '\r' && buf[i] != '\n' && buf[i] != '.'){
                chargeFile = 0;
                break;
            }
            if (!in_double_quotes && (buf[i] == ',' || buf[i] == '\n')) {
                token[token_pos - 1] = 0;
                token_pos = 0;
                if (fieldIndex == 1){
                    dataTemperatures = push(dataTemperatures, array_index, atof(token));
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
        if (chargeFile == 0) break;
    }
    fclose(fp);
    if (chargeFile == 1) {
        printf("The file has been charged...");
        return dataTemperatures;
    } else{
        char indicator[i];
        for (int j = 0; j <= i; j++) indicator[j]=(j==i)?'^':' ';
        printf("\nError in the line number %d\n%s%s\nPlease check the line above in the file\n", row_count, buf,indicator);
        return NULL;
    }
}

/// function to short the data of temperatures
/// @param dataTemperatures array with all the temperatures unsorted
float* sortDataTemperatures  (float *dataTemperatures){
    float temp=0;
    for(int i=0 ; i<_size ; i++) {
        for(int j=0 ; j<_size-1 ; j++) {
            if(dataTemperatures[j]>dataTemperatures[j+1]) {
                temp                  = dataTemperatures[j];
                dataTemperatures[j]   = dataTemperatures[j+1];
                dataTemperatures[j+1] = temp;
            }
        }
    }
    return dataTemperatures;
}

/// funtion to sum datas from the temperature array
/// @param dataTemperatures array of temperatures
float  sumDataTemperatures   (float *dataTemperatures){
    float sum = 0;
    for (int i = 0; i < _size; i++){
        sum = sum + dataTemperatures[i];
    }
    return sum;
}

/// funtion to sum the power base 2 of the rest of temperature less mean
/// @param dataTemperatures array of temperatures
/// @param mean mean of temperature
float  sumTemperatureLessMean(float *dataTemperatures, float mean){
    float sumTempMean = 0;
    for (int i = 0; i < _size; i++) {
        sumTempMean = sumTempMean + pow((dataTemperatures[i] - mean),2);
    }
    return sumTempMean;
}

/// function to calculate mean
/// @param sum sum of temperatures
float calculateMean     (float sum) {
    return sum / _size;
}

/// function to calculate median
/// @param dataTemperatures array of temperatures
float calculateMedian   (float *dataTemperatures) {
    return (_size%2!=0)?dataTemperatures[_size/2]:((dataTemperatures[(_size/2)-1]+dataTemperatures[(_size/2)])/2);
}

/// function to calculate the mode
/// @param dataTemperatures array of temperatures
float calculateMode     (float *dataTemperatures) { // O(2n)
    float mode = 0, maxCount = 0;
    for (int i = 0; i < _size; ++i){
        int count = 0;
        for (int j = 0; j < _size; ++j){
            if (dataTemperatures[j] == dataTemperatures[i]) ++count;
        }
        if (count > maxCount){
            maxCount = count;
            mode = dataTemperatures[i];
        }
        if (count == 1) {
            mode = 0;
        }
    }
    return mode;
}

/// function to calculate the max value
/// @param dataTemperatures array of temperatures
float calculateMax      (float *dataTemperatures) { // O(1)
    return dataTemperatures[_size - 1];
}

/// function to calculate the min value
/// @param dataTemperatures array of temperatures
float calculateMin      (float *dataTemperatures) { // O(1)
    return dataTemperatures[0];
}

/// function to calculate the standard derivation
/// @param dataTemperatures array of temperatures
/// @param mean mean of array of temperatures
float calculateStdev    (float *dataTemperatures, float mean) {
    return sqrt(sumTemperatureLessMean(dataTemperatures, mean) / (_size - 1));
}

/// function to convert kelvin to calcius
/// @param kelvin value in kelvin
float convertKelvinToCelcius    (float kelvin){ return kelvin-_KELVIN_;          }

/// funtion to convert kelvin to fahrenheit
/// @param kelvin value in kelvin
float convertKelvinToFahrenheit (float kelvin){ return (kelvin-_KELVIN_)*9/5+32; }


/// Funtion to show the results
/// @param dataTemperatures array with temperatures from the csv
void showResults(float *dataTemperatures){
    float *dataTemperaturesSorted = sortDataTemperatures(dataTemperatures);
    float sum     = sumDataTemperatures(dataTemperaturesSorted);
    float mean    = calculateMean(sum);
    float median  = calculateMedian(dataTemperaturesSorted);
    float mode    = calculateMode(dataTemperaturesSorted);
    float max     = calculateMax(dataTemperaturesSorted);
    float min     = calculateMin(dataTemperaturesSorted);
    float stdev   = calculateStdev(dataTemperaturesSorted, mean);
    printf("\n====================================================\n");
    printf("OSENSA Junior Software Engineer Take-fome Assignment\n");
    printf("Written by: %s\n", _CANDIDATE_);
    printf("====================================================\n");
    printf("Statistical summary of temperature data:\n");
    printf("Mean (°K): %.2f \t\t Mean (°C): %.2f \n", mean, convertKelvinToCelcius(mean));
    printf("Median (°K): %.2f\t\t Median (°C): %.2f \n", median, convertKelvinToCelcius(median));
    printf((mode == 0)?"Mode: N/A\n":"Mode (°K): %.2f \t\t Mode (°C): %.2f\n", mode, convertKelvinToCelcius(mode));
    printf("Max (°K): %.2f\t\t Max (°C): %.2f \n",max, convertKelvinToCelcius(median));
    printf("Min (°K): %.2f\t\t Min (°C): %.2f \n",min, convertKelvinToCelcius(median));
    printf("Stdev (°K): %.2f\t\t Stdev (°C): %.2f \n",stdev, convertKelvinToCelcius(median));
    printf("====================================================\n");
}

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
int main() {
    char option;
    float  *dataTemperatures = malloc(_INITIAL_CAPACITY_ * sizeof(int));
    do {
        printf("\n==== Menu ====\n");
        printf("1: Charge file\n");
        printf("2: Show Results\n");
        printf("3: Exit\n");
        printf("Choose one option (type the number): \n");
        scanf("%c",&option);
        switch (option) {
            case '1':
                dataTemperatures = chargeFile(dataTemperatures);
                if (dataTemperatures == NULL) dataTemperatures = malloc(_INITIAL_CAPACITY_ * sizeof(int));
                break;
            case '2': showResults(dataTemperatures);                    break;
            case '3': return(0);                                        break;
            default: printf("Wrong option, please type again the number of your option"); break;
        }
        while( option!='\n' && (option=getchar())!='\n' && option!= EOF);
    }while (1);
    return(0);
}
