// 命令模式2 封装指令 指定调用

/**接口*/
abstract class Command{
  execute();
}

// 供应商类名
class GarageDoor{
  up(){
    print('up');
  }
  down() {
    print('down');
  }
  shop() {
    print('shop');
  }
  lightOn(){
    print('lightOn');
  }
  lightOff() {
    print('lightOff');
  }
}

// 建立命令
class GarageDoorOnCommand extends Command{
  GarageDoor garageDoor;
  GarageDoorOnCommand(GarageDoor garageDoor) {
     this.garageDoor = garageDoor;
  }
  @override
  execute() {
    this.garageDoor.lightOn();
  }
}

// 统一使用命令对象的创建
class SimpleRemoteControl{
   Command solt;  // 必须是命令才可以复制 设置传入参数的范型
  //  SimpleRemoteControl(Command solt) {
  //    this.solt = solt;
  //  }
   setSimpleRemote(Command solt) {
     this.solt = solt;
   }
   buttonWasPressed() {
     this.solt.execute();
   }
}


main() {
  // 建立一个供应商
  GarageDoor b = new GarageDoor(); 
  // 生成命令
  Command a = new GarageDoorOnCommand(b);
  // 建立命令模块
  SimpleRemoteControl c = new SimpleRemoteControl();
  c.setSimpleRemote(a); // 提交命令
  c.buttonWasPressed(); // 执行命令
}