//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@interface DeliveryService()
//Private Properties
//@property  (strong, nonatomic )  NSMutableArray * deliveryRecords;
@end

@implementation DeliveryService

//singleton
+ (instancetype)sharedInstance {
    static DeliveryService *sharedInstance = nil;
    static dispatch_once_t onceToken;

    dispatch_once(&onceToken, ^{
        sharedInstance = [[DeliveryService alloc] init];
    });
    return sharedInstance;
}


-(void) deliverPizza:(Pizza *)pizza {

    if(! deliveryRecords){
        deliveryRecords = [NSMutableArray new];
    }
    NSString *trimmidedPizzaDescription = [pizza.description stringByTrimmingCharactersInSet: NSCharacterSet .newlineCharacterSet];

    [deliveryRecords addObject: trimmidedPizzaDescription];
    DeliveryCar * deliveryCar = [DeliveryCar new];
    [deliveryCar deliverPizza: pizza];


}

- (NSString*) descriptionOfDeliveredPizzas {
    NSMutableString *records = [NSMutableString new];
    [records appendString:@"Delivery service records: \n"];

    for (NSString *record in deliveryRecords) {
        [records appendFormat:@"%@ \n", [record stringByTrimmingCharactersInSet:NSCharacterSet .newlineCharacterSet]];
    }


    return records;
}
@end
