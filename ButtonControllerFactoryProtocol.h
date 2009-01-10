#import "ButtonController.h" // Wouldn't it be nice if this was a protocol too?

@protocol ButtonControllerFactoryProtocol

-(ButtonController*) createButtonControllerForCell: cell at: (CGPoint) point sizeOf: (CGRect) rect;

@end
