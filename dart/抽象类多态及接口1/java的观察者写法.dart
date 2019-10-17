import 'dart:ffi';

/**
 * 观察者
 * 
 */

abstract class Subject{
  registerObserver( Observer O);
  removeObserver( Observer O);
  notifyObserver();
}
abstract class Observer{
  update(int temp, int humidity, int pressure);
}
abstract class DisplayEelement{
  display();
}

// 气象站继承观察者
class WeaterDate extends Subject{
  List observers;
  int temp;
  int humidity;
  int pressure;
  WeaterDate() {
    observers = new List();
  }
  @override
  registerObserver(Observer d){
    observers.add(d);
  }
   @override
  removeObserver(Observer d) {
    int n = observers.indexOf(d);
    observers.removeAt(n);
  }
   @override
  notifyObserver() {
    observers.forEach((item)=>{
      item.update(temp,humidity,pressure)
    });
  }
  // 设置温度
  setMeasurements( int temp,int humidity,int pressure) {
    this.temp = temp;
    this.humidity = humidity;
    this.pressure = pressure;
    print('设置');
    this.MeasurementsChanged();
  }
  // 面板更新
  MeasurementsChanged() {
    this.notifyObserver();
  }
} 
// 建立布告板1
class CurrentConditionDisplay extends Observer with DisplayEelement {
   Subject weaterDate;
   int temp;
   int humidity;
   int pressure;
   CurrentConditionDisplay( Subject weaterDate) {
     this.weaterDate = weaterDate;
     weaterDate.registerObserver(this);
   } 
   @override
   update(int temp, int humidity, int pressure) {
    this.temp = temp;
    this.humidity = humidity;
    this.pressure = pressure;
    this.display();
  }
  @override
  display() {
    print('${this.temp}湿度${this.humidity}');
  }
}
// 建立布告板2
class CurrentDaDisplay extends Observer with DisplayEelement{
  int temp;
  Subject w;
  int humidity;
  int pressure;
  CurrentDaDisplay(Subject w){
    this.w = w;
    w.registerObserver(this);
  }
  @override
  update(int temp, int humidity, int pressure) {
    this.temp = temp;
    this.humidity = humidity;
    this.pressure = pressure;
    this.display();
  }
  @override
  display() {
    print('我是布告板2');
  }
}

main() {
  // 保证WeaterDate是同一个对象
  WeaterDate a = new WeaterDate();
  CurrentConditionDisplay current = new CurrentConditionDisplay(a);
  CurrentDaDisplay CurrentDa = new CurrentDaDisplay(a); 
  a.setMeasurements(11,22,44);
}

