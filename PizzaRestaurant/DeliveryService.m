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
@property (strong, nonatomic) NSMutableArray * deliveryRecords;
@end

@implementation DeliveryService


-(void) deliverPizza:(Pizza *)pizza {

    if(!_deliveryRecords){
        _deliveryRecords = [NSMutableArray new];
    }
    NSString *trimmidedPizzaDescription = [pizza.description stringByTrimmingCharactersInSet: NSCharacterSet .newlineCharacterSet];

    [_deliveryRecords addObject: trimmidedPizzaDescription];
    DeliveryCar * deliveryCar = [DeliveryCar new];
    [deliveryCar deliverPizza: pizza];


}

- (NSArray*) descriptionOfDeliveredPizzas {
    NSMutableString *records = [NSMutableString new];
    [records appendString:@"Delivery service records: \n"];

    for (NSString *record in _deliveryRecords) {
        [records appendFormat:@"%@ \n", [record stringByTrimmingCharactersInSet:NSCharacterSet .newlineCharacterSet]];
    }


    return records;
}
@end
