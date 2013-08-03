//
//  NCSearchPreferenceController.h
//  NCSearchPreference
//
//  Created by sun on 13-7-27.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Preferences/Preferences.h>
@interface NCSearchPreferenceController : PSListController<PSController>
{
}
- (id)getValueForSpecifier:(PSSpecifier*)specifier;
- (void)setValue:(id)value forSpecifier:(PSSpecifier*)specifier;
- (void)followMeirtzTwitter:(PSSpecifier*)specifier;
- (void)followSuuTwitter:(PSSpecifier*)specifier;
- (void)followMeirtzWeibo:(PSSpecifier*)specifier;
- (void)followSuuWeibo:(PSSpecifier*)specifier;
- (void)visitWebSite:(PSSpecifier*)specifier;
- (void)makeDonation:(PSSpecifier*)specifier;
- (void)followBlueCocoaWeibo:(PSSpecifier*)specifier;
- (void)followBlueCocoaTwitter:(PSSpecifier *)specifier;

@end
@interface selectUIController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    UITableView *table;
    NSMutableArray *searchBars;
    NSMutableArray *dataForCell;
}
-(void)viewDidLoad;
@end