//
//  BNRContainer.m
//  RandomItems
//
//  Created by Andrei Nechaev on 3/29/14.
//  Copyright (c) 2014 Andrei Nechaev. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initContainerWithName:(NSString *)name
{
    self = [super init];
    
    if (self) {
        _nameOfContainer = name;
        _containerOfItems = [[NSMutableArray alloc] init];
        _valueInDollars = 0;
        _list = @"";
    }
    
    return self;
}

- (void)setNameOfContainer:(NSString *)name
{
    _nameOfContainer = name;
}

- (NSString *)nameOfContainer
{
    return _nameOfContainer;
}

- (void)setItemToContainer:(BNRItem *)item
{
    [_containerOfItems addObject:item];
}
- (NSMutableArray *)containerOfItems
{
    return _containerOfItems;
}

- (NSMutableArray *)listItems
{
    _listItems = [NSMutableArray array];
    
    for (BNRItem *i in [self containerOfItems]){
        [_listItems addObject:i];
    }
    
    return _listItems;
}


- (NSString *)list
{
    for (BNRItem *item in self.containerOfItems){
        NSString *name = [item itemName];
        _list = [_list stringByAppendingFormat:@"%@ | ", name];
    }
   
    return _list;
}

- (int)valueInDollars
{
    return  super.valueInDollars += self.sumPriceOfItems;
}



- (int)sumPriceOfItems
{
    int sum = 0;
    for (BNRItem *item in self.containerOfItems){
        int i = item.valueInDollars;
        sum = sum + i;
    }
    return sum;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Name: %@,\n Worth of whole items: $%d : %@. Container's price: $%d,\n List of them: \n%@",
            self.nameOfContainer,
            self.sumPriceOfItems,
            self.list,
            self.valueInDollars,
            self.listItems];
}
@end
