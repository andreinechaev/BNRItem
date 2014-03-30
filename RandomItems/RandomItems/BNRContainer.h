//
//  BNRContainer.h
//  RandomItems
//
//  Created by Andrei Nechaev on 3/29/14.
//  Copyright (c) 2014 Andrei Nechaev. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem

{
    NSString *_nameOfContainer;
    NSMutableArray *_containerOfItems;
    NSMutableArray *_listItems;
    NSString *_list;
}

- (instancetype)initContainerWithName:(NSString *)name;

- (void)setNameOfContainer:(NSString *)name;
- (NSString *)nameOfContainer;

- (void)setItemToContainer:(BNRItem *)item;
- (NSMutableArray *)containerOfItems;

- (NSMutableArray *)listItems;

- (NSString *)list;

- (int)sumPriceOfItems;

@end
