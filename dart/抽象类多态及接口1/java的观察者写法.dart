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
  registerObserver(Observer d){
    observers.add(d);
  }
  removeObserver(Observer d) {
    int n = observers.indexOf(d);
    observers.removeAt(n);
  }
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
    this.MeasurementsChanged();
    print('设置');
  }
  // 面板更新
  MeasurementsChanged() {
    this.notifyObserver();
  }
} 
// 建立布告板
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

main() {
  WeaterDate a = new WeaterDate();
  CurrentConditionDisplay current = new CurrentConditionDisplay(a);
  a.setMeasurements(11,22,44);
}

