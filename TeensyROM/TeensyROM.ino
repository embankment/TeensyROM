
//Compile with 816MHz (overclock) option set

#include "ROM_Images.h"
#include "TeensyROM.h"

uint8_t IO2_RAM[256];
volatile uint8_t doReset = true;
volatile uint8_t extReset = false;
uint16_t StreamStartAddr = 0;
uint16_t StreamOffsetAddr = 0;
uint8_t RegSelect = 0;
uint8_t DisableISR = false;
static const unsigned char *HIROM_Image = NULL;
static const unsigned char *LOROM_Image = NULL;

void setup() 
{
   Serial.begin(115200);
   Serial.println(F("File: " __FILE__ ));
   Serial.println(F("Date: " __DATE__ ));
   Serial.println(F("Time: " __TIME__ ));
   Serial.print(F_CPU_ACTUAL);
   Serial.println(" Hz");
   
   DataBufDisable; //buffer disabled
   for(uint8_t PinNum=0; PinNum<sizeof(OutputPins); PinNum++) pinMode(OutputPins[PinNum], OUTPUT); 
   SetDataPortDirOut; //default to output (for C64 Read)
   SetDMADeassert;
   SetNMIDeassert;
   SetUpMainMenuROM();
   SetLEDOn;
   SetDebug2Deassert;
   SetResetDeassert;
  
   for(uint8_t PinNum=0; PinNum<sizeof(InputPins); PinNum++) pinMode(InputPins[PinNum], INPUT); 
   pinMode(Reset_In_PIN, INPUT_PULLUP);  //also makes it Schmitt triggered (PAD_HYS)
   pinMode(PHI2_PIN, INPUT_PULLUP);   //also makes it Schmitt triggered (PAD_HYS)
   attachInterrupt( digitalPinToInterrupt(Reset_In_PIN), isrReset, FALLING );
   attachInterrupt( digitalPinToInterrupt(PHI2_PIN), isrPHI2, RISING );
   
   Serial.print("TeensyROM 0.01 is on-line\n");
} 
     
void loop()
{
   if (extReset)
   {
      Serial.println("External Reset detected"); 
      SetLEDOn;
      extReset=false;
      SetDebug2Deassert;
      SetUpMainMenuROM(); //back to main menu
      DisableISR=false;
      doReset=true;
   }
   
   if (doReset)
   {
      Serial.println("Resetting C64"); 
      SetResetAssert; 
      delay(10); 
      SetResetDeassert;
      while(ReadReset==0); //avoid self reset detection
      SetDebug2Deassert;
      doReset=false;
      extReset = false;
   }
}

void SetUpMainMenuROM()
{
   SetGameDeassert;
   SetExROMAssert;
   LOROM_Image = TeensyROMC64_bin;
   HIROM_Image = NULL;
}


