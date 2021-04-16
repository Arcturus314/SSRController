/*
 * Kaveh Pezeshki
 * MVP implementation of three-channel SSR controller
 * kpezeshki@hmc.edu
 * 03/28/2021
*/

#define CH0_PB  2
#define CH0_OUT 3
#define CH0_AIN A3
#define CH0_POT A0
#define CH0_LED 10

#define CH1_PB  4
#define CH1_OUT 5
#define CH1_AIN A6
#define CH1_POT A1
#define CH1_LED 7

#define CH2_PB  8
#define CH2_OUT 9
#define CH2_AIN A7
#define CH2_POT A2
#define CH2_LED 6

bool ch0_en = false;
bool ch1_en = false;
bool ch2_en = false;

bool ch0_pb_old = 1;
bool ch1_pb_old = 1;
bool ch2_pb_old = 1;



void setPin(int pin, int duty) {
    // call this function in the main loop at >10hz. Provides PWM at a 10hz
    // duty is int between 0 and 100
    if (millis()%100 < duty) digitalWrite(pin, HIGH);
    else digitalWrite(pin, LOW);
}

void setPin1Hz(int pin, int duty) {
    // call this function in the main loop. Provides PWM at 1hz
    // duty is int between 0 and 100
    if (millis()%1000 < duty*10) digitalWrite(pin, HIGH);
    else digitalWrite(pin, LOW);
}

void setup() {
    // setting up serial
    Serial.begin(9600);
    Serial.println("Falson Group SSR Controller V1.0");

    // setting up channel digital IO
    pinMode(CH0_PB,  INPUT);
    pinMode(CH0_OUT, OUTPUT);
    pinMode(CH0_LED, OUTPUT);
    pinMode(CH1_PB,  INPUT);
    pinMode(CH1_OUT, OUTPUT);
    pinMode(CH1_LED, OUTPUT);
    pinMode(CH2_PB,  INPUT);
    pinMode(CH2_OUT, OUTPUT);
    pinMode(CH2_LED, OUTPUT);
}

void loop() {
    // Program overview (for each channel):
    //  PB enables / disables channel
    //  when enabled, adjust pot to control duty cycle
    //  LED blinks with output

    // enable / disable logic
    int ch0_pb_new = digitalRead(CH0_PB);
    int ch1_pb_new = digitalRead(CH1_PB);
    int ch2_pb_new = digitalRead(CH2_PB);

    if (ch0_pb_new == 0 && ch0_pb_old == 1) {
        ch0_en = !ch0_en;
        Serial.print("Setting CH0 status to ");
        Serial.println(ch0_en);
        digitalWrite(CH0_LED, HIGH);
        delay(200); // this sucks, but works to debounce
        digitalWrite(CH0_LED, LOW);
    }
    ch0_pb_old = ch0_pb_new;

    if (ch1_pb_new == 0 && ch1_pb_old == 1) {
        ch1_en = !ch1_en;
        Serial.print("Setting CH1 status to ");
        Serial.println(ch1_en);
        digitalWrite(CH1_LED, HIGH);
        delay(200); // this sucks, but works to debounce
        digitalWrite(CH1_LED, LOW);
    }
    ch1_pb_old = ch1_pb_new;

    if (ch2_pb_new == 0 && ch2_pb_old == 1) {
        ch2_en = !ch2_en;
        Serial.print("Setting CH2 status to ");
        Serial.println(ch2_en);
        digitalWrite(CH2_LED, HIGH);
        delay(200); // this sucks, but works to debounce
        digitalWrite(CH2_LED, LOW);
    }
    ch2_pb_old = ch2_pb_new;

    // pwm control logic
    if (ch0_en) {
        int ch0_duty = analogRead(CH0_POT)/10;
        setPin(CH0_OUT, ch0_duty);
        setPin1Hz(CH0_LED, ch0_duty);
    }
    else {
      digitalWrite(CH0_OUT, LOW);
      digitalWrite(CH0_LED, LOW);
    }

    if (ch1_en) {
        int ch1_duty = analogRead(CH1_POT)/10;
        setPin(CH1_OUT, ch1_duty);
        setPin1Hz(CH1_LED, ch1_duty);
    }
    else {
        digitalWrite(CH1_OUT, LOW);
        digitalWrite(CH1_LED, LOW);
    }

    if (ch2_en) {
        int ch2_duty = analogRead(CH2_POT)/10;
        setPin(CH2_OUT, ch2_duty);
        setPin1Hz(CH2_LED, ch2_duty);
    }
    else {
      digitalWrite(CH2_OUT, LOW);
      digitalWrite(CH2_LED, LOW);
    }

}
