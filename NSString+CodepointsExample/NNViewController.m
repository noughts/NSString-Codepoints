#import "NNViewController.h"
#import "NSString+Codepoints.h"


@implementation NNViewController



- (void)viewDidLoad{
    [super viewDidLoad];
	[self testFromString:@"𠮷野家"];
	[self testFromString:@"こんにちは😆😆"];
}


-(void)testFromString:(NSString*)test_str{
	NSLog( @"%d", test_str.length );
	NSLog( @"%d", test_str.codepoints );
//	NSLog( @"%@", [test_str toArrayOfUChars] );
	NSLog( @"%@", [[test_str toArrayOfUChars] componentsJoinedByString:@", "] );
	NSLog( @"%@", [test_str uCharAt:0] );
}




@end
