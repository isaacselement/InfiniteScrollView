#import "LineScrollView.h"

@implementation LineScrollView

@synthesize contentView;


#define CONTENT_WIDTH 5000       // make it as 500 , to find out what happened
#define CONTENT_HEIGHT 100

- (id)init
{
    self = [super init];
    if (self) {
        self.contentSize = CGSizeMake(CONTENT_WIDTH, CONTENT_HEIGHT);
        contentView = [[UIView alloc] init];
        contentView.frame = CGRectMake(0, 0, CONTENT_WIDTH, CONTENT_HEIGHT);
        [self addSubview: contentView];
        
        contentView.backgroundColor = [UIColor grayColor];
        
        self.delegate = self;
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    if (self.contentOffset.x != 0) [self recenterIfNecessary];
}

// recenter content periodically to achieve impression of infinite scrolling
- (void)recenterIfNecessary
{
    CGFloat scrollOffsetMaxX = self.contentSize.width - self.bounds.size.width;
    CGFloat centerOffsetX = scrollOffsetMaxX / 2.0;                             // the center
    CGFloat distanceFromCenter = fabs(self.contentOffset.x - centerOffsetX);

    if (distanceFromCenter > (self.contentSize.width / 4.0))  // the 1/2 center
    {
        self.contentOffset = CGPointMake(centerOffsetX, self.contentOffset.y);  // back to center
    }
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
}

@end
