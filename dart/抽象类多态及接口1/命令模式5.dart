// 命令模式加入撤销功能
// 添加一组宏命令

abstract class Command{
  execute();
  undo();
}
class NoCommand extends Command{
  @override
  execute() {  }
  undo() {}
}
class Light{
  String room;
  Light( String room) {
     this.room = room;
  }
  ong() {
    print('${this.room}ong');
  }
  off() {
    print('${this.room}off');
  }
}
class LightOnCommand implements Command{
  Light light;
  LightOnCommand(Light light) {   // 加入电灯的类
    this.light = light;
  }
  execute() {  // 执行操作
    this.light.ong();
  }
  undo() {   // 撤回操作 相反的动作
    this.light.off();
  }
}
class LightOffCommand implements Command{
  Light light;
  LightOffCommand(Light light) {   // 加入电灯的类
    this.light = light;
  }
  execute() {  // 执行操作
    this.light.off();
  }
  undo() {   // 撤回操作 相反的动作
    this.light.ong();
  }
}
// 执行命令的控制器
class RemoteControl{
   List onCommands;
   List offCommands;
   Command undoCommand; // 上一次的记录位置
   var str;
   RemoteControl() {
      this.onCommands = new List(7);
      this.offCommands = new List(7);
      NoCommand noCommand =new NoCommand();
      for (int i=0;i<7;i++) {
        this.onCommands[i] = noCommand;
        this.offCommands[i] = noCommand;
      }
   }
   setRemoteControl(int solt,Command onCommand,Command offCommand) {
     this.onCommands[solt] = onCommand;
     this.offCommands[solt] = offCommand;
   }
   onButtonWasPushed(int solt) {
      str= this.onCommands[solt].execute();
      this.undoCommand = this.onCommands[solt]; //记录撤销
      
   }
   offButtonWasPushed(int solt) {
       str = this.offCommands[solt].execute(); 
       this.undoCommand = this.offCommands[solt]; //记录撤销
   }
   undoButtonWasPushed() {
     this.undoCommand.undo();
   }
   pringIn() {
     print(str.toString());
   }
} 

// 新加入一个吊扇的类
class CeilingFan{
  final int  HIGH = 3;
  final int MEDIUM = 2;
  final int LOW = 1;
  final int OFF = 0;
  String location;
  int Speed;
  CeilingFan(String location) {
     this.location = location;
     this.Speed = this.OFF;
  }
   high() {
     this.Speed = this.HIGH;
      print('进行');
      print(this.Speed);
   }
   medium() {
     this.Speed = this.MEDIUM;
      print( this.Speed);
   }
   low() {
     this.Speed = this.LOW;
      print( this.Speed);
   }
   off() {
     this.Speed = this.OFF;
      print( this.Speed);
   }
   getSpeed() {
     return this.Speed;
   }
}
class CeilingFanCommand extends Command{
  CeilingFan ceilingFan;
  int prevSpeed;
  CeilingFanCommand(CeilingFan ceilingFan) {
    this.ceilingFan = ceilingFan;
  }
  @override
  execute() {
    this.prevSpeed = this.ceilingFan.getSpeed();
    this.ceilingFan.high();
  }
  @override
  undo() {
    tong(this.prevSpeed,this.ceilingFan); 
  }
}
class CeilingLowFanCommand extends Command{
  CeilingFan ceilingFan;
  int prevSpeed;
  CeilingLowFanCommand(CeilingFan ceilingFan) {
    this.ceilingFan = ceilingFan;
  }
  @override
  execute() {
    this.prevSpeed = this.ceilingFan.getSpeed();
    this.ceilingFan.low();
  }
  @override
  undo() {
    tong(this.prevSpeed,this.ceilingFan); 
  }
}
class CeilingMeFanCommand extends Command{
  CeilingFan ceilingFan;
  int prevSpeed;
  CeilingMeFanCommand(CeilingFan ceilingFan) {
    this.ceilingFan = ceilingFan;
  }
  @override
  execute() {
    this.prevSpeed = this.ceilingFan.getSpeed();
    this.ceilingFan.medium();
  }
  @override
  undo() {
    tong(this.prevSpeed,this.ceilingFan); 
  }
}

class CeilingOffFanCommand extends Command{
  CeilingFan ceilingFan;
  int prevSpeed;
  CeilingOffFanCommand(CeilingFan ceilingFan) {
    this.ceilingFan = ceilingFan;
  }
  @override
  execute() {
    this.prevSpeed = this.ceilingFan.getSpeed();
    this.ceilingFan.off();
  }
  @override
  undo() {
    tong(this.prevSpeed,this.ceilingFan); 
  }
}


tong(speed, obj) {
    if (speed==0) {
      obj.off();
    } else if (speed==1) {
      obj.low();
    } else if (speed==2) {
      obj.medium();
    } else if (speed==3) {
      obj.high();
    }
}
// 新建宏命令的类

class MacroCommandOn extends Command {
  List<Command> commands;
  MacroCommandOn(List<Command> commands) {
     this.commands = commands;
  }
  @override
  execute() {
     this.commands.forEach((item){
       item.execute();
     });
  }
  @override
  undo() {
     this.commands.forEach((item){
       item.undo();
     });
  }
}

class MacroCommandOff extends Command {
  List<Command> commands;
  MacroCommandOff(List<Command> commands) {
     this.commands = commands;
  }
  @override
  execute() {
     this.commands.forEach((item){
       item.execute();
     });
  }
  @override
  undo() {
     this.commands.forEach((item){
       item.undo();
     });
  }
}


main() {
  RemoteControl remoteControl = new RemoteControl(); // 控制器

  Light light = new Light('living'); // 事物
  CeilingFan ceilingFan = new CeilingFan('living'); // 
  // 新建命令
  LightOnCommand lightOnCommand = new LightOnCommand(light);
  LightOffCommand lightOffCommand = new LightOffCommand(light);
  // 新建电风扇命令
  CeilingOffFanCommand ceilingOffFanCommand = new CeilingOffFanCommand(ceilingFan);
  CeilingFanCommand ceilingFanCommand = new CeilingFanCommand(ceilingFan);
  // 建打开宏命令
  MacroCommandOn macroCommandOn = new MacroCommandOn([lightOnCommand,ceilingFanCommand]);
  MacroCommandOff macroCommandOff = new MacroCommandOff([lightOffCommand,ceilingOffFanCommand]);
  // 设置命令
  remoteControl.setRemoteControl(0, macroCommandOn, macroCommandOff);
  // 执行命令
  remoteControl.onButtonWasPushed(0); // 打开
  // 关闭
  remoteControl.offButtonWasPushed(0);
}

