//
//  ViewController.m
//  audio_in_background
//
//  Created by Tiwari, Kanchan Kumar (Cognizant) on 24/09/21.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>
@interface ViewController (){
    AVAudioPlayer *audioplayer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    NSError *err;
    [super viewDidLoad];
    NSString *strpath =[[NSBundle mainBundle]pathForResource:@"I_tried_so_hard" ofType:@"mp3"];
    NSURL *url = [NSURL URLWithString:strpath];
    audioplayer =[[AVAudioPlayer alloc]initWithContentsOfURL:url error:&err];
    if(err){
        NSLog(@"Error : %@",[err localizedDescription]);
    }else{
        [audioplayer prepareToPlay];
    }
    
}


- (IBAction)volumne:(id)sender {
    if(audioplayer){
        audioplayer.volume=[(UISlider *)sender value];
    }
}

- (IBAction)stop:(id)sender {
    if(audioplayer){
    [audioplayer stop];
        
    }
}

- (IBAction)button_audio:(id)sender {
    [audioplayer play];
}
@end
