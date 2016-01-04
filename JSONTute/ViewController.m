//
//  ViewController.m
//  JSONTute
//
//  Created by Nipuna H Herath on 12/21/15.
//  Copyright © 2015 Nipuna H Herath. All rights reserved.
//

#import "ViewController.h"
#import "AFHTTPSessionManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"http://jsonplaceholder.typicode.com/albums" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
       // NSLog(@"JSON: %@", responseObject);
        self.data = responseObject;
       // NSLog(@"data: %@",self.data);
        
        NSString *index0 = [self.data objectAtIndex:0];
        NSLog(@"Object at index 0 : %@",index0);
        
        NSString *index0Title = [[self.data objectAtIndex:0] objectForKey:@"title"];
        NSLog(@"Object 0 Title : %@", index0Title);
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
