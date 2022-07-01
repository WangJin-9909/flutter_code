void main() {
  print("+++++++++++++++++++++++++++++++++++++++++++++");
  //str_test();
  test_outer();
}

/**
 * Dart中的注释 ///
 */

/**
 * Dart可以用var关键字声明变量类型，也可以用类型声明变量类型
 * 使用var声明变量类型编译器会自动推断其变量类型
 */
void var_test() {
  /*使用var声明变量类型*/
  var str = "this is var";
  /*使用类型声明变量类型*/
  String str_1 = "this is a String";
}

/**
 * 字符串的几种定义方式
 */
void str_test() {
  /*使用String类型声明字符串*/
  String str_1 = "this is a String";
  /*使用var声明字符串*/
  var str_2 = "this is var";
  var str_3 = str_1 + "   " + str_2;
  /*使用三引号声明字符串*/
  var str_4 = '''this 
  is 
  a 
  str  ''';

  print("str3 = $str_3");
  print("str4 = " + str_4);
}

/**
 * 数据类型：bool、String
 */

/**
 * 条件判断
 */
void test_if() {
  var a = 123;
  var b = 456;
  if (a == b) {
    print("a = b ");
  } else {
    print("a != b ");
  }
}

/**
 * List 类型
 */
void test_list() {
  /*第一种定义List类型*/
  var list_1 = ["张三", 20, true];
  //通过下标访问List元素
  print(list_1[1]);
  //获取list长度
  print(list_1.length);
  /*第二种定义List类型，即指定数据类型*/
  var list_2 = <String>["wangJin", "ziWei", "Maki"];

  /*第三种，动态定义list*/
  var list_3 = <int>[];
  for (int i = 0; i < 5; i++) {
    list_3.add(i);
  }
  for (int i = 0; i < list_3.length; i++) {
    print(list_3[i]);
  }
  /*第四种,创建一个固定长度的集合*/
  var list_4 = List.filled(5, "fill");
  for (int i = 0; i < list_4.length; i++) {
    print(list_4[i]);
  }

  /*使用List的泛型创建list*/
  var list_5 = List<String>.filled(5, "fill");
}

/**
 * Map类型
 */
void test_map() {
  /*第一种定义map的方式*/
  var person = {"name": "wangJin", "age": 28};
  /*访问map的相关字段*/
  print(person['name']);

  /*第二种定义map的方式*/
  var map_2 = new Map();
  map_2["name"] = "Lucy";
  map_2["age"] = 28;
}

/**
 * 通过is判断数据类型
 */
void test_is() {
  var str = "1234";
  if (str is String) {
    print("str 是Sting类型的");
  } else if (str is int) {
    print("str 是int类型的");
  }


}
/**
 * 异常处理
 */
void test_exception() {
  try {
    var i = 5 / 0;
    print("i = $i");
  } catch (error) {
    print("error = $error");

  }


}

/**
 * 方法内置方法
 */
  void test_outer(){
    int test_inner(){
      return 2;
    }

    var i = test_inner();
    print("来自内置方法 = $i" );
  }
