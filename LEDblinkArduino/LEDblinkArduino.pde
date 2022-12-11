import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port

void setup() 
{
  size(1900, 1000);
  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[0];
    myPort = new Serial(this, "COM11", 9600); // pilih port yang betol.rujuk pada manage Computer.Device manager
}

void draw()
{
  if ( myPort.available() > 0) {  // If data is available,
      val = myPort.read();         // read it and store it in val
  }
  background(255);             // Set background to white
  if (val == 0) {              // If the serial value is 0,
    fill(0);                   // set fill to black
    rect(300, 700, 350, 140);
    fill(155,150,150);
    textSize(128);
    text("OFF",350,810);
  } 
  else {                       // If the serial value is not 0,
    fill(200,150,80);                 // set fill to light gray
    rect(300, 700, 350, 140);
    fill(255,0,50);
    textSize(128);
    text("ON",350,810);
  }
  
}
