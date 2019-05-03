//
//  InputOutputController.m
//  PizzaRestaurant
//
//  Created by Luiz on 5/2/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "InputOutputController.h"

@implementation InputOutputController

+ (PizzaSize)convertStringToPizzaSize: (NSString *)size {
    BOOL isSmall = [[size lowercaseString] isEqualToString: @"small"];
    BOOL isMedium = [[size lowercaseString] isEqualToString: @"medium"];
    BOOL isLarge = [[size lowercaseString] isEqualToString: @"large"];
    if (isSmall) return small;
   
    if (isMedium) return medium;
    
    if (isLarge) return large;

    return unknown;
}

+(NSString*) stringFromInput{
    char inputChar[255];
    
    fgets(inputChar, 255, stdin);
    NSString *response = [[NSString stringWithCString:inputChar
                                             encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet: NSCharacterSet.whitespaceAndNewlineCharacterSet];
    return response;
};

+(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@", promptString);
    char inputChar[255];
    
    fgets(inputChar, 255, stdin);
    NSString *response = [[NSString stringWithCString:inputChar
                                             encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet: NSCharacterSet.whitespaceAndNewlineCharacterSet];
    return response;
}
@end
