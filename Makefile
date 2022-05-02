VERILOG = iverilog
TARGET = BCD_upper.vcd
TEMP = temp.vvp

$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): BCD_upper_tb.v BCD_upper.v
	$(VERILOG) -o $(TEMP) BCD_upper_tb.v BCD_upper.v

clean:
	-del $(TARGET)
	-del $(TEMP)