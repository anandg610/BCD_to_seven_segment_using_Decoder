module seven_segment_tb;

    // Inputs
    reg w,x,y,z;

    // Outputs
    wire a,b,c,d,e,f,g;

    // Instantiate the BCD to 7-segment module
    bcd_to_seven_decoder uut (
        w,x,y,z,a,b,c,d,e,f,g
    );

    initial begin
        // Initialize BCD
        {w,x,y,z} = 4'b0000;
        #10;

        // Test case 1: Display 0
        {w,x,y,z} = 4'b0000; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 2: Display 1
        {w,x,y,z}= 4'b0001; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 3: Display 2
        {w,x,y,z} = 4'b0010; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 4: Display 3
        {w,x,y,z} = 4'b0011; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 5: Display 4
        {w,x,y,z} = 4'b0100; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 6: Display 5
        {w,x,y,z} = 4'b0101; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 7: Display 6
        {w,x,y,z} = 4'b0110; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 8: Display 7
        {w,x,y,z} = 4'b0111; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 9: Display 8
        {w,x,y,z} = 4'b1000; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 10: Display 9
        {w,x,y,z} = 4'b1001; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Test case 11: Invalid input (e.g., 1010)
        {w,x,y,z} = 4'b1010; #10;
        $display("BCD = %b, Segment = %b",{w,x,y,z},{a,b,c,d,e,f,g});

        // Finish simulation
        $finish;
    end

endmodule

