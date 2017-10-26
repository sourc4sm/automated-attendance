// Anyone can modify the code and I am welcome for that *insert smiley

#include <SPI.h>
#include <Ethernet.h>
#include <MFRC522.h>
#include <LiquidCrystal.h>

#define RST_PIN 9
#define SDA_PIN 8 // slave for mfrc522
#define buttonPin 2 // for switching from recording attendance to register student
#define MaxHeaderLength 16    //maximum length of http header required

LiquidCrystal lcd(7, 6, 5, 4, 3, 1);

byte mac[] = { 0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x01 }; // RESERVED MAC ADDRESS
byte ip[] = { ***, **, **, *** }; // insert your own IP address

boolean lastButtonState = false;
int buttonState = 0;

String HttpHeader = String(MaxHeaderLength); 
char str[32] = "";
char one = '1';
char dataStr[1]; //create array to store the response. for example : SomeValue1=0
char c; // save read character
byte readCard[4];

MFRC522 mfrc522(SDA_PIN, RST_PIN);

void setup(){
  //Serial.begin(9600);
  //Serial.println("Check serial read"); // debugging purposes
  lcd.setCursor(0,0);
  lcd.print("Automated");
  lcd.setCursor(0,1);
  lcd.print("Attendance"); 
  delay(5000);
  lcd.clear();
  Ethernet.begin(mac, ip);
  SPI.begin(); // Init SPI bus
  mfrc522.PCD_Init(); // Init MFRC522
  pinMode(buttonPin, INPUT);
  HttpHeader="";
  lcd.begin(16, 2);
  lcd.print("server is at ");
  lcd.setCursor(0,1);
  lcd.print(Ethernet.localIP());
  delay(5000);
}
void loop(){
  buttonState = digitalRead(buttonPin);
    if (buttonState == LOW && lastButtonState == false) {
    record_attendance();
  //  Serial.println("1");
  }
  else if (buttonState == HIGH && lastButtonState == false)
  {
    lastButtonState = true;
    //Serial.println("2");
  }
  else if (buttonState == LOW && lastButtonState == true){
    attendance_register();
   // Serial.println("3");
  }
  else if (buttonState == HIGH && lastButtonState == true){
    lastButtonState = false;
    //Serial.println("4");
  }
}

void record_attendance(){
  lcd.clear();
  lcd.print("Recording");
  lcd.setCursor(0,1);
  lcd.print("Attendance");
  while(mfrc522.PICC_IsNewCardPresent() && mfrc522.PICC_ReadCardSerial()){
  lcd.clear();
  lcd.print("Recording");
  lcd.setCursor(0,1);
  lcd.print("Attendance"); 
    if (mfrc522.uid.uidByte[0] != readCard[0] || mfrc522.uid.uidByte[1] != readCard[1] || mfrc522.uid.uidByte[2] != readCard[2] || mfrc522.uid.uidByte[3] != readCard[3] ) {
    //Serial.println(F("\nA new card has been detected."));
      for (int i = 0; i < 4; i++) {
        readCard[i] = mfrc522.uid.uidByte[i];
       // Serial.print(readCard[i], HEX);
       }
    array_to_string(readCard,4,str);
  IPAddress server(172, 20,10,2);
  EthernetClient client;
    if (client.connect(server,80)) {
     // Serial.println("\nconnected");
      // Make a HTTP request:
     // Serial.println("Sending to Server: ");
      client.print("GET /add.php?value=");
      client.print(str);
      client.print(" ");
      client.print("HTTP/1.1");
      client.println();
      client.println("Host: localhost");
      client.println("Connection: close");
      client.println();
      client.println();
      if (client.connected() || client.available()) {
        c = client.read(); //read first character
          while (c != '<'){ //while < character is not coming yet, keep reading character
            c = client.read();}
        c = client.read(); //read the '<' character, but not storing in array
          while (c != '>'){ //while > character is not coming yet,
            dataStr[0] = c; //store character in array
            c = client.read();}//read next character
       // Serial.println(dataStr[0]);
        if(dataStr[0] == one){
         // Serial.println("Registered");
          lcd.clear();
          lcd.print("Attendance");
          lcd.setCursor(0,1);
          lcd.print("Recorded");
          delay(5000);
          }
        else{
          //Serial.println("not registered");
          lcd.clear();
          lcd.print("Not registered");
          delay(5000);}
    //  printdata(); //print the character that has been captured by array at Serial Monitor
      }
      client.stop();  //stop connection
     }
     else {
      // if you didn't get a connection to the server:
      //Serial.println("\nconnection failed");}
      lcd.clear();
      lcd.print("Connection");
      lcd.setCursor(0,1);
      lcd.print("Failed");
  }
    }
   else{ //Serial.println(F("Card read previously"));
   lcd.clear();lcd.print("Card read");
   lcd.setCursor(0,1);
   lcd.print("Previously");}
    mfrc522.PICC_HaltA();
    mfrc522.PCD_StopCrypto1();
    }
}

void array_to_string(byte array[], unsigned int len, char buffer[])
{
    for (unsigned int i = 0; i < len; i++)
    {
        byte nib1 = (array[i] >> 4) & 0x0F;
        byte nib2 = (array[i] >> 0) & 0x0F;
        buffer[i*2+0] = nib1  < 0xA ? '0' + nib1  : 'A' + nib1  - 0xA;
        buffer[i*2+1] = nib2  < 0xA ? '0' + nib2  : 'A' + nib2  - 0xA;
    }
    buffer[len*2] = '\0';
}

void attendance_register(){
  lcd.clear();
  lcd.clear();
  lcd.print("Register");
  lcd.setCursor(0,1);
  lcd.print("Student");
  while(mfrc522.PICC_IsNewCardPresent() && mfrc522.PICC_ReadCardSerial()){
  lcd.clear();
  lcd.print("Register on the");
  lcd.setCursor(0,1);
  lcd.print("Process");
  delay(3000);
  if (mfrc522.uid.uidByte[0] != readCard[0] || mfrc522.uid.uidByte[1] != readCard[1] || mfrc522.uid.uidByte[2] != readCard[2] || mfrc522.uid.uidByte[3] != readCard[3] ) {
   // Serial.println(F("\nA new card has been detected."));
      for (int i = 0; i < 4; i++) { 
        readCard[i] = mfrc522.uid.uidByte[i];
     //   Serial.print(readCard[i], HEX);
     }
    array_to_string(readCard,4,str);
   // Serial.println();
   // Serial.println(str);
    }
   }
  EthernetServer server(80);   //web server port
  EthernetClient client = server.available();
  if (client) {
    //Serial.println("Connected");
    while (client.connected()) {
      if (client.available()) {
         char c = client.read();
         //read MaxHeaderLength number of characters in the HTTP header
         //discard the rest until \n
         if (HttpHeader.length() < MaxHeaderLength)
         {
           //store characters to string
           HttpHeader = HttpHeader + c; 
         }
         //if HTTP request has ended
         if (c == '\n') { 
           // show the string on the monitor
      //     Serial.println(HttpHeader);
          // start of web page
           client.println("HTTP/1.1 200 OK");
           client.println("Content-Type: text/html");
           client.println("<html><head></head><body>");
           client.println();
           client.print("<form method=get action='http://localhost/student_register.php'>"); // experimented action but still works
           client.print("<input type='input' name=first_name placeholder='Uveveve'> First Name<br>");
           client.print("<input type='input' name=last_name placeholder='Santos'> Last Name<br>");
           client.print("<input type='hidden' name=id_number value='");
           client.print(str);
           client.print("'>");
           client.print("<input type=submit value=submit></form>");
           client.print("</body></html>");
           //clearing string for next read
           HttpHeader="";
           //stopping client
            client.stop();
         }
       }
     }
  }
}
