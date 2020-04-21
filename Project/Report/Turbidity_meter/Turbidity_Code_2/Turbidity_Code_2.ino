void setup() {
  Serial.begin(9600);

}

void loop() {
  int sensorValue = analogRead(A1);
  float voltage = sensorValue * (5.0 / 1024.0);
  //because reading is analog sensor value is between 0 to 1023 and input voltage is 5
  //float ntu = -1120.4*square(voltage)+5742.3*voltage-4353.8;
  float ntu = (voltage-3.49122)/(-0.0008);

  
  Serial.println ("Sensor Output (V):");
  Serial.println (voltage,5);
  Serial.println();

  Serial.println (" Turbidity reading is (NTU):");
  Serial.println (ntu);
  Serial.println();

  
  delay(2000);
}
