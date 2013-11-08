#import "ViewController.h"

#import "LineScrollView.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    LineScrollView* lineScrollView = [[LineScrollView alloc] init];
    lineScrollView.clipsToBounds = NO;          // Change it to YES
    lineScrollView.frame = CGRectMake(300, 200, 160, 50);
    [self.view addSubview: lineScrollView];

    
    for (int i = 0; i < 4; i ++) {
        UILabel* label = [[UILabel alloc] init ];
        label.text = [NSString stringWithFormat:@"%d", 0];      // 0 change it to i
        label.frame = CGRectMake(i * 80, 0, 100, 50);
        [lineScrollView.contentView addSubview: label];
    }
    
    lineScrollView.layer.borderColor = [[UIColor blackColor] CGColor];
    lineScrollView.layer.borderWidth = 1.0f;
    
}


@end
