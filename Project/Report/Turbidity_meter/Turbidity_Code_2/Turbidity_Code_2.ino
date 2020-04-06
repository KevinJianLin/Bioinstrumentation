void setup() {
  Serial.begin(9600);

}

void loop() {
  int sensorValue = analogRead(A1);
  float voltage = sensorValue * (5.0 / 1024.0);
  float ntu = -1120.4*square(voltage)+5742.3*voltage-4353.8;
  
  Serial.println ("Sensor Output (V):");
  Serial.println (voltage);
  Serial.println();

  Serial.println (" Turbidity reading is (NTU):");
  Serial.println (ntu);
  Serial.println();

  
  delay(1000);
}
