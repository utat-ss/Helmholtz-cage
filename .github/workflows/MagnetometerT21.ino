#include <QMC5883LCompass.h>

QMC5883LCompass compass;

void setup() {
  Serial.begin(9600);
  compass.init();

  // set up serial comms 
  // initalize sensor
  // set configuration (ie. how frequently you want to read data, 
  //                        how precise you want the data, etc)
  
}

void loop() {
  // read X, Y, Z magnetic field values
  int x, y, z;

  compass.read();

  x = compass.getX();
  y = compass.getY();
  z = compass.getZ();
  // print to serial port
  Serial.print("X:");
  Serial.print(x);
  Serial.println();
  Serial.print("Y:");
  Serial.print(y);
  Serial.println();
  Serial.print("Z:");
  Serial.print(z);
  Serial.println();
  Serial.println();
  delay(1000);
}
