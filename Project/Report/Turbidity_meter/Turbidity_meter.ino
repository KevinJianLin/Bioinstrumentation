void setup() {
  // put your setup code here, to run once:
Serial.begin(9600); //Baud rate: 9600
}

void loop() {
  // put your main code here, to run repeatedly:
 int sensorValue = analogRead(A0);// read the input on analog pin 0:
  
  
  
  float voltage = sensorValue * (5.0 / 1024.0); // Convert the analog reading (which goes from 0 - 1023) to a voltage (0 - 5V):
  
  //Serial.println ("Sensor Output (V):");
  //float ntu = -1120.4*square(voltage)+5742.3*voltage-4353.8;
  
  
  Serial.println(voltage); // print out the value you read:


  Serial.println (" Turbidity reading is (NTU):");
  Serial.println (ntu);
  Serial.println();

  
  
  delay(500);
}
