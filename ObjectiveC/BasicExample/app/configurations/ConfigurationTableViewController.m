//
//  ConfigurationViewcontrollerViewController.m
//  BasicExample
//
//  Created by Kaushlendra Pal on 03/05/20.
//

#import "ConfigurationTableViewController.h"
#import "ViewController.h"

@interface ConfigurationTableViewController () <UITableViewDelegate, UITableViewDataSource> {
    NSMutableArray * mediaConfigrations;
}
@property NSMutableArray* tableDataSource;
@property IBOutlet UITableView* tableView;

@end

@implementation ConfigurationTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self crateDataSource];
    [self configureMediaAdTagSource];
    [self registerTableCellIdentifier];
    [self.tableView reloadData];
    self.title = @"Choose Media config for AdTagURL";
}

- (void)crateDataSource {
    self.tableDataSource = [[NSMutableArray alloc]init];
    [self.tableDataSource addObject: @"Roudies season 18 episode 7 Ad tag URL"];
    [self.tableDataSource addObject: @"Roudies season 18 episode 6 Ad tag URL"];
    [self.tableDataSource addObject: @"Roudies season 18 episode 5 Ad tag URL"];
    [self.tableDataSource addObject: @"Roudies season 18 episode 4 Ad tag URL"];
    [self.tableDataSource addObject: @"SplitVilla season 12 episode 1 Ad tag URL"];
}

// mock Ad tag url with media content for playback selection.
- (void) configureMediaAdTagSource {
    mediaConfigrations = [[NSMutableArray alloc]init];
    //
    MediaConfig *adConfig1 = [[MediaConfig alloc] init];
    adConfig1.mediaSourceURL = @"https://cdnapisec.kaltura.com/p/1982551/sp/198255100/playManifest/protocol/https/entryId/0_q15swipk/format/applehttp/tags/tv/f/a.m3u8";
    adConfig1.adTagURL = @"https://pubads.g.doubleclick.net/gampad/live/ads?sz=1920x1080&iu=/21633895671/QA/apple_tv/MTV&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=distinct_id%3DjiU0phQzr0gAZxAjJOuVhjr56HG3%26sample_ar%3Dskippablelinear%26Gender%3DM%26Age%3D14%26AppVersion%3D2.2.2%26OSVersion%3D13.3%26OptOut%3DFalse%26PackageName%3Dcom.viacom18.voottvosdev%26DeviceModel%3DSimulator%20Apple%20TV%204K%26first_time%3Dfalse%26logintype%3DNative&cmsid=2510338&ppid=jiU0phQzr0gAZxAjJOuVhjr56HG3&vid=0_q15swipk&correlator=3040344&description_url=https://www.voot.com&InterstitialRendered=False";
    [mediaConfigrations addObject:adConfig1];
    
    // Roudies s18e6
    MediaConfig *adConfig2 = [[MediaConfig alloc] init];
    adConfig2.mediaSourceURL = @"https://cdnapisec.kaltura.com/p/1982551/sp/198255100/playManifest/protocol/https/entryId/0_uuel9u8v/format/applehttp/tags/tv/f/a.m3u8";
    adConfig2.adTagURL = @"https://pubads.g.doubleclick.net/gampad/live/ads?sz=1920x1080&iu=/21633895671/QA/apple_tv/MTV&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=distinct_id=judBw77VOhUW2zUZTEGFA7KZGnq2&sample_ar=skippablelinear&Gender=M&Age=15&AppVersion=2.2.1&OSVersion=13.3&OptOut=False&PackageName=com.viacom18.voottvosdev&DeviceModel=Simulator Apple TV 4K&first_time=false&logintype=Native&cmsid=2510338&ppid=judBw77VOhUW2zUZTEGFA7KZGnq2&vid=0_uuel9u8v&correlator=1620132&description_url=https://www.voot.com&InterstitialRendered=False";
    [mediaConfigrations addObject:adConfig2];
    
//    Roudies s18e5
    MediaConfig *adConfig3 = [[MediaConfig alloc] init];
    adConfig3.mediaSourceURL = @"https://cdnapisec.kaltura.com/p/1982551/sp/198255100/playManifest/protocol/https/entryId/0_rbdm0iq1/format/applehttp/tags/tv/f/a.m3u8";
    adConfig3.adTagURL = @"https://pubads.g.doubleclick.net/gampad/live/ads?sz=1920x1080&iu=/21633895671/QA/apple_tv/MTV&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=distinct_id%3DjudBw77VOhUW2zUZTEGFA7KZGnq2%26sample_ar%3Dskippablelinear%26Gender%3DM%26Age%3D15%26AppVersion%3D2.2.1%26OSVersion%3D13.3%26OptOut%3DFalse%26PackageName%3Dcom.viacom18.voottvosdev%26DeviceModel%3DSimulator%20Apple%20TV%204K%26first_time%3Dfalse%26logintype%3DNative&cmsid=2510338&ppid=judBw77VOhUW2zUZTEGFA7KZGnq2&vid=0_rbdm0iq1&correlator=7058133&description_url=https://www.voot.com&InterstitialRendered=False";
    [mediaConfigrations addObject:adConfig3];
    
    //Roudies s18e4
    MediaConfig *adConfig4 = [[MediaConfig alloc] init];
    adConfig4.mediaSourceURL = @"https://cdnapisec.kaltura.com/p/1982551/sp/198255100/playManifest/protocol/https/entryId/0_iqhb8qs0/format/applehttp/tags/tv/f/a.m3u";
    adConfig4.adTagURL = @"https://pubads.g.doubleclick.net/gampad/live/ads?sz=1920x1080&iu=/21633895671/QA/apple_tv/MTV&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=distinct_id%3DjudBw77VOhUW2zUZTEGFA7KZGnq2%26sample_ar%3Dskippablelinear%26Gender%3DM%26Age%3D15%26AppVersion%3D2.2.1%26OSVersion%3D13.3%26OptOut%3DFalse%26PackageName%3Dcom.viacom18.voottvosdev%26DeviceModel%3DSimulator%20Apple%20TV%204K%26first_time%3Dfalse%26logintype%3DNative&cmsid=2510338&ppid=judBw77VOhUW2zUZTEGFA7KZGnq2&vid=0_iqhb8qs0&correlator=6316240&description_url=https://www.voot.com&InterstitialRendered=False";
    [mediaConfigrations addObject:adConfig4];
    
    //Split vila  s12e1
    MediaConfig *adConfig5 = [[MediaConfig alloc] init];
    adConfig5.mediaSourceURL = @"https://cdnapisec.kaltura.com/p/1982551/sp/198255100/playManifest/protocol/https/entryId/0_ywyb33ou/format/applehttp/tags/tv/f/a.m3u8";
    adConfig5.adTagURL = @"https://pubads.g.doubleclick.net/gampad/live/ads?sz=1920x1080&iu=/21633895671/QA/apple_tv/MTV&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=distinct_id%3DjudBw77VOhUW2zUZTEGFA7KZGnq2%26sample_ar%3Dskippablelinear%26Gender%3DM%26Age%3D15%26AppVersion%3D2.2.1%26OSVersion%3D13.3%26OptOut%3DFalse%26PackageName%3Dcom.viacom18.voottvosdev%26DeviceModel%3DSimulator%20Apple%20TV%204K%26first_time%3Dfalse%26logintype%3DNative&cmsid=2510338&ppid=judBw77VOhUW2zUZTEGFA7KZGnq2&vid=0_ywyb33ou&correlator=6852807&description_url=https://www.voot.com&InterstitialRendered=False";
    [mediaConfigrations addObject:adConfig5];
    
}



- (void) registerTableCellIdentifier {
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"ConfigurationTableViewCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableDataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ConfigurationTableViewCell" forIndexPath:indexPath];
    NSString * title = self.tableDataSource[indexPath.row];
    [cell.textLabel setText: title];
    
    return  cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger rowIndex = indexPath.row;
    [self routeToPlaybackviewController: rowIndex];
}

- (void) routeToPlaybackviewController:(NSInteger ) rowIndex {
    MediaConfig *mediaConfig = mediaConfigrations[rowIndex];
    ViewController * playbackViewController = [[ViewController alloc] init];
    playbackViewController.adConfig = mediaConfig;
    [self.navigationController pushViewController:playbackViewController animated:true];
}

@end
