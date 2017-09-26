//
//  RegisterViewController.m
//  
//
//  Created by Bo-Rong Huang on 2017/1/14.
//
//

#import "RegisterViewController.h"
@import Firebase;

@interface RegisterViewController ()

@end

@implementation RegisterViewController

{
    NSString *email;
    
    NSString *password;
}

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
}


- (IBAction)btnRegister:(UIButton *)sender {
    
    email = _textAccount.text;
    password = _textCode.text;
    
    if ([_textAccount.text isEqualToString:@""] || [_textCode.text isEqualToString:@""]){
        return;
    } else {
        
        [[FIRAuth auth] createUserWithEmail: email password: password completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
            
            if (error){
                NSLog(@"%@",error);
            }
            
        }];
    }
    
    
    
}



@end
