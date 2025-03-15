`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:10:13 03/15/2025 
// Design Name: 
// Module Name:    top_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module top_tb(
    );
	//*************************Parameter Declarations******************************

    parameter   TX_REFCLK_PERIOD   =   6.25;
    parameter   RX_REFCLK_PERIOD   =   6.25;
    parameter   DCLK_PERIOD     =   20.0;
	parameter   CLOCK_PERIOD    =  25; 
    
  
//************************Internal Register Declarations***********************

//************************** Register Declarations ****************************        

    reg             tx_refclk_n_r;
    reg             rx_refclk_n_r;
    reg             drp_clk_r;
    reg             tx_usrclk_r;
    reg             rx_usrclk_r;    
    reg             gsr_r;
    reg             gts_r;
    reg             reset_i;
    reg             track_data_high_r;
    reg             track_data_low_r;
	reg 			tmb_clock0;

//********************************Wire Declarations**********************************

    //--------------------------------- Global Signals ------------------------------
    wire            tx_refclk_p_r;
    wire            rx_refclk_p_r; 
    
    //-------------------------- Example Module Connections -------------------------
    wire            track_data_i;
    wire    [3:0]   rxn_in_i;
    wire    [3:0]   rxp_in_i;
    wire    [3:0]   txn_out_i;
    wire    [3:0]   txp_out_i;
    

//*********************************Main Body of Code**********************************


    // ------------------------------- Tie offs -------------------------------- 
    
    assign  tied_to_ground_i     =    1'b0;
    
    // ------------------------- MGT Serial Connections ------------------------

    assign   rxn_in_i           =  txn_out_i;
    assign   rxp_in_i           =  txp_out_i;  

    //------------------------------ Global Signals ----------------------------
    
    //Simultate the global reset that occurs after configuration at the beginning
    //of the simulation. 
    assign glbl.GSR = gsr_r;
    assign glbl.GTS = gts_r;

    initial
        begin
            gts_r = 1'b0;        
            gsr_r = 1'b1;
            #(16*TX_REFCLK_PERIOD);
            gsr_r = 1'b0;
    end


    //---------- Generate Reference Clock input to UPPER MGTCLK ----------------
    
    initial begin
        tx_refclk_n_r = 1'b1;
    end

    always  
        #(TX_REFCLK_PERIOD/2) tx_refclk_n_r = !tx_refclk_n_r;

    assign tx_refclk_p_r = !tx_refclk_n_r;

    initial begin
        rx_refclk_n_r = 1'b1;
    end

    always  
        #(RX_REFCLK_PERIOD/2) rx_refclk_n_r = !rx_refclk_n_r;

    assign rx_refclk_p_r = !rx_refclk_n_r;
                 
    //------------------------ Generate DRP Clock ----------------------------
    
    initial begin
        drp_clk_r = 1'b1;
    end

    always  
        #(DCLK_PERIOD/2) drp_clk_r = !drp_clk_r;
      
    initial begin
        tmb_clock0 = 0;
        forever #(CLOCK_PERIOD/2) tmb_clock0 = ~tmb_clock0; // Toggle clock every 12.5 ns
    end
    //--------------------------------- Resets ---------------------------------
    
    initial
    begin
        reset_i = 1'b1;
        #100 reset_i = 1'b0;
    end
    
    //----------------------------- Track Data ---------------------------------
    initial
    begin
        #120000;
        $display("------- TEST COMPLETED -------");
        $stop;
    end
     

	
	
	Top#(
     .EXAMPLE_SIM_GTXRESET_SPEEDUP   (1)        // Speedup is turned on for simulation
	)top_DUT(
    .tmb_clock0(tmb_clock0),
    .Q3_CLK0_MGTREFCLK_PAD_N_IN(rx_refclk_n_r),
    .Q3_CLK0_MGTREFCLK_PAD_P_IN(rx_refclk_p_r),
    .RXN_IN(rxn_in_i),
    .RXP_IN(rxp_in_i),
	.led_fp(),
	.reset(reset_i),
    .TXN_OUT(txn_out_i),
    .TXP_OUT(txp_out_i)
  );
  
  
  

endmodule
