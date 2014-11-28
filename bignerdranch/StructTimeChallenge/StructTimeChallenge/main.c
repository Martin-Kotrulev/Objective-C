//
//  main.c
//  StructTimeChallenge
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    long seccondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", seccondsSince1970);
    long fourMillionSecDate = 4000000000;
    
    struct tm now;
    localtime_r(&seccondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min,
           now.tm_sec);
    
    struct tm date;
    localtime_r(&fourMillionSecDate, &date);
    printf("%d-%d-%d", date.tm_mday + 1, date.tm_mon + 1, date.tm_year + 1);
    return 0;
}
