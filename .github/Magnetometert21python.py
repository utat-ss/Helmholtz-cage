import serial
import time

def read_serial_data(ser_porter):  
    try:
        # Open serial port
        ser_port = serial.Serial(port=ser_porter, baudrate=9600, timeout=1)
    
        while True:
            try:
                # Read a line of data
                mag_val = ser_port.readline()
            
                # Decode bytes to string
                mag_val_str = mag_val.decode('utf-8').strip()
                print(mag_val_str)
            except UnicodeDecodeError: #prevents unicodedecode errors
                print("Data is not utf-8")
            except Exception as e: #prevents any other errors from happening and informs you what kind of error it is 
                print(f"Error while reading data: {e}")
            
    except serial.SerialException as e: #prevents any other error from happening in relation to pyserial and informs you what kind of error it is
        print(f"SerialException: {e}")
    except Exception as e: #prevents any other errors from happening and informs you what kind of error it is 
        print(f"Unexpected error: {e}")
    finally:
        # Close the serial port
        if 'ser_port' in locals() and ser_port.is_open: #checks to see if 'ser_port' is a local variable or not in order to prevent Name Errors and then it checks if it is open or not
            ser_port.close()
            print("Serial port closed")

if __name__ == "__main__":
    serial_porter = 'COM5 '
    read_serial_data(serial_porter)