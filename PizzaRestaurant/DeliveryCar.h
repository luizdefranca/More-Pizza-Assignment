//
//  DeliveryCar.h
//  PizzaRestaurant
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Car.h"

NS_ASSUME_NONNULL_BEGIN


@interface DeliveryCar : NSObject

-(void) deliverPizza:(Pizza *)pizza;
@end

NS_ASSUME_NONNULL_END
