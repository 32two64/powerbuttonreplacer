#import "RootViewController.h"

@implementation RootViewController
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor blackColor];
powerLabel = [[UILabel alloc] init];
powerLabel.text= @"Power Off";
powerLabel.textColor = [UIColor greenColor];
powerLabel.frame = CGRectMake(35,200,150,80);
[self.view addSubview:powerLabel];
rbLabel = [[UILabel alloc] init];
rbLabel.text = @"Reboot Device";
rbLabel.textColor = [UIColor greenColor];
rbLabel.frame = CGRectMake(35,320,150,80);
[self.view addSubview:rbLabel];
UIButton *but= [[UIButton alloc] init];
but = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
[but setBackgroundImage:[UIImage imageNamed:@"img1.png"] forState:UIControlStateNormal];
[but addTarget:self action:@selector(offpressed) forControlEvents:UIControlEventTouchUpInside];
 but.frame =CGRectMake(160, 200, 80, 80);

[self.view addSubview:but];

UIButton *but2= [[UIButton alloc] init];
but2 = [[UIButton buttonWithType:UIButtonTypeCustom] retain];
[but2 setBackgroundImage:[UIImage imageNamed:@"img2.png"] forState:UIControlStateNormal];
[but2 addTarget:self action:@selector(rbpressed) forControlEvents:UIControlEventTouchUpInside];
 but2.frame =CGRectMake(160, 320, 80, 80);

[self.view addSubview:but2];

navBar = [[UINavigationBar alloc] init];
navBar.frame = CGRectMake(0,0,self.view.frame.size.width,44);
UINavigationItem *title = [[[UINavigationItem alloc] initWithTitle:@"Home"]autorelease];
navBar.items = [NSArray arrayWithObject:title];
navBar.barStyle= UIBarStyleDefault;
[self.view addSubview:navBar];

aboutLabel = [[UILabel alloc] init];
aboutLabel.text= @"By Adam Kazma & Omar Chehab";
aboutLabel.textColor = [UIColor whiteColor];
aboutLabel.frame = CGRectMake(55,500,600,200);
[self.view addSubview:aboutLabel];

UIBarButtonItem*rightButton = [[[UIBarButtonItem alloc] initWithTitle:@"Source Code" style:UIBarButtonItemStyleDone target:self action:@selector(GetSrcCode)] autorelease];
title.rightBarButtonItem = rightButton;

UIBarButtonItem*leftButton = [[[UIBarButtonItem alloc] initWithTitle:@"About" style:UIBarButtonItemStyleDone target:self action:@selector(aboutPressed)] autorelease];
title.leftBarButtonItem = leftButton;
}
-(void) offpressed {
system("halt");
}
-(void) rbpressed {
system("reboot");
}
-(void) aboutPressed { 
UIAlertView *redalert = [[UIAlertView alloc] initWithTitle:@"Power Button Replacement Tool"
    message:@"Open-source Shutdown Utility/Boot Manager by Adam Kazma & Omar Chehab"
    delegate:self
    cancelButtonTitle:@"Okay"
    otherButtonTitles:nil];
[redalert show];
[redalert release];
}
-(void) GetSrcCode {
    [[UIApplication sharedApplication] 
        openURL:[NSURL URLWithString: @"https://github.com/AdamK100/powerbuttonreplacer"]];
}


@end

