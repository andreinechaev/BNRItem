//
//  main.m
//  RandomItems
//
//  Created by Andrei Nechaev on 3/29/14.
//  Copyright (c) 2014 Andrei Nechaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
 //       NSMutableArray *items = [[NSMutableArray alloc] init];
        
        //[items addObject:[BNRItem randomItem]];
//        
//        for (int i = 0; i < 3; i++) {
//            items[i] = [BNRItem randomItem];
//        }
//        
//        for (BNRItem *bnr in items){
//            NSLog(@"%@", bnr);
//            NSLog(@" ");
//        }
        
        BNRContainer *cont = [[BNRContainer alloc] initContainerWithName:@"Alpha"];
//        [cont setNameOfContainer:@"Omega"];
        [cont setItemToContainer:[BNRItem randomItem]];
        [cont setItemToContainer:[BNRItem randomItem]];
        [cont setItemToContainer:[BNRItem randomItem]];
        
        [cont setValueInDollars:150];
        NSLog(@"%@", cont);
        
        
    }
    return 0;
}

