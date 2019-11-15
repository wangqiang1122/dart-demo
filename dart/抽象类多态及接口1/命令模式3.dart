// 实现一个可扩展的命名遥控器
// 里面有很多的命令
/**接口*/
abstract class Command{
  execute();
}

class NoCommand extends Command{
  @override
  execute() {  }
}

class RemoteControl{
  List onCommands;
  List offCommands;
  Map obj; 
  RemoteControl() {
    this.onCommands = new List(7);
    this.offCommands = new List(7);
    this.obj = new Map();
    this.obj['s']= '2222';
    // 避免数组里出现null 需要默认所有插槽里都有命令 设置空命令 NoCommand
    NoCommand noCommand = new NoCommand();
    for (int i=0;i<7;i++) {
      this.onCommands[i] = noCommand;
      this.offCommands[i] = noCommand;
    }
  }
  setCommand(int slot, Command onCommand,Command offCommand) {
     // slot 为命令的位置 onComman 打开命令 offCommand关闭命令
       this.onCommands[slot] = onCommand;
       this.offCommands[slot] = offCommand;
  }
  onButtonWasPushed(int slot) { // 使用那个位置的命令
    this.onCommands[slot].execute();
  }
  offButtonWasPushed(int slot) { // 使用那个位置的关闭命令
     this.offCommands[slot].execute();
  }
}
// 灯的开关
class Light{
  String room;
  Light( String room) {
    this.room = room;
  }
  onG(){
    print('${this.room}onlight');
  }
  off() {
    print('${this.room}lightOff');
  }
}
// 新建一个音响供应商 具体到那个屋子的音响

class Stereo{
  String room;
  Stereo( String room) {
     this.room = room;
  }
  ong() {
    print('${this.room}Stereoon');
  }
  off() {
    print('Stereooff');
  }
  setCd() {
    print('${this.room}StereosetCd');
  }
  setDvd() {
    print('StereosetDvd');
  }
  setRadio() {
    print('StereosetRadio');
  }
  setVolume() {
    print('${this.room}StereosetVolume');
  }
}

// 新建命令
class LightOffCommond implements Command{
   Light light;
   LightOffCommond(Light light) {
     this.light = light;
   }
   @override
    execute() {
      this.light.off();
    }
}
class LightOnCommond implements Command{
   Light light;
   LightOnCommond(Light light) {
     this.light = light;
   }
   @override
    execute() {
      this.light.off();
    }
}  
// 新建一个音响播放cd的命令
class StereoWithCDCommand implements Command{
  Stereo stereo;
  StereoWithCDCommand( Stereo stereo) {
     this.stereo = stereo;
  }
  @override
  execute() {
    this.stereo.ong();
    this.stereo.setCd();
    this.stereo.setVolume();
  }
}  
// 停止音响播放
class StereoOffCommand implements Command{
  Stereo stereo;
  StereoOffCommand( Stereo stereo) {
     this.stereo = stereo;
  }
  @override
  execute() {
    this.stereo.off();
  }
} 



main(List<String> args) {
  // 中转控制器 
  RemoteControl remoteControl = new RemoteControl();
  // 相当于客户  新建一个需求
  Light livingRoomLIght = new Light('lvingRoom');
  Stereo stereo = new Stereo('lvingRoom');
  // 新建相对应的命令 相当于把客户新建一个菜单 tokenOrder
  LightOffCommond livingRoomCommandOff= new LightOffCommond(livingRoomLIght);
  LightOnCommond livingRoomCommandOn= new LightOnCommond(livingRoomLIght);
  StereoWithCDCommand stereoWithCDCommand = new StereoWithCDCommand(stereo);
  StereoOffCommand stereoOffCommand = new StereoOffCommand(stereo);
  // 设置命令 相当于把菜单给大厨了 相当于orderup
  remoteControl.setCommand(0, livingRoomCommandOff, livingRoomCommandOn);
  remoteControl.setCommand(1, stereoWithCDCommand, stereoOffCommand);
  // 现在执行并输出接口 大厨制作和把做好的大餐 送出
  remoteControl.onButtonWasPushed(0);
  remoteControl.onButtonWasPushed(1);
}
