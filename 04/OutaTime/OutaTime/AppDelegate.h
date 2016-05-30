//
//  AppDelegate.h
//  OutaTime
//
//  Created by Taylor Frost on 5/26/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>  {
    
    AVAudioPlayer *audioPlayer;
}

@property (strong, nonatomic) UIWindow *window;


@end

