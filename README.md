# LYMethodChaining
常用类的一些method chaining整理

* `iOS8.0` `Objective_C`

* pod 'LYMethodChaining'

* 使用  

 ```
 UIView *view = [[UIView alloc] init].mc_tag(1)
                                        .mc_width(30)
                                        .mc_height(20)
                                        .mc_bottom(200)
                                        .mc_backgroundColor([UIColor yellowColor])
                                        .mc_alpha(0.8);
    UITextField *textField = [[UITextField alloc] init].mc_font([UIFont systemFontOfSize:12])
                                                       .mc_placeholder(@"赚钱要紧").mc_text(@"世界和平");
    
    NSMutableArray *array = [NSMutableArray array].mc_addObject(@1)
                                                  .mc_addObject(@2)
                                                  .mc_addObjects(@[@3, @4]);
 
 ```   
 
     
*  `method chainin`有人称`链式调用`，其实感觉称为 `方法链` 更合适，即用 `.` 连续调用多个方法，每次方法调用都返回当前对象本身  
    优点如下：  
    1. 调用过程更接近自然语言，便于阅读理解
    2. 在数据处理方面，可以让数据保持单向流动  
    3. 将参数列表复杂的一个方法改为参数列表简单的多个方法进行调用
    4. 减少不必要的代码量  
    
  通过 `block` 来实现，返回一个带参的 `block`，并且这个 `block` 执行后返回对象本身...