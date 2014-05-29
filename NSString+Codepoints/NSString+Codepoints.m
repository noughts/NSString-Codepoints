//
//  NSString+Codepoints.m
//  NSString+CodepointsExample
//
//  Created by noughts on 2014/05/29.
//  Copyright (c) 2014年 noughts. All rights reserved.
//

#import "NSString+Codepoints.h"

@implementation NSString (Codepoints)


-(int)codepoints{
	__block int length = 0;
	[self enumerateSubstringsInRange:NSMakeRange(0, self.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
//		NSLog( @"%@ %@ %@", substring, NSStringFromRange(substringRange), NSStringFromRange(enclosingRange) );
		length++;
	}];
	return length;
}


-(NSArray*)toArrayOfUChars{
	NSMutableArray* uchars = [@[] mutableCopy];
	[self enumerateSubstringsInRange:NSMakeRange(0, self.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
		[uchars addObject:substring];
	}];
	return uchars;
}

-(NSString*)uCharAt:(int)n{
	return [self toArrayOfUChars][n];
}



@end
