//
//  NSString+Codepoints.h
//  NSString+CodepointsExample
//
//  Created by noughts on 2014/05/29.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Codepoints)

-(int)codepoints;

-(NSArray*)toArrayOfUChars;

-(NSString*)uCharAt:(int)n;

@end
