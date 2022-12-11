int LEDsatu = 7;

void setup() {
  
  pinMode(LEDsatu, OUTPUT);
  Serial.begin(9600);
}

// the loop function runs over and over again forever
void loop() {
  //if (Serial.available())
  digitalWrite(LEDsatu, HIGH);   // turn the LED on (HIGH is the voltage level)
  Serial.write(1);
  delay(1000);                       // wait for a second
  digitalWrite(LEDsatu, LOW);    // turn the LED off by making the voltage LOW
  Serial.write(0);
  delay(1000);                       // wait for a second

delay(100);
}
