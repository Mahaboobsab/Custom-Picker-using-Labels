//
//  ViewController.m
//  CustomPickerUsingThreeLabels
//
//  Created by test on 12/04/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *thirdLabel;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@property(strong, nonatomic)NSArray *firstArrayList;
@property(strong, nonatomic)NSArray *secondArrayList;
@property(strong, nonatomic)NSArray *thirdArrayList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.firstArrayList = @[@"Meheboob",@"Sachin",@"Dr.Apj Kalam",@"Sir.M V",@"SteveJobes"];
    
    self.secondArrayList  = @[@"iOS",@"Cricket",@"Aeronotics",@"Civil",@"Apple.Inc"];
    
    self.thirdArrayList = @[@"Karnataka",@"Maharashtra",@"Tamil Nadu",@"Mysore",@"America"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
if(component == 0)
{
  
    
    return self.firstArrayList.count;
}
else if(component == 1)
{
    return self.secondArrayList.count;
}
else if(component == 2)
{
    return self.thirdArrayList.count;
}
else{

    return 0;
}
    
    
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{

if(component == 0)
{
    self.firstLabel.text = [NSString stringWithFormat:@"Great Persons : %@",self.firstArrayList[row]];
    return  self.firstArrayList[row];
}
    else if(component == 1)
    {
        self.secondLabel.text = [NSString stringWithFormat:@"Their Feilds : %@",self.secondArrayList[row]];
        return  self.secondArrayList[row];
    }
    
    else if(component == 2)
    {
        self.thirdLabel.text = [NSString stringWithFormat:@"Their place : %@",self.thirdArrayList[row]];
        return  self.thirdArrayList[row];
    }
    else{
        return nil;
    }
}

@end
