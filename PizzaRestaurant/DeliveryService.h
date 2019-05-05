//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainManager.h"
#import "DeliveryCar.h"


NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject {
@protected NSMutableArray * deliveryRecords;
}

//Static Methods
//Singleton
+ (instancetype)sharedInstance;

//Methods
- (NSArray*) descriptionOfDeliveredPizzas;
-(void) deliverPizza:(Pizza *)pizza;

//Properties

@end

NS_ASSUME_NONNULL_END
