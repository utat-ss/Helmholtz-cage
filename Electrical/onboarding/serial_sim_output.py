import serial
import time
import random

def generate_sensor_data(serial_port):
    ser = serial.Serial(serial_port, 9600, timeout=1)
    time.sleep(2) 
    while True:
        sensor_value = random.randint(0, 1023)  # Simulate a sensor value between 0 and 1023
        ser.write(f"{sensor_value}\n".encode())
        print(f"Sent value: {sensor_value}")
        time.sleep(1)

if __name__ == "__main__":
    serial_port = '/dev/ttys004'  # Update this to your serial port (e.g., 'COM3' on Windows)
    print(f"outputting on port: {serial_port}")
    generate_sensor_data(serial_port)
