

void main(){
  //调用默认参数的函数
  //print(get_user_info("wangJin", 28));
  //print(get_user_info("zhangSan", 28, "女"));
  //调用命名参数的函数
  //print(get_person_info("wangJin", age: 18, sex: "男"));
  //调用带有默认参数的函数
  //print(printUserInfo("wangJin"));
  //print(printUserInfo("wangJin", 28));

  void fun(){
    print("作为参数的函数");
  }
  //test_fun(fun);

  //定义一个匿名方法
  var func = (){
    print("匿名方法");
  };

  //单独调用匿名方法
  //func();
  //test_fun(func);

  //test_fun_2();

  /*自执行方法，程序一加载就执行*/
  ((){
     print("自执行函数执行");
  })();

  //带有参数的自执行函数
  ((num){
    print("自执行函数执行 num = $num");
  })(199);
}
/*定义一个可选参数,可选参数要有默认值*/
String printUserInfo(String username, [int age = 0]){
  if(age != 0){
    return "username = $username" + "   age : $age";
  }else{
    return "username = $username" + "   age : 未知";
  }
}
/*定义一个命名参数，必须在传递值时指定参数名称。花括号{}可用于指定可选的命名参数*/
String get_person_info(String person_name, {int age = 0, String sex="女"}){
  return "姓名:$person_name--- 性别:$sex ---年龄:$age";
}

/*定义一个方法，其参数是函数*/
void test_fun(fun){
  //调用传进来的函数
  fun();
}

void test_fun_2(){
  List list = ["apple","banana","orange"];
  list.forEach((element) {
    print("element = $element");
  });
  //使用箭头函数实现上述功能,箭头函数中只能写一行函数
  list.forEach((element)=>print("element = $element"));
  list.forEach((element) =>{
    print("element = $element")//此处使用箭头函数不能添加分号，且只能写一行代码
  });

  var list_2 = [2,3,4,5,6,1,8,7,6,5,3,4];
  //对list_2进行操作，把大于4的数据乘2处理，得到新的list
  var list_new = list_2.map((element) {
    if(element > 4){
      return element * 2;
    }else{
      return element;
    }
  });
  list_new.forEach((element) {
    print(element);
  });

  print(list_new.toList(growable: true));
}
