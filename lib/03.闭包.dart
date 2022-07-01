int a = 100;
void main() {
  print("全局变量 a = $a");
  var fun = test_function();
  fun();
  fun();
  fun();
  fun();
}

/**
 * 闭包：方法里面嵌套一个方法，返回里面也是方法
 * 闭包区别于普通函数，不需要写返回值类型，
 */
test_function(){
  var a = 123;  //【注意这个变量会常驻内存，并且不会影响全局的变量】
  return (){
    a++;
    print("闭包中的变量a = $a");
  };
}
