void setZAccelOffset(int16_t offset);

void MPU6050::setZAccelOffset(int16_t offset) {
	uint8_t SaveAddress = ((getDeviceID() < 0x38 )? MPU6050_RA_ZA_OFFS_H:0x7D); // MPU6050,MPU9150 Vs MPU6500,MPU9250
	writeWord(devAddr, SaveAddress, offset);
}

writeWord(uint8_t devAddr, uint8_t regAddr, uint16_t data);
 
writeWord(uint8_t devAddr, uint8_t regAddr, uint16_t data) {
    return writeWords(devAddr, regAddr, 1, &data);
}

writeWords(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint16_t* data) {

        Wire.beginTransmission(devAddr);
        Wire.send(regAddr); // send address
    for (uint8_t i = 0; i < length; i++) { 
            Wire.send((uint8_t)(data[i] >> 8));     // send MSB
            Wire.send((uint8_t)data[i]);          // send LSB
    }
        Wire.endTransmission();

}

#define MPU6050_RA_XA_OFFS_H        0x06 //[15:0] XA_OFFS
#define MPU6050_RA_XA_OFFS_L_TC     0x07
#define MPU6050_RA_YA_OFFS_H        0x08 //[15:0] YA_OFFS
#define MPU6050_RA_YA_OFFS_L_TC     0x09
#define MPU6050_RA_ZA_OFFS_H        0x0A //[15:0] ZA_OFFS
#define MPU6050_RA_ZA_OFFS_L_TC     0x0B