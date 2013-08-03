//
//  NCSearchPreferenceController.m
//  NCSearchPreference
//
//  Created by sun on 13-7-27.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "NCSearchPreferenceController.h"
#import <Preferences/PSSpecifier.h>

#define kSetting_Example_Name @"NameOfAnExampleSetting"
#define kSetting_Example_Value @"ValueOfAnExampleSetting"

#define kSetting_TemplateVersion_Name @"TemplateVersionExample"
#define kSetting_TemplateVersion_Value @"1.0"

#define kSetting_Text_Name @"TextExample"
#define kSetting_Text_Value @"Go Red Sox!"

#define kUrl_VisitWebSite @"http://root.hk.xgisp.com/"
#define kUrl_MakeDonation @"https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=3255805@qq.com&lc=C2&item_name=NCSearch&currency_code=USD&bn=PP%2dDonationBF%3abtn_donate_SM%2egif%3aNonHosted"
#define kPrefs_Path @"/var/mobile/Library/Preferences"
#define kPrefs_Path1 @"/var/mobile/Library/Preferences/com.sa.ncsearchpreference.plist"
#define kPrefs_Path2 @"/var/mobile/Library/Preferences/com.sa.ncsearchpreferencenew.plist"
#define kPrefs_KeyName_Key @"key"
#define kPrefs_KeyName_Defaults @"defaults"
@implementation selectUIController
/*
- (void)doTransfer:(NSDictionary *)data{
    if ([data valueForKey:@"searchPage1"]  == nil) {
        [searchBars addObject:@"Baidu"];
    }else{
        [searchBars addObject:[@[@"Baidu",@"Google",@"Wikipedia",@"Bing"] objectAtIndex:[[data valueForKey:@"searchPage1"] integerValue]]];
    }
    
    if ([data valueForKey:@"searchPage2"]  == nil) {
        [searchBars addObject:@"Google"];
    }else{
        [searchBars addObject:[@[@"Baidu",@"Google",@"Wikipedia",@"Bing"] objectAtIndex:[[data valueForKey:@"searchPage2"] integerValue]]];
    }
    
    if ([data valueForKey:@"searchPage3"]  == nil) {
        [searchBars addObject:@"Wikipedia"];
    }else{
        [searchBars addObject:[@[@"Baidu",@"Google",@"Wikipedia",@"Bing"] objectAtIndex:[[data valueForKey:@"searchPage3"] integerValue]]];
    }
    
    if ([data valueForKey:@"searchPage4"]  == nil) {
        [searchBars addObject:@"Bing"];
    }else{
        [searchBars addObject:[@[@"Baidu",@"Google",@"Wikipedia",@"Bing"] objectAtIndex:[[data valueForKey:@"searchPage4"] integerValue]]];
    }
    [data setValue:searchBars forKey:@"New"];

}
- (void)viewDidLoad{
    NSDictionary *data = [[NSDictionary alloc] initWithContentsOfFile:kPrefs_Path1];
    if ([data valueForKey:@"NCS Ver"] == nil) {
        [data setValue:@"New" forKey:@"NCS Ver"];
        [self doTransfer:data];
        if (dataForCell == nil) {
            dataForCell = [[NSMutableArray alloc] init];
        }else{
            [dataForCell removeAllObjects];
        }
        dataForCell = [data valueForKey:@"New"];
    }else{
        if (dataForCell == nil) {
            dataForCell = [[NSMutableArray alloc] init];
        }else{
            [dataForCell removeAllObjects];
        }
        dataForCell = [data valueForKey:@"New"];
    }
    CGRect frame = self.view.frame;
    frame.origin.y -= 20;
    table = [[UITableView alloc] initWithFrame:frame style:UITableViewStyleGrouped];
    [table setDataSource:self];
    [table setDelegate:self];
    [self.view addSubview:table];
    [table setEditing:YES animated:NO];
    [self setTitle:@"Selete"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45.0;
}
- (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleNone;
}
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    if (sourceIndexPath != destinationIndexPath) {
        id object = [dataForCell objectAtIndex:sourceIndexPath.row];

        [dataForCell removeObjectAtIndex:sourceIndexPath.row];
        if (destinationIndexPath.row > [dataForCell count]) {
            [dataForCell addObject:object];
        }
        else {
            [dataForCell insertObject:object atIndex:destinationIndexPath.row];
        }
    }
    [table reloadData];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    [cell.textLabel setText:[dataForCell objectAtIndex:indexPath.row]];
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Selete searchengine";
}*/
- (void)viewDidLoad{
    NSDictionary *data = [[NSDictionary alloc] initWithContentsOfFile:kPrefs_Path1];
    //[self doTransfer:data];
    NSFileManager *manager = [NSFileManager defaultManager];
    if ([manager fileExistsAtPath:kPrefs_Path2]) {
        dataForCell = [[NSMutableArray alloc] initWithContentsOfFile:kPrefs_Path2];
    }else{
        if (searchBars == nil) {
            searchBars = [[NSMutableArray alloc] init];
        }else{
            [searchBars removeAllObjects];
        }
        if ([data valueForKey:@"searchPage1"]  == nil) {
            [searchBars addObject:@"Baidu"];
        }else{
            [searchBars addObject:[@[@"Baidu",@"Google",@"Wikipedia",@"Bing"] objectAtIndex:[[data valueForKey:@"searchPage1"] integerValue]]];
        }
        
        if ([data valueForKey:@"searchPage2"]  == nil) {
            [searchBars addObject:@"Google"];
        }else{
            [searchBars addObject:[@[@"Baidu",@"Google",@"Wikipedia",@"Bing"] objectAtIndex:[[data valueForKey:@"searchPage2"] integerValue]]];
        }
        
        if ([data valueForKey:@"searchPage3"]  == nil) {
            [searchBars addObject:@"Wikipedia"];
        }else{
            [searchBars addObject:[@[@"Baidu",@"Google",@"Wikipedia",@"Bing"] objectAtIndex:[[data valueForKey:@"searchPage3"] integerValue]]];
        }
        
        if ([data valueForKey:@"searchPage4"]  == nil) {
            [searchBars addObject:@"Bing"];
        }else{
            [searchBars addObject:[@[@"Baidu",@"Google",@"Wikipedia",@"Bing"] objectAtIndex:[[data valueForKey:@"searchPage4"] integerValue]]];
        }
        
        [searchBars writeToFile:kPrefs_Path2 atomically:YES];
        dataForCell = [NSMutableArray arrayWithArray:searchBars];
    }
    
    CGRect frame = self.view.frame;
    frame.origin.y -= 20;
    table = [[UITableView alloc] initWithFrame:frame style:UITableViewStyleGrouped];
    [table setDataSource:self];
    [table setDelegate:self];
    [self.view addSubview:table];
    [table setEditing:YES animated:NO];
    [self setTitle:@"prefs"];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45.0;
}
- (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath
{
    return NO;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleNone;
}
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    if (sourceIndexPath != destinationIndexPath) {
        id object = [dataForCell objectAtIndex:sourceIndexPath.row];
        
        [dataForCell removeObjectAtIndex:sourceIndexPath.row];
        if (destinationIndexPath.row > [dataForCell count]) {
            [dataForCell addObject:object];
        }
        else {
            [dataForCell insertObject:object atIndex:destinationIndexPath.row];
        }
    }
    [dataForCell writeToFile:kPrefs_Path2 atomically:YES];
}
- (void)doTransfer:(NSDictionary *)data{
    
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    [cell.textLabel setText:[dataForCell objectAtIndex:indexPath.row]];
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Selete searchengine";
}

@end

@implementation NCSearchPreferenceController

- (id)getValueForSpecifier:(PSSpecifier*)specifier
{
	id value = nil;
	
	NSDictionary *specifierProperties = [specifier properties];
	NSString *specifierKey = [specifierProperties objectForKey:kPrefs_KeyName_Key];
	
	// get 'value' with code only
	if ([specifierKey isEqual:kSetting_TemplateVersion_Name])
	{
		value = kSetting_TemplateVersion_Value;
	}
	else if ([specifierKey isEqual:kSetting_Example_Name])
	{
		value = kSetting_Example_Value;
	}
	// ...or get 'value' from 'defaults' plist or (optionally as a default value) with code
	else
	{
		// get 'value' from 'defaults' plist (if 'defaults' key and file exists)
		NSMutableString *plistPath = [[NSMutableString alloc] initWithString:[specifierProperties objectForKey:kPrefs_KeyName_Defaults]];
		if (plistPath)
		{
			NSDictionary *dict = (NSDictionary*)[self initDictionaryWithFile:&plistPath asMutable:NO];
			
			id objectValue = [dict objectForKey:specifierKey];
			
			if (objectValue)
			{
				value = [NSString stringWithFormat:@"%@", objectValue];
				NSLog(@"read key '%@' with value '%@' from plist '%@'", specifierKey, value, plistPath);
			}
			else
			{
				NSLog(@"key '%@' not found in plist '%@'", specifierKey, plistPath);
			}
			
		}
		
		// get default 'value' from code
		if (!value)
		{
			if ([specifierKey isEqual:kSetting_Text_Name])
			{
				value = kSetting_Text_Value;
			}
			else if ([specifierKey isEqual:kSetting_Example_Name])
			{
				value = kSetting_Example_Value;
			}
		}
	}
	
	return value;
}

- (void)setValue:(id)value forSpecifier:(PSSpecifier*)specifier;
{
	NSDictionary *specifierProperties = [specifier properties];
	NSString *specifierKey = [specifierProperties objectForKey:kPrefs_KeyName_Key];
	
	// use 'value' with code only
	if ([specifierKey isEqual:kSetting_Example_Name])
	{
		// do something here with 'value'...
	}
	// ...or save 'value' to 'defaults' plist and (optionally) with code
	else
	{
		// save 'value' to 'defaults' plist (if 'defaults' key exists)
		NSMutableString *plistPath = [[NSMutableString alloc] initWithString:[specifierProperties objectForKey:kPrefs_KeyName_Defaults]];
		if (plistPath)
		{
			NSMutableDictionary *dict = (NSMutableDictionary*)[self initDictionaryWithFile:&plistPath asMutable:YES];
			[dict setObject:value forKey:specifierKey];
			[dict writeToFile:plistPath atomically:YES];

			NSLog(@"saved key '%@' with value '%@' to plist '%@'", specifierKey, value, plistPath);
		}
		
		// use 'value' with code
		if ([specifierKey isEqual:kSetting_Example_Name])
		{
			// do something here with 'value'...
		}
	}
}
- (void)selectEngine:(PSSpecifier*)specifier{
    selectUIController *test = [[selectUIController alloc] init];
    [self pushController:test animate:YES];
}
- (id)initDictionaryWithFile:(NSMutableString**)plistPath asMutable:(BOOL)asMutable
{
	if ([*plistPath hasPrefix:@"/"])
		*plistPath = [NSString stringWithFormat:@"%@.plist", *plistPath];
	else
		*plistPath = [NSString stringWithFormat:@"%@/%@.plist", kPrefs_Path, *plistPath];
	
	Class class;
	if (asMutable)
		class = [NSMutableDictionary class];
	else
		class = [NSDictionary class];
	
	id dict;	
	if ([[NSFileManager defaultManager] fileExistsAtPath:*plistPath])
		dict = [[class alloc] initWithContentsOfFile:*plistPath];	
	else
		dict = [[class alloc] init];
	
	return dict;
}

- (void)followMeirtzTwitter:(PSSpecifier*)specifier
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.twitter.com/0xMeirtz"]];
}

- (void)followSuuTwitter:(PSSpecifier*)specifier
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.twitter.com/al1en_Suu"]];
}

- (void)followBlueCocoaTwitter:(PSSpecifier *)specifier
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.twitter.com/Bluecocoa_tw"]];
}

- (void)followMeirtzWeibo:(PSSpecifier*)specifier
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.weibo.com/freehacker"]];
}

- (void)followSuuWeibo:(PSSpecifier*)specifier
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.weibo.com/iamsuu"]];
}

- (void)followBlueCocoaWeibo:(PSSpecifier*)specifier
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.weibo.com/napensmallstar"]];
}

- (void)visitWebSite:(PSSpecifier*)specifier
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:kUrl_VisitWebSite]];
}

- (void)makeDonation:(PSSpecifier *)specifier
{
    selectUIController *tet = [[selectUIController alloc] init];
    [self pushController:tet animate:YES];
	//[[UIApplication sharedApplication] openURL:[NSURL URLWithString:kUrl_MakeDonation]];
}

- (id)specifiers
{
	if (_specifiers == nil)
		_specifiers = [self loadSpecifiersFromPlistName:@"NCSearchPreference" target:self];
	
	return _specifiers;
}

- (id)init
{
	if ((self = [super init]))
	{
	}
	
	return self;
}

@end