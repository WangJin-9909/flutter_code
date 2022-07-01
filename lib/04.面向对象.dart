void main(){
  //Person person = new Person("wangJin",18);
  //person.getInfo();
  //调用系统提供的命名构造函数
  //var data = new DateTime.now();
  //print("现在时间是: $data" );

  /**
   * 创建对象时候，可以省略new关键字
   */
  Person p_now_1 =  Person.now_1();
  Person p_now_2 = new Person.now_2("wangJin");
  Person p_now_3 = new Person.now_3(28);
  Person p_now_4 = new Person.now_4("wangJin",28);

}


/**
 * Dart中所有的都是对象，所有的对象都继承自Object类
 * Dart是单继承
 * _用下划线把变量或者方法私有化，要私有化的类需要单独放一个文件内
 */
class Person{
  String username = "wangJin";
  int age = 28;

  //构造函数,构造函数只有一个
  Person(this.username, this.age){
    this.username = "姓名初始化";
    this.age = 0;
  }

  //声明命名构造函数，命名构造函数可以有多个
  Person.now_1(){
    print("Perons.now_1执行");
  }
  Person.now_2(String usernmae){
    print("Perons.now_2执行");
  }
  Person.now_3(int age){
    print("Perons.now_3执行");
  }
  Person.now_4(String username, int age){
    print("Perons.now_4执行");
  }

  //默认构造函数简写的形式
  //Person(this.username, this.age);

  void getInfo(){
    print("username = ${this.username}" + "    age = ${this.age}");
  }
  void setInfo(int age){
    this.age = age;
  }


}


class Rect{
  int height;
  int width;
  //Dart在构造函数初始化之前初始化变量
  Rect():height = 3, width = 4{

  }
  getArea(){
    return this.height * this.width;
  }
}



/**
 * static特性 同Java
 */

/**
 *  ?   条件运算符
 *  as  类型转换
 */



class People{
  String name;
  num age;
  People(this.name, this.age);
  void printInfo(){
    print("name = ${this.name}   age = ${this.age}");
  }
}

class Web extends People{
  String? sex = null;
  //子类构造器
  Web(String name, num age, String sex) : super(name, age){
    this.sex = sex;
  }

}
/*该第11集了*/