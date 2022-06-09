# MVVM创建新模块指引
## ViewModel参数传递
1. 以**THKEditImageListVM**参考

```
@interface THKEditImageListVM : THKViewModel
///>最大显示图片数 默认9
@property (nonatomic, assign) NSUInteger imgCountMax;
///>左部距离 默认20
@property (nonatomic, assign, readonly) CGFloat ledding;
///>间距
@property (nonatomic, assign, readonly) CGFloat offset;
///>一行个数 默认4
@property (nonatomic, assign, readonly) CGFloat rowCount;
///>显示删除按钮 默认不显示
@property (nonatomic, assign, readonly) BOOL showDelBtn;
/// 添加图片样式
@property (nonatomic, assign, ) THKEditImageViewAddStyle addType;

@end
```

2. **THKEditImageListVM**传参数
```
[[THKEditImageListVM alloc] initWithParams:@{kModelDataKey:@{@“rowCount”:@(3),@“offset”:@(8),@“showDelBtn”:@(**YES**)}}];
//兼容
[[THKEditImageListVM alloc] initWithModel:model];
```

传递参数的以字典形式，key名称与属性同名，**ViewMoel**父类会解析参数赋值，如不同名的参数则需子类中自行解析参数赋值。

## 初始化Controller
初始化controller的init方法中需要同步创建viewModel

### controller中属性规范申明
在类扩展中显示声明与当前controller关联得**viewModel**，需@dynamic声明**viewModel**

### controller中需要重写bindViewModel方法
以THKEditDiaryVC参考
```
- (void)bindViewModel {
    [super bindViewModel];
    @weakify(self)
    
    [self.editImageListView bindViewModel:self.viewModel.editListVM];
    
    [self.chooseTagView bindViewModel:self.viewModel.tagViewModel];
    
    RAC(self.textView,attributePlaceholder) = RACObserve(self.viewModel, placeHolder);
    
    RAC(self.nextBtn , enabled) = self.viewModel.publishValidSignal;
｝
```

bindViewModel中 实现viewModel与view层的双向绑定

#iOS开发
