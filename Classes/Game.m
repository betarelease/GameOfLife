#import "Game.h"

@implementation Game

-(id<BoardProtocol>)board {
	return myBoard;
}

-(void) setBoard:(id<BoardProtocol>) board {
	myBoard = board;
}

-(void) advanceGeneration {
	GOLBoard* unchangedBoard = [[GOLBoard alloc] init];
	[unchangedBoard copyBoard: myBoard];
	for(int x=0; x < [unchangedBoard columns]; x++) {
		
		for(int y=0; y < [unchangedBoard rows]; y++) {
			int living_neighbors = [unchangedBoard livingNeighborsAt: x by: y];
			if(living_neighbors < 2 || living_neighbors > 3)
				[myBoard killCellAt: x by: y];
			else if(living_neighbors == 3)
				[myBoard bringToLifeAt: x by: y];
		}
	}
}


@end
