# 7SEGController_DE10Lite (Completed as of 03/02/2023 update)

Simple control system that displays any given number (read in binary form) in the six 7-Segment Displays in the DE10-Lite Board

The system consists of 3 main blocks:

* The main block to realize this is the bin2bcd_sequential, which converts a binary number of maximum 19 bits since 111...111 on 19 bits is the largest 6-digit number 524287 (on 20 bits we have 11111..1111 = 1048575 which has 7 digits and that's 1 more digit than we have 7-Segment Displays in DE10-Lite. This block will use the Double-Dabble / 3-shift algorithm to transform the binary number to a BCD-readable number of 48 bits (6x8).

* This block drives six converters which read the BCD values and convert them into 7-segment display values.

* There is also a first block preceding the NUM_to_BCD. This first block takes an input value of less than 19 bits (for example, uploaded here are 10 bits corresponding to the 10 switches of the DE10-Lite) and adds 0s to produce a 19-bit number to give in input to the NUM_to_BCD block.

![image](https://user-images.githubusercontent.com/123891760/216140878-ed0b6db3-92ef-4b20-8300-a19f7699ebc7.png)


UPDATE (03/02/2023)

* First synchronous NUM_to_BCD circuit replaced with a sequential converter "bin2bcd_sequential" written in verilog that gets updated anytime there is a change in the binary input signal. The first version was not working due to slack time violations. However, the implementation of such conversion could have easily been done with combinational circuits.

* Included BSF and BDF schematics in the commit as well as all the other project files for DE10-Lite projects.

* The old NUM_to_BCD circuit is still in the commits as an example of what should NOT be done

Below is shown the conversion of the binary number 1001000011 (from the switches) to 579.

![image](https://user-images.githubusercontent.com/123891760/216672480-03183f00-02a9-412f-9968-65f2b465ce3f.png)
