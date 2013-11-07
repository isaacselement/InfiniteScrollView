#import "ViewController.h"

#import "LineScrollView.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    LineScrollView* lineScrollView = [[LineScrollView alloc] init];
    lineScrollView.clipsToBounds = NO;
    lineScrollView.frame = CGRectMake(300, 200, 200, 50);
    [self.view addSubview: lineScrollView];
    
    lineScrollView.layer.borderColor = [[UIColor blackColor] CGColor];
    lineScrollView.layer.borderWidth = 1.0f;
    
}


@end
