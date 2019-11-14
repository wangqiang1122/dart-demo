// 命令模式封装调用
// 命令模式将请求封装成对象，以便使用不同的请求 队列或者日志参数化其他对象，命令模式也支持可撤销的操作


/**接口*/
abstract class Command{
  execute();
}

// 实现一个打开电灯的命令
class LightOnCommand implements Command{
  var light;
  LightOnCommand(Light light) {
     this.light = light;
  }
  @override
  execute() {
     this.light.ona();
  }
}
// 灯的类
class Light{
  ona() {
    print('我打开电灯');
  }
  off() {
    print('我关闭电灯');
  }
}

// 使用命令对象
class SimpleRemoteControl {
  Command slot;
  SimpleRemoteControl() {}
  setSimpleRemoteControl(Command slot) {
    this.slot = slot;
  }
  buttonWasPressed() {
    this.slot.execute();
  }
}

main() {
  SimpleRemoteControl a = new SimpleRemoteControl();
  Light light = new Light();
  LightOnCommand lightOn = new LightOnCommand(light);
  a.setSimpleRemoteControl(lightOn);
  a.buttonWasPressed();

}