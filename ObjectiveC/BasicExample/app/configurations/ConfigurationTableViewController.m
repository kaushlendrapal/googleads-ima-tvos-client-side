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
    [self.tableDataSource addObject: @"1th Ad tag URL"];
    [self.tableDataSource addObject: @"2th Ad tag URL"];
    [self.tableDataSource addObject: @"3th Ad tag URL"];
    [self.tableDataSource addObject: @"4th Ad tag URL"];
    [self.tableDataSource addObject: @"5th Ad tag URL"];
}

- (void) configureMediaAdTagSource {
    mediaConfigrations = [[NSMutableArray alloc]init];
    MediaConfig *adConfig1 = [[MediaConfig alloc] init];
    adConfig1.mediaSourceURL = @"https://rest-as.ott.kaltura.com/api_v3/service/assetFile/action/playManifest/partnerId/225/assetId/411909/assetType/media/assetFileId/2173108/contextType/PLAYBACK/ks/djJ8MjI1fKo7vVImc1lUwh6y-vdSa1h5d1MTJLl_So8ikBnWBqPyAS1To5JG2JMJZaqoHQ3MR3VHhQQeizyDM7mf13jJvSboQxQ258DTEKSelA66cg9mkRrtyIEZBAF7xLzeeJy9asdHV8KJnKgYcSibmTbLazl6uBLte5UYNBg1sMu10vFY4iTWrRNyh6ntw54tjuJjzhrNeVnvbstACyeQ3tMCppMy0_DlKcfX6II5LzNt9gRglowXsoyj1-3cYbr-Xent38QAiaNchq7mhvwpgF0vrxc=/a.m3u8";
    adConfig1.adTagURL = @"https://pubads.g.doubleclick.net/gampad/live/ads?sz=1920x1080&iu=/21633895671/QA/apple_tv/COH&ad_rule=1&impl=s&gdfp_req=1&env=vp&output=vmap&unviewed_position_start=1&cust_params=distinct_id%3DjiU0phQzr0gAZxAjJOuVhjr56HG3%26sample_ar%3Dskippablelinear%26Gender%3DM%26Age%3D14%26AppVersion%3D2.2.1%26OSVersion%3D13.3%26OptOut%3DFalse%26PackageName%3Dcom.viacom18.voottvosdev%26DeviceModel%3DSimulator%20Apple%20TV%204K%26first_time%3Dfalse%26logintype%3DNative&cmsid=2510338&ppid=jiU0phQzr0gAZxAjJOuVhjr56HG3&vid=0_umeuevxr&correlator=6170411&description_url=https://www.voot.com&InterstitialRendered=False";
    [mediaConfigrations addObject:adConfig1];
    
    MediaConfig *adConfig2 = [[MediaConfig alloc] init];
    adConfig2.mediaSourceURL = @"";
    adConfig2.adTagURL = @"";
    [mediaConfigrations addObject:adConfig1];
    
    MediaConfig *adConfig3 = [[MediaConfig alloc] init];
    adConfig3.mediaSourceURL = @"";
    adConfig3.adTagURL = @"";
    [mediaConfigrations addObject:adConfig1];
    
    MediaConfig *adConfig4 = [[MediaConfig alloc] init];
    adConfig4.mediaSourceURL = @"";
    adConfig4.adTagURL = @"";
    [mediaConfigrations addObject:adConfig1];
    
    MediaConfig *adConfig5 = [[MediaConfig alloc] init];
    adConfig5.mediaSourceURL = @"";
    adConfig5.adTagURL = @"";
    [mediaConfigrations addObject:adConfig1];
    
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
