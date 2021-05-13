//
//  ViewController.m
//  OCSimpleFactoryPattern
//
//  Created by Billie Ji on 2021/5/11.
//

#import "ViewController.h"
#import "OCCalcuteFactory.h"
@interface ViewController ()
@property (weak, nonatomic) UITextField *numberA;
@property (weak, nonatomic) UITextField *countTextField;
@property (weak, nonatomic) UITextField *numberB;
@property (weak, nonatomic) UILabel *resultTextfield;
@property (weak, nonatomic) UIButton *resultButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITextField *numberA = [[UITextField alloc]initWithFrame:CGRectMake(20, 100, 100, 30)];
    numberA.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:numberA];
    self.numberA = numberA;
    
    UITextField *countTextField = [[UITextField alloc]initWithFrame:CGRectMake(140, 100, 100, 30)];
    countTextField.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:countTextField];
    self.countTextField = countTextField;
    
    UITextField *numberB = [[UITextField alloc]initWithFrame:CGRectMake(260, 100, 100, 30)];
    numberB.borderStyle = UITextBorderStyleLine;
    [self.view addSubview:numberB];
    self.numberB = numberB;
    
    UILabel *resultTextfield = [[UILabel alloc]initWithFrame:CGRectMake(380, 100, 100, 30)];
    [resultTextfield setText:@"results"];
    [self.view addSubview:resultTextfield];
    self.resultTextfield = resultTextfield;
    
    UIButton *resultButton = [UIButton buttonWithType:UIButtonTypeSystem];
    resultButton.frame = CGRectMake(100, 160, 100, 30);
    [resultButton setTitle:@"calculate" forState:UIControlStateNormal];
    [self.view addSubview:resultButton];
    [resultButton addTarget:self action:@selector(calculateBtn:) forControlEvents:UIControlEventTouchUpInside];
    self.resultButton = resultButton;
}

- (void)calculateBtn:(id)sender {
    id<OCCalculate> cal;
    cal = [OCCalcuteFactory createCalcute:self.countTextField.text];
    cal.numberA = [self.numberA.text floatValue];
    cal.numberB = [self.numberB.text floatValue];
    CGFloat result =  [cal calculate];
    self.resultTextfield.text = [@(result) stringValue];
}

@end
