//
//  ManagerThatHateAnchovies.h
//  PizzaRestaurant
//
//  Created by Luiz on 5/3/19.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@class DeliveryService;
@interface MainManager : NSObject<KitchenDelegate>

@property (nonatomic, strong) DeliveryService * delivery;
//@property (nonatomic ) DeliveryService * deliverService;
@end

NS_ASSUME_NONNULL_END
