
//
// Verific Verilog Description of module top
//

module top (clock_r, clock_w, reset, i_Rx_Serial, sel, write, o_Tx_Active, 
            o_Tx_Serial, o_Tx_Done);
    input clock_r /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input clock_w /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input reset /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input i_Rx_Serial /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input sel /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input write /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output o_Tx_Active /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output o_Tx_Serial /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output o_Tx_Done /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire \uartrx_1/r_Rx_Data , \uartrx_1/r_SM_Main[2] , \b[0] , \uartrx_1/r_Clock_Count[0] , 
        a, \uartrx_1/r_Bit_Index[0] , \uartrx_1/r_SM_Main[1] , \uartrx_1/r_SM_Main[0] , 
        \b[1] , \b[2] , \b[3] , \b[4] , \b[5] , \b[6] , \b[7] , 
        \uartrx_1/r_Clock_Count[1] , \uartrx_1/r_Clock_Count[2] , \uartrx_1/r_Clock_Count[3] , 
        \uartrx_1/r_Clock_Count[4] , \uartrx_1/r_Clock_Count[5] , \uartrx_1/r_Clock_Count[6] , 
        \uartrx_1/r_Clock_Count[7] , \uartrx_1/r_Clock_Count[8] , \uartrx_1/r_Clock_Count[9] , 
        \uartrx_1/r_Clock_Count[10] , \uartrx_1/r_Bit_Index[1] , \uartrx_1/r_Bit_Index[2] , 
        \ctrl1/state[0] , \f[0] , \ctrl1/byte_count[0] , \ctrl1/state[1] , 
        \f[1] , \f[2] , \f[3] , \f[4] , \f[5] , \f[6] , \f[7] , 
        \f[8] , \f[9] , \f[10] , \f[11] , \f[12] , \f[13] , \f[14] , 
        \f[15] , \f[16] , \f[17] , \f[18] , \f[19] , \f[20] , \f[21] , 
        \f[22] , \f[23] , \f[24] , \f[25] , \f[26] , \f[27] , \f[28] , 
        \f[29] , \f[30] , \f[31] , \ctrl1/byte_count[1] , n105, n106, 
        \fifo_1/rd_ptr[0] , \fifo_1/wr_ptr[0] , \fifo_1/rd_ptr[1] , \fifo_1/rd_ptr[2] , 
        \fifo_1/rd_ptr[3] , \fifo_1/rd_ptr[4] , \fifo_1/rd_ptr[5] , \fifo_1/wr_ptr[1] , 
        \fifo_1/wr_ptr[2] , \fifo_1/wr_ptr[3] , \fifo_1/wr_ptr[4] , \fifo_1/wr_ptr[5] , 
        \ctrl2_dut/state[0] , \ctrl2_dut/next_state[0] , \ctrl2_dut/state[1] , 
        xx, \ctrl2_dut/next_state[1] , bb, \ee[0] , aaa, \apb_master1/r_ext_write , 
        \d3[1] , \ee[1] , \ee[2] , \ee[3] , \ee[4] , \ee[5] , \ee[6] , 
        \ee[7] , \ee[8] , \ee[9] , \ee[10] , \ee[11] , \ee[12] , 
        \ee[13] , \ee[14] , \ee[15] , \ee[16] , \ee[17] , \ee[18] , 
        \ee[19] , \ee[20] , \ee[21] , \ee[22] , \ee[23] , \ee[24] , 
        \ee[25] , \ee[26] , \ee[27] , \ee[28] , \ee[29] , \ee[30] , 
        \ee[31] , p2, \ii[0] , \apb_slave1/pready_counter[0] , \apb_slave1/s_state[0] , 
        \ii[1] , \ii[2] , \ii[3] , \ii[4] , \ii[5] , \ii[6] , \ii[7] , 
        \ii[8] , \ii[9] , \ii[10] , \ii[11] , \ii[12] , \ii[13] , 
        \ii[14] , \ii[15] , \ii[16] , \ii[17] , \ii[18] , \ii[19] , 
        \ii[20] , \ii[21] , \ii[22] , \ii[23] , \ii[24] , \ii[25] , 
        \ii[26] , \ii[27] , \ii[28] , \ii[29] , \ii[30] , \ii[31] , 
        \apb_slave1/s_state[1] , \ctrluart/state[0] , \ctrluart/max_counter[0] , 
        \mm[0] , d4, d5, \ctrluart/state[1] , \ctrluart/state[2] , 
        \ctrluart/state[3] , \ctrluart/max_counter[1] , \mm[1] , \mm[2] , 
        \mm[3] , \mm[4] , \mm[5] , \mm[6] , \mm[7] , \uarttx_1/r_Clock_Count[0] , 
        \uarttx_1/r_Bit_Index[0] , \uarttx_1/r_Tx_Data[0] , \uarttx_1/r_SM_Main[0] , 
        \uarttx_1/r_Clock_Count[1] , \uarttx_1/r_Clock_Count[2] , \uarttx_1/r_Clock_Count[3] , 
        \uarttx_1/r_Clock_Count[4] , \uarttx_1/r_Clock_Count[5] , \uarttx_1/r_Clock_Count[6] , 
        \uarttx_1/r_Bit_Index[1] , \uarttx_1/r_Bit_Index[2] , \uarttx_1/r_Tx_Data[1] , 
        \uarttx_1/r_Tx_Data[2] , \uarttx_1/r_Tx_Data[3] , \uarttx_1/r_Tx_Data[4] , 
        \uarttx_1/r_Tx_Data[5] , \uarttx_1/r_Tx_Data[6] , \uarttx_1/r_Tx_Data[7] , 
        n271, n272, n273, n274, n275, n276, n277, n278, n279, 
        n280, n281, n282, n283, n284, n285, n286, \uartrx_1/r_Rx_Data_R , 
        \uartrx_1/n55 , \uartrx_1/n485 , \uartrx_1/n509 , \uartrx_1/n438 , 
        ceg_net72, \uartrx_1/n481 , ceg_net464, \uartrx_1/n442 , ceg_net371, 
        \uartrx_1/n431 , \uartrx_1/n435 , \uartrx_1/n489 , \uartrx_1/n491 , 
        \uartrx_1/n493 , \uartrx_1/n495 , \uartrx_1/n497 , \uartrx_1/n499 , 
        \uartrx_1/n504 , \uartrx_1/n365 , \uartrx_1/n368 , \uartrx_1/n371 , 
        \uartrx_1/n374 , \uartrx_1/n377 , \uartrx_1/n380 , \uartrx_1/n383 , 
        \uartrx_1/n386 , \uartrx_1/n389 , \uartrx_1/n392 , \uartrx_1/n396 , 
        \uartrx_1/n400 , n787, ceg_net467, \ctrl1/temp_reg[0] , \ctrl1/n609 , 
        \ctrl1/n536 , ceg_net381, ceg_net263, \ctrl1/n693 , \ctrl1/temp_reg[1] , 
        \ctrl1/temp_reg[2] , \ctrl1/temp_reg[3] , \ctrl1/temp_reg[4] , 
        \ctrl1/temp_reg[5] , \ctrl1/temp_reg[6] , \ctrl1/temp_reg[7] , 
        \ctrl1/temp_reg[8] , \ctrl1/temp_reg[9] , \ctrl1/temp_reg[10] , 
        \ctrl1/temp_reg[11] , \ctrl1/temp_reg[12] , \ctrl1/temp_reg[13] , 
        \ctrl1/temp_reg[14] , \ctrl1/temp_reg[15] , \ctrl1/temp_reg[16] , 
        \ctrl1/temp_reg[17] , \ctrl1/temp_reg[18] , \ctrl1/temp_reg[19] , 
        \ctrl1/temp_reg[20] , \ctrl1/temp_reg[21] , \ctrl1/temp_reg[22] , 
        \ctrl1/temp_reg[23] , \ctrl1/temp_reg[24] , \ctrl1/temp_reg[25] , 
        \ctrl1/temp_reg[26] , \ctrl1/temp_reg[27] , \ctrl1/temp_reg[28] , 
        \ctrl1/temp_reg[29] , \ctrl1/temp_reg[30] , \ctrl1/temp_reg[31] , 
        \ctrl1/n459 , \ctrl1/n461 , \ctrl1/n463 , \ctrl1/n465 , \ctrl1/n467 , 
        \ctrl1/n469 , \ctrl1/n471 , \ctrl1/n118 , \ctrl1/n117 , \ctrl1/n116 , 
        \ctrl1/n115 , \ctrl1/n114 , \ctrl1/n113 , \ctrl1/n112 , \ctrl1/n111 , 
        \ctrl1/n110 , \ctrl1/n109 , \ctrl1/n108 , \ctrl1/n107 , \ctrl1/n106 , 
        \ctrl1/n105 , \ctrl1/n104 , \ctrl1/n103 , \ctrl1/n102 , \ctrl1/n101 , 
        \ctrl1/n100 , \ctrl1/n99 , \ctrl1/n98 , \ctrl1/n97 , \ctrl1/n96 , 
        \ctrl1/n95 , \ctrl1/n374 , \fifo_1/n13 , \fifo_1/n11 , \ctrl2_dut/n15 , 
        \ctrl2_dut/n14 , \ctrl2_dut/n12 , ceg_net264, p, \apb_master1/p_state[0] , 
        \apb_master1/p_state[1] , \d[0] , \apb_master1/n864 , \apb_master1/n757 , 
        \apb_master1/n792 , \apb_master1/n863 , \d[1] , \d[2] , \d[3] , 
        \d[4] , \d[5] , \d[6] , \d[7] , \d[8] , \d[9] , \d[10] , 
        \d[11] , \d[12] , \d[13] , \d[14] , \d[15] , \d[16] , \d[17] , 
        \d[18] , \d[19] , \d[20] , \d[21] , \d[22] , \d[23] , \d[24] , 
        \d[25] , \d[26] , \d[27] , \d[28] , \d[29] , \d[30] , \d[31] , 
        \apb_master1/n115 , n800, ceg_net427, \apb_slave1/n1242 , ceg_net430, 
        \apb_slave1/n1180 , \apb_slave1/n19 , ceg_net281, \apb_slave1/n230 , 
        ceg_net473, \apb_slave1/n1196 , \apb_slave1/n229 , \ctrluart/n71 , 
        ceg_net441, \ctrluart/n283 , ceg_net500, \ctrluart/n290 , ceg_net339, 
        \ctrluart/n242 , \ctrluart/n66 , ceg_net340, \ctrluart/n70 , 
        ceg_net447, \ctrluart/n69 , \ctrluart/n68 , \ctrluart/n190 , 
        \ctrluart/n197 , \ctrluart/n204 , \ctrluart/n211 , \ctrluart/n218 , 
        \ctrluart/n225 , \ctrluart/n232 , \ctrluart/n239 , \uarttx_1/n429 , 
        \uarttx_1/r_SM_Main[2] , \uarttx_1/n438 , ceg_net490, \uarttx_1/n311 , 
        \uarttx_1/n433 , ceg_net462, \uarttx_1/r_SM_Main[1] , ceg_net460, 
        \uarttx_1/n497 , \uarttx_1/n421 , \uarttx_1/n425 , \uarttx_1/n344 , 
        \uarttx_1/n347 , \uarttx_1/n350 , \uarttx_1/n353 , \uarttx_1/n356 , 
        \uarttx_1/n359 , \uarttx_1/n375 , \uarttx_1/n379 , \uarttx_1/LessThan_8/n14 , 
        \uarttx_1/n479 , \clock_w~O , n604, n605, n606, n607, n608, 
        n609, n610, n611, n612, n613, n614, n615, n616, n617, 
        n618, n619, n620, n621, n622, n623, n624, n625, n626, 
        n627, n628, n629, n630, n631, n632, n633, n634, n635, 
        n636, n637, n638, n639, n640, n641, n642, n643, n644, 
        n645, n646, n647, n648, n649, n650, n651, n652, n653, 
        n654, n655, n656, n657, n658, n659, n660, n661, n662, 
        n663, n664, n665, n666, n667;
    
    EFX_LUT4 LUT__889 (.I0(\uartrx_1/r_Clock_Count[7] ), .I1(\uartrx_1/r_Clock_Count[8] ), 
            .I2(\uartrx_1/r_Clock_Count[9] ), .I3(\uartrx_1/r_Clock_Count[10] ), 
            .O(n605)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__889.LUTMASK = 16'h0001;
    EFX_FF \uartrx_1/r_Rx_Data~FF  (.D(\uartrx_1/r_Rx_Data_R ), .CE(1'b1), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Rx_Data )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(29)
    defparam \uartrx_1/r_Rx_Data~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Rx_Data~FF .CE_POLARITY = 1'b1;
    defparam \uartrx_1/r_Rx_Data~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Rx_Data~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Rx_Data~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Rx_Data~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Rx_Data~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_SM_Main[2]~FF  (.D(\uartrx_1/n55 ), .CE(1'b1), .CLK(\clock_w~O ), 
           .SR(\uartrx_1/n485 ), .Q(\uartrx_1/r_SM_Main[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_SM_Main[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[2]~FF .CE_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[2]~FF .SR_POLARITY = 1'b0;
    defparam \uartrx_1/r_SM_Main[2]~FF .D_POLARITY = 1'b0;
    defparam \uartrx_1/r_SM_Main[2]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_SM_Main[2]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_SM_Main[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[0]~FF  (.D(\uartrx_1/r_Rx_Data ), .CE(\uartrx_1/n509 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\b[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \b[0]~FF .CLK_POLARITY = 1'b1;
    defparam \b[0]~FF .CE_POLARITY = 1'b1;
    defparam \b[0]~FF .SR_POLARITY = 1'b1;
    defparam \b[0]~FF .D_POLARITY = 1'b0;
    defparam \b[0]~FF .SR_SYNC = 1'b1;
    defparam \b[0]~FF .SR_VALUE = 1'b0;
    defparam \b[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[0]~FF  (.D(\uartrx_1/n438 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[0]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \a~FF  (.D(\uartrx_1/n481 ), .CE(ceg_net464), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(a)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \a~FF .CLK_POLARITY = 1'b1;
    defparam \a~FF .CE_POLARITY = 1'b0;
    defparam \a~FF .SR_POLARITY = 1'b1;
    defparam \a~FF .D_POLARITY = 1'b1;
    defparam \a~FF .SR_SYNC = 1'b1;
    defparam \a~FF .SR_VALUE = 1'b0;
    defparam \a~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Bit_Index[0]~FF  (.D(\uartrx_1/n442 ), .CE(ceg_net371), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Bit_Index[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Bit_Index[0]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_SM_Main[1]~FF  (.D(\uartrx_1/n431 ), .CE(1'b1), .CLK(\clock_w~O ), 
           .SR(\uartrx_1/r_SM_Main[2] ), .Q(\uartrx_1/r_SM_Main[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_SM_Main[0]~FF  (.D(\uartrx_1/n435 ), .CE(1'b1), .CLK(\clock_w~O ), 
           .SR(\uartrx_1/r_SM_Main[2] ), .Q(\uartrx_1/r_SM_Main[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Rx_Data_R~FF  (.D(i_Rx_Serial), .CE(1'b1), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\uartrx_1/r_Rx_Data_R )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(29)
    defparam \uartrx_1/r_Rx_Data_R~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Rx_Data_R~FF .CE_POLARITY = 1'b1;
    defparam \uartrx_1/r_Rx_Data_R~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Rx_Data_R~FF .D_POLARITY = 1'b0;
    defparam \uartrx_1/r_Rx_Data_R~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Rx_Data_R~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Rx_Data_R~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[1]~FF  (.D(\uartrx_1/r_Rx_Data ), .CE(\uartrx_1/n489 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\b[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \b[1]~FF .CLK_POLARITY = 1'b1;
    defparam \b[1]~FF .CE_POLARITY = 1'b1;
    defparam \b[1]~FF .SR_POLARITY = 1'b1;
    defparam \b[1]~FF .D_POLARITY = 1'b0;
    defparam \b[1]~FF .SR_SYNC = 1'b1;
    defparam \b[1]~FF .SR_VALUE = 1'b0;
    defparam \b[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[2]~FF  (.D(\uartrx_1/r_Rx_Data ), .CE(\uartrx_1/n491 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\b[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \b[2]~FF .CLK_POLARITY = 1'b1;
    defparam \b[2]~FF .CE_POLARITY = 1'b1;
    defparam \b[2]~FF .SR_POLARITY = 1'b1;
    defparam \b[2]~FF .D_POLARITY = 1'b0;
    defparam \b[2]~FF .SR_SYNC = 1'b1;
    defparam \b[2]~FF .SR_VALUE = 1'b0;
    defparam \b[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[3]~FF  (.D(\uartrx_1/r_Rx_Data ), .CE(\uartrx_1/n493 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\b[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \b[3]~FF .CLK_POLARITY = 1'b1;
    defparam \b[3]~FF .CE_POLARITY = 1'b1;
    defparam \b[3]~FF .SR_POLARITY = 1'b1;
    defparam \b[3]~FF .D_POLARITY = 1'b0;
    defparam \b[3]~FF .SR_SYNC = 1'b1;
    defparam \b[3]~FF .SR_VALUE = 1'b0;
    defparam \b[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[4]~FF  (.D(\uartrx_1/r_Rx_Data ), .CE(\uartrx_1/n495 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\b[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \b[4]~FF .CLK_POLARITY = 1'b1;
    defparam \b[4]~FF .CE_POLARITY = 1'b1;
    defparam \b[4]~FF .SR_POLARITY = 1'b1;
    defparam \b[4]~FF .D_POLARITY = 1'b0;
    defparam \b[4]~FF .SR_SYNC = 1'b1;
    defparam \b[4]~FF .SR_VALUE = 1'b0;
    defparam \b[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[5]~FF  (.D(\uartrx_1/r_Rx_Data ), .CE(\uartrx_1/n497 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\b[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \b[5]~FF .CLK_POLARITY = 1'b1;
    defparam \b[5]~FF .CE_POLARITY = 1'b1;
    defparam \b[5]~FF .SR_POLARITY = 1'b1;
    defparam \b[5]~FF .D_POLARITY = 1'b0;
    defparam \b[5]~FF .SR_SYNC = 1'b1;
    defparam \b[5]~FF .SR_VALUE = 1'b0;
    defparam \b[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[6]~FF  (.D(\uartrx_1/r_Rx_Data ), .CE(\uartrx_1/n499 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\b[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \b[6]~FF .CLK_POLARITY = 1'b1;
    defparam \b[6]~FF .CE_POLARITY = 1'b1;
    defparam \b[6]~FF .SR_POLARITY = 1'b1;
    defparam \b[6]~FF .D_POLARITY = 1'b0;
    defparam \b[6]~FF .SR_SYNC = 1'b1;
    defparam \b[6]~FF .SR_VALUE = 1'b0;
    defparam \b[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \b[7]~FF  (.D(\uartrx_1/r_Rx_Data ), .CE(\uartrx_1/n504 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\b[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \b[7]~FF .CLK_POLARITY = 1'b1;
    defparam \b[7]~FF .CE_POLARITY = 1'b1;
    defparam \b[7]~FF .SR_POLARITY = 1'b1;
    defparam \b[7]~FF .D_POLARITY = 1'b0;
    defparam \b[7]~FF .SR_SYNC = 1'b1;
    defparam \b[7]~FF .SR_VALUE = 1'b0;
    defparam \b[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[1]~FF  (.D(\uartrx_1/n365 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[1]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[2]~FF  (.D(\uartrx_1/n368 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[2]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[3]~FF  (.D(\uartrx_1/n371 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[3]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[4]~FF  (.D(\uartrx_1/n374 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[4]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[5]~FF  (.D(\uartrx_1/n377 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[5]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[6]~FF  (.D(\uartrx_1/n380 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[6]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[7]~FF  (.D(\uartrx_1/n383 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[7]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[7]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[7]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[7]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[7]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[8]~FF  (.D(\uartrx_1/n386 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[8]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[8]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[8]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[8]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[8]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[9]~FF  (.D(\uartrx_1/n389 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[9]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[9]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[9]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[9]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[9]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Clock_Count[10]~FF  (.D(\uartrx_1/n392 ), .CE(ceg_net72), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Clock_Count[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Clock_Count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[10]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Clock_Count[10]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[10]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Clock_Count[10]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Clock_Count[10]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Clock_Count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Bit_Index[1]~FF  (.D(\uartrx_1/n396 ), .CE(ceg_net371), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Bit_Index[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Bit_Index[1]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uartrx_1/r_Bit_Index[2]~FF  (.D(\uartrx_1/n400 ), .CE(ceg_net371), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uartrx_1/r_Bit_Index[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uartrx.v(124)
    defparam \uartrx_1/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uartrx_1/r_Bit_Index[2]~FF .CE_POLARITY = 1'b0;
    defparam \uartrx_1/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uartrx_1/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uartrx_1/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uartrx_1/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uartrx_1/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/state[0]~FF  (.D(n787), .CE(ceg_net467), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/state[0]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/state[0]~FF .D_POLARITY = 1'b0;
    defparam \ctrl1/state[0]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/state[0]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[0]~FF  (.D(\ctrl1/temp_reg[0] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[0]~FF .CLK_POLARITY = 1'b1;
    defparam \f[0]~FF .CE_POLARITY = 1'b1;
    defparam \f[0]~FF .SR_POLARITY = 1'b1;
    defparam \f[0]~FF .D_POLARITY = 1'b1;
    defparam \f[0]~FF .SR_SYNC = 1'b1;
    defparam \f[0]~FF .SR_VALUE = 1'b0;
    defparam \f[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[0]~FF  (.D(\ctrl1/n536 ), .CE(ceg_net381), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[0]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/temp_reg[0]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[0]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[0]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[0]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/byte_count[0]~FF  (.D(\ctrl1/byte_count[0] ), .CE(ceg_net263), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrl1/byte_count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/byte_count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/byte_count[0]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/byte_count[0]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/byte_count[0]~FF .D_POLARITY = 1'b0;
    defparam \ctrl1/byte_count[0]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/byte_count[0]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/byte_count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/state[1]~FF  (.D(\ctrl1/n693 ), .CE(ceg_net467), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/state[1]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/state[1]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/state[1]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/state[1]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[1]~FF  (.D(\ctrl1/temp_reg[1] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[1]~FF .CLK_POLARITY = 1'b1;
    defparam \f[1]~FF .CE_POLARITY = 1'b1;
    defparam \f[1]~FF .SR_POLARITY = 1'b1;
    defparam \f[1]~FF .D_POLARITY = 1'b1;
    defparam \f[1]~FF .SR_SYNC = 1'b1;
    defparam \f[1]~FF .SR_VALUE = 1'b0;
    defparam \f[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[2]~FF  (.D(\ctrl1/temp_reg[2] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[2]~FF .CLK_POLARITY = 1'b1;
    defparam \f[2]~FF .CE_POLARITY = 1'b1;
    defparam \f[2]~FF .SR_POLARITY = 1'b1;
    defparam \f[2]~FF .D_POLARITY = 1'b1;
    defparam \f[2]~FF .SR_SYNC = 1'b1;
    defparam \f[2]~FF .SR_VALUE = 1'b0;
    defparam \f[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[3]~FF  (.D(\ctrl1/temp_reg[3] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[3]~FF .CLK_POLARITY = 1'b1;
    defparam \f[3]~FF .CE_POLARITY = 1'b1;
    defparam \f[3]~FF .SR_POLARITY = 1'b1;
    defparam \f[3]~FF .D_POLARITY = 1'b1;
    defparam \f[3]~FF .SR_SYNC = 1'b1;
    defparam \f[3]~FF .SR_VALUE = 1'b0;
    defparam \f[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[4]~FF  (.D(\ctrl1/temp_reg[4] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[4]~FF .CLK_POLARITY = 1'b1;
    defparam \f[4]~FF .CE_POLARITY = 1'b1;
    defparam \f[4]~FF .SR_POLARITY = 1'b1;
    defparam \f[4]~FF .D_POLARITY = 1'b1;
    defparam \f[4]~FF .SR_SYNC = 1'b1;
    defparam \f[4]~FF .SR_VALUE = 1'b0;
    defparam \f[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[5]~FF  (.D(\ctrl1/temp_reg[5] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[5]~FF .CLK_POLARITY = 1'b1;
    defparam \f[5]~FF .CE_POLARITY = 1'b1;
    defparam \f[5]~FF .SR_POLARITY = 1'b1;
    defparam \f[5]~FF .D_POLARITY = 1'b1;
    defparam \f[5]~FF .SR_SYNC = 1'b1;
    defparam \f[5]~FF .SR_VALUE = 1'b0;
    defparam \f[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[6]~FF  (.D(\ctrl1/temp_reg[6] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[6]~FF .CLK_POLARITY = 1'b1;
    defparam \f[6]~FF .CE_POLARITY = 1'b1;
    defparam \f[6]~FF .SR_POLARITY = 1'b1;
    defparam \f[6]~FF .D_POLARITY = 1'b1;
    defparam \f[6]~FF .SR_SYNC = 1'b1;
    defparam \f[6]~FF .SR_VALUE = 1'b0;
    defparam \f[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[7]~FF  (.D(\ctrl1/temp_reg[7] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[7]~FF .CLK_POLARITY = 1'b1;
    defparam \f[7]~FF .CE_POLARITY = 1'b1;
    defparam \f[7]~FF .SR_POLARITY = 1'b1;
    defparam \f[7]~FF .D_POLARITY = 1'b1;
    defparam \f[7]~FF .SR_SYNC = 1'b1;
    defparam \f[7]~FF .SR_VALUE = 1'b0;
    defparam \f[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[8]~FF  (.D(\ctrl1/temp_reg[8] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[8]~FF .CLK_POLARITY = 1'b1;
    defparam \f[8]~FF .CE_POLARITY = 1'b1;
    defparam \f[8]~FF .SR_POLARITY = 1'b1;
    defparam \f[8]~FF .D_POLARITY = 1'b1;
    defparam \f[8]~FF .SR_SYNC = 1'b1;
    defparam \f[8]~FF .SR_VALUE = 1'b0;
    defparam \f[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[9]~FF  (.D(\ctrl1/temp_reg[9] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[9]~FF .CLK_POLARITY = 1'b1;
    defparam \f[9]~FF .CE_POLARITY = 1'b1;
    defparam \f[9]~FF .SR_POLARITY = 1'b1;
    defparam \f[9]~FF .D_POLARITY = 1'b1;
    defparam \f[9]~FF .SR_SYNC = 1'b1;
    defparam \f[9]~FF .SR_VALUE = 1'b0;
    defparam \f[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[10]~FF  (.D(\ctrl1/temp_reg[10] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[10]~FF .CLK_POLARITY = 1'b1;
    defparam \f[10]~FF .CE_POLARITY = 1'b1;
    defparam \f[10]~FF .SR_POLARITY = 1'b1;
    defparam \f[10]~FF .D_POLARITY = 1'b1;
    defparam \f[10]~FF .SR_SYNC = 1'b1;
    defparam \f[10]~FF .SR_VALUE = 1'b0;
    defparam \f[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[11]~FF  (.D(\ctrl1/temp_reg[11] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[11]~FF .CLK_POLARITY = 1'b1;
    defparam \f[11]~FF .CE_POLARITY = 1'b1;
    defparam \f[11]~FF .SR_POLARITY = 1'b1;
    defparam \f[11]~FF .D_POLARITY = 1'b1;
    defparam \f[11]~FF .SR_SYNC = 1'b1;
    defparam \f[11]~FF .SR_VALUE = 1'b0;
    defparam \f[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[12]~FF  (.D(\ctrl1/temp_reg[12] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[12]~FF .CLK_POLARITY = 1'b1;
    defparam \f[12]~FF .CE_POLARITY = 1'b1;
    defparam \f[12]~FF .SR_POLARITY = 1'b1;
    defparam \f[12]~FF .D_POLARITY = 1'b1;
    defparam \f[12]~FF .SR_SYNC = 1'b1;
    defparam \f[12]~FF .SR_VALUE = 1'b0;
    defparam \f[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[13]~FF  (.D(\ctrl1/temp_reg[13] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[13]~FF .CLK_POLARITY = 1'b1;
    defparam \f[13]~FF .CE_POLARITY = 1'b1;
    defparam \f[13]~FF .SR_POLARITY = 1'b1;
    defparam \f[13]~FF .D_POLARITY = 1'b1;
    defparam \f[13]~FF .SR_SYNC = 1'b1;
    defparam \f[13]~FF .SR_VALUE = 1'b0;
    defparam \f[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[14]~FF  (.D(\ctrl1/temp_reg[14] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[14]~FF .CLK_POLARITY = 1'b1;
    defparam \f[14]~FF .CE_POLARITY = 1'b1;
    defparam \f[14]~FF .SR_POLARITY = 1'b1;
    defparam \f[14]~FF .D_POLARITY = 1'b1;
    defparam \f[14]~FF .SR_SYNC = 1'b1;
    defparam \f[14]~FF .SR_VALUE = 1'b0;
    defparam \f[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[15]~FF  (.D(\ctrl1/temp_reg[15] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[15]~FF .CLK_POLARITY = 1'b1;
    defparam \f[15]~FF .CE_POLARITY = 1'b1;
    defparam \f[15]~FF .SR_POLARITY = 1'b1;
    defparam \f[15]~FF .D_POLARITY = 1'b1;
    defparam \f[15]~FF .SR_SYNC = 1'b1;
    defparam \f[15]~FF .SR_VALUE = 1'b0;
    defparam \f[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[16]~FF  (.D(\ctrl1/temp_reg[16] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[16]~FF .CLK_POLARITY = 1'b1;
    defparam \f[16]~FF .CE_POLARITY = 1'b1;
    defparam \f[16]~FF .SR_POLARITY = 1'b1;
    defparam \f[16]~FF .D_POLARITY = 1'b1;
    defparam \f[16]~FF .SR_SYNC = 1'b1;
    defparam \f[16]~FF .SR_VALUE = 1'b0;
    defparam \f[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[17]~FF  (.D(\ctrl1/temp_reg[17] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[17]~FF .CLK_POLARITY = 1'b1;
    defparam \f[17]~FF .CE_POLARITY = 1'b1;
    defparam \f[17]~FF .SR_POLARITY = 1'b1;
    defparam \f[17]~FF .D_POLARITY = 1'b1;
    defparam \f[17]~FF .SR_SYNC = 1'b1;
    defparam \f[17]~FF .SR_VALUE = 1'b0;
    defparam \f[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[18]~FF  (.D(\ctrl1/temp_reg[18] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[18]~FF .CLK_POLARITY = 1'b1;
    defparam \f[18]~FF .CE_POLARITY = 1'b1;
    defparam \f[18]~FF .SR_POLARITY = 1'b1;
    defparam \f[18]~FF .D_POLARITY = 1'b1;
    defparam \f[18]~FF .SR_SYNC = 1'b1;
    defparam \f[18]~FF .SR_VALUE = 1'b0;
    defparam \f[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[19]~FF  (.D(\ctrl1/temp_reg[19] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[19]~FF .CLK_POLARITY = 1'b1;
    defparam \f[19]~FF .CE_POLARITY = 1'b1;
    defparam \f[19]~FF .SR_POLARITY = 1'b1;
    defparam \f[19]~FF .D_POLARITY = 1'b1;
    defparam \f[19]~FF .SR_SYNC = 1'b1;
    defparam \f[19]~FF .SR_VALUE = 1'b0;
    defparam \f[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[20]~FF  (.D(\ctrl1/temp_reg[20] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[20]~FF .CLK_POLARITY = 1'b1;
    defparam \f[20]~FF .CE_POLARITY = 1'b1;
    defparam \f[20]~FF .SR_POLARITY = 1'b1;
    defparam \f[20]~FF .D_POLARITY = 1'b1;
    defparam \f[20]~FF .SR_SYNC = 1'b1;
    defparam \f[20]~FF .SR_VALUE = 1'b0;
    defparam \f[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[21]~FF  (.D(\ctrl1/temp_reg[21] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[21]~FF .CLK_POLARITY = 1'b1;
    defparam \f[21]~FF .CE_POLARITY = 1'b1;
    defparam \f[21]~FF .SR_POLARITY = 1'b1;
    defparam \f[21]~FF .D_POLARITY = 1'b1;
    defparam \f[21]~FF .SR_SYNC = 1'b1;
    defparam \f[21]~FF .SR_VALUE = 1'b0;
    defparam \f[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[22]~FF  (.D(\ctrl1/temp_reg[22] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[22]~FF .CLK_POLARITY = 1'b1;
    defparam \f[22]~FF .CE_POLARITY = 1'b1;
    defparam \f[22]~FF .SR_POLARITY = 1'b1;
    defparam \f[22]~FF .D_POLARITY = 1'b1;
    defparam \f[22]~FF .SR_SYNC = 1'b1;
    defparam \f[22]~FF .SR_VALUE = 1'b0;
    defparam \f[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[23]~FF  (.D(\ctrl1/temp_reg[23] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[23]~FF .CLK_POLARITY = 1'b1;
    defparam \f[23]~FF .CE_POLARITY = 1'b1;
    defparam \f[23]~FF .SR_POLARITY = 1'b1;
    defparam \f[23]~FF .D_POLARITY = 1'b1;
    defparam \f[23]~FF .SR_SYNC = 1'b1;
    defparam \f[23]~FF .SR_VALUE = 1'b0;
    defparam \f[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[24]~FF  (.D(\ctrl1/temp_reg[24] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[24]~FF .CLK_POLARITY = 1'b1;
    defparam \f[24]~FF .CE_POLARITY = 1'b1;
    defparam \f[24]~FF .SR_POLARITY = 1'b1;
    defparam \f[24]~FF .D_POLARITY = 1'b1;
    defparam \f[24]~FF .SR_SYNC = 1'b1;
    defparam \f[24]~FF .SR_VALUE = 1'b0;
    defparam \f[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[25]~FF  (.D(\ctrl1/temp_reg[25] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[25]~FF .CLK_POLARITY = 1'b1;
    defparam \f[25]~FF .CE_POLARITY = 1'b1;
    defparam \f[25]~FF .SR_POLARITY = 1'b1;
    defparam \f[25]~FF .D_POLARITY = 1'b1;
    defparam \f[25]~FF .SR_SYNC = 1'b1;
    defparam \f[25]~FF .SR_VALUE = 1'b0;
    defparam \f[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[26]~FF  (.D(\ctrl1/temp_reg[26] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[26]~FF .CLK_POLARITY = 1'b1;
    defparam \f[26]~FF .CE_POLARITY = 1'b1;
    defparam \f[26]~FF .SR_POLARITY = 1'b1;
    defparam \f[26]~FF .D_POLARITY = 1'b1;
    defparam \f[26]~FF .SR_SYNC = 1'b1;
    defparam \f[26]~FF .SR_VALUE = 1'b0;
    defparam \f[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[27]~FF  (.D(\ctrl1/temp_reg[27] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[27] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[27]~FF .CLK_POLARITY = 1'b1;
    defparam \f[27]~FF .CE_POLARITY = 1'b1;
    defparam \f[27]~FF .SR_POLARITY = 1'b1;
    defparam \f[27]~FF .D_POLARITY = 1'b1;
    defparam \f[27]~FF .SR_SYNC = 1'b1;
    defparam \f[27]~FF .SR_VALUE = 1'b0;
    defparam \f[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[28]~FF  (.D(\ctrl1/temp_reg[28] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[28] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[28]~FF .CLK_POLARITY = 1'b1;
    defparam \f[28]~FF .CE_POLARITY = 1'b1;
    defparam \f[28]~FF .SR_POLARITY = 1'b1;
    defparam \f[28]~FF .D_POLARITY = 1'b1;
    defparam \f[28]~FF .SR_SYNC = 1'b1;
    defparam \f[28]~FF .SR_VALUE = 1'b0;
    defparam \f[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[29]~FF  (.D(\ctrl1/temp_reg[29] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[29] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[29]~FF .CLK_POLARITY = 1'b1;
    defparam \f[29]~FF .CE_POLARITY = 1'b1;
    defparam \f[29]~FF .SR_POLARITY = 1'b1;
    defparam \f[29]~FF .D_POLARITY = 1'b1;
    defparam \f[29]~FF .SR_SYNC = 1'b1;
    defparam \f[29]~FF .SR_VALUE = 1'b0;
    defparam \f[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[30]~FF  (.D(\ctrl1/temp_reg[30] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[30] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[30]~FF .CLK_POLARITY = 1'b1;
    defparam \f[30]~FF .CE_POLARITY = 1'b1;
    defparam \f[30]~FF .SR_POLARITY = 1'b1;
    defparam \f[30]~FF .D_POLARITY = 1'b1;
    defparam \f[30]~FF .SR_SYNC = 1'b1;
    defparam \f[30]~FF .SR_VALUE = 1'b0;
    defparam \f[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f[31]~FF  (.D(\ctrl1/temp_reg[31] ), .CE(\ctrl1/n609 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\f[31] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \f[31]~FF .CLK_POLARITY = 1'b1;
    defparam \f[31]~FF .CE_POLARITY = 1'b1;
    defparam \f[31]~FF .SR_POLARITY = 1'b1;
    defparam \f[31]~FF .D_POLARITY = 1'b1;
    defparam \f[31]~FF .SR_SYNC = 1'b1;
    defparam \f[31]~FF .SR_VALUE = 1'b0;
    defparam \f[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[1]~FF  (.D(\ctrl1/n459 ), .CE(ceg_net381), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[1]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/temp_reg[1]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[1]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[1]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[1]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[2]~FF  (.D(\ctrl1/n461 ), .CE(ceg_net381), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[2]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[2]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/temp_reg[2]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[2]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[2]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[2]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[3]~FF  (.D(\ctrl1/n463 ), .CE(ceg_net381), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[3]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[3]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/temp_reg[3]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[3]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[3]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[3]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[4]~FF  (.D(\ctrl1/n465 ), .CE(ceg_net381), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[4]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[4]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/temp_reg[4]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[4]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[4]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[4]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[5]~FF  (.D(\ctrl1/n467 ), .CE(ceg_net381), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[5]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[5]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/temp_reg[5]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[5]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[5]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[5]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[6]~FF  (.D(\ctrl1/n469 ), .CE(ceg_net381), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[6]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[6]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/temp_reg[6]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[6]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[6]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[6]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[7]~FF  (.D(\ctrl1/n471 ), .CE(ceg_net381), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[7]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[7]~FF .CE_POLARITY = 1'b0;
    defparam \ctrl1/temp_reg[7]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[7]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[7]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[7]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[8]~FF  (.D(\ctrl1/n118 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[8]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[8]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[8]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[8]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[8]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[8]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[9]~FF  (.D(\ctrl1/n117 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[9]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[9]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[9]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[9]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[9]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[9]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[10]~FF  (.D(\ctrl1/n116 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[10]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[10]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[10]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[10]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[10]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[10]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[11]~FF  (.D(\ctrl1/n115 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[11]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[11]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[11]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[11]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[11]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[11]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[12]~FF  (.D(\ctrl1/n114 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[12]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[12]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[12]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[12]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[12]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[12]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[13]~FF  (.D(\ctrl1/n113 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[13]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[13]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[13]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[13]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[13]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[13]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[14]~FF  (.D(\ctrl1/n112 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[14]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[14]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[14]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[14]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[14]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[14]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[15]~FF  (.D(\ctrl1/n111 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[15]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[15]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[15]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[15]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[15]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[15]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[16]~FF  (.D(\ctrl1/n110 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[16]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[16]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[16]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[16]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[16]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[16]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[17]~FF  (.D(\ctrl1/n109 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[17]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[17]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[17]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[17]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[17]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[17]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[18]~FF  (.D(\ctrl1/n108 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[18]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[18]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[18]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[18]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[18]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[18]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[19]~FF  (.D(\ctrl1/n107 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[19]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[19]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[19]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[19]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[19]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[19]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[20]~FF  (.D(\ctrl1/n106 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[20]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[20]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[20]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[20]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[20]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[20]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[21]~FF  (.D(\ctrl1/n105 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[21]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[21]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[21]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[21]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[21]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[21]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[22]~FF  (.D(\ctrl1/n104 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[22]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[22]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[22]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[22]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[22]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[22]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[23]~FF  (.D(\ctrl1/n103 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[23]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[23]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[23]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[23]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[23]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[23]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[24]~FF  (.D(\ctrl1/n102 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[24]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[24]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[24]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[24]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[24]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[24]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[25]~FF  (.D(\ctrl1/n101 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[25]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[25]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[25]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[25]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[25]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[25]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[26]~FF  (.D(\ctrl1/n100 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[26]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[26]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[26]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[26]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[26]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[26]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[27]~FF  (.D(\ctrl1/n99 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[27] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[27]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[27]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[27]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[27]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[27]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[27]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[28]~FF  (.D(\ctrl1/n98 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[28] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[28]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[28]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[28]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[28]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[28]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[28]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[29]~FF  (.D(\ctrl1/n97 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[29] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[29]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[29]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[29]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[29]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[29]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[29]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[30]~FF  (.D(\ctrl1/n96 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[30] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[30]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[30]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[30]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[30]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[30]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[30]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/temp_reg[31]~FF  (.D(\ctrl1/n95 ), .CE(ceg_net263), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ctrl1/temp_reg[31] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/temp_reg[31]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[31]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[31]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[31]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/temp_reg[31]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/temp_reg[31]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/temp_reg[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl1/byte_count[1]~FF  (.D(\ctrl1/n374 ), .CE(ceg_net263), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrl1/byte_count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl_8_32.v(52)
    defparam \ctrl1/byte_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl1/byte_count[1]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl1/byte_count[1]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl1/byte_count[1]~FF .D_POLARITY = 1'b1;
    defparam \ctrl1/byte_count[1]~FF .SR_SYNC = 1'b1;
    defparam \ctrl1/byte_count[1]~FF .SR_VALUE = 1'b0;
    defparam \ctrl1/byte_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/rd_ptr[0]~FF  (.D(\fifo_1/rd_ptr[0] ), .CE(\fifo_1/n13 ), 
           .CLK(\clock_w~O ), .SR(reset), .Q(\fifo_1/rd_ptr[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/rd_ptr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[0]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[0]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/rd_ptr[0]~FF .D_POLARITY = 1'b0;
    defparam \fifo_1/rd_ptr[0]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/rd_ptr[0]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/rd_ptr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/wr_ptr[0]~FF  (.D(\fifo_1/wr_ptr[0] ), .CE(\fifo_1/n11 ), 
           .CLK(\clock_w~O ), .SR(reset), .Q(\fifo_1/wr_ptr[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/wr_ptr[0]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[0]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[0]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/wr_ptr[0]~FF .D_POLARITY = 1'b0;
    defparam \fifo_1/wr_ptr[0]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/wr_ptr[0]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/wr_ptr[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/rd_ptr[1]~FF  (.D(n105), .CE(\fifo_1/n13 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/rd_ptr[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/rd_ptr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[1]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[1]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/rd_ptr[1]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[1]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/rd_ptr[1]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/rd_ptr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/rd_ptr[2]~FF  (.D(n276), .CE(\fifo_1/n13 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/rd_ptr[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/rd_ptr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[2]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[2]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/rd_ptr[2]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[2]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/rd_ptr[2]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/rd_ptr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/rd_ptr[3]~FF  (.D(n274), .CE(\fifo_1/n13 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/rd_ptr[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/rd_ptr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[3]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[3]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/rd_ptr[3]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[3]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/rd_ptr[3]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/rd_ptr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/rd_ptr[4]~FF  (.D(n272), .CE(\fifo_1/n13 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/rd_ptr[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/rd_ptr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[4]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[4]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/rd_ptr[4]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[4]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/rd_ptr[4]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/rd_ptr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/rd_ptr[5]~FF  (.D(n271), .CE(\fifo_1/n13 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/rd_ptr[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/rd_ptr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[5]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[5]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/rd_ptr[5]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/rd_ptr[5]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/rd_ptr[5]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/rd_ptr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/wr_ptr[1]~FF  (.D(n285), .CE(\fifo_1/n11 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/wr_ptr[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/wr_ptr[1]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[1]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[1]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/wr_ptr[1]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[1]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/wr_ptr[1]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/wr_ptr[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/wr_ptr[2]~FF  (.D(n283), .CE(\fifo_1/n11 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/wr_ptr[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/wr_ptr[2]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[2]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[2]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/wr_ptr[2]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[2]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/wr_ptr[2]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/wr_ptr[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/wr_ptr[3]~FF  (.D(n281), .CE(\fifo_1/n11 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/wr_ptr[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/wr_ptr[3]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[3]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[3]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/wr_ptr[3]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[3]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/wr_ptr[3]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/wr_ptr[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/wr_ptr[4]~FF  (.D(n279), .CE(\fifo_1/n11 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/wr_ptr[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/wr_ptr[4]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[4]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[4]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/wr_ptr[4]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[4]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/wr_ptr[4]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/wr_ptr[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \fifo_1/wr_ptr[5]~FF  (.D(n278), .CE(\fifo_1/n11 ), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\fifo_1/wr_ptr[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/wr_ptr[5]~FF .CLK_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[5]~FF .CE_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[5]~FF .SR_POLARITY = 1'b0;
    defparam \fifo_1/wr_ptr[5]~FF .D_POLARITY = 1'b1;
    defparam \fifo_1/wr_ptr[5]~FF .SR_SYNC = 1'b0;
    defparam \fifo_1/wr_ptr[5]~FF .SR_VALUE = 1'b0;
    defparam \fifo_1/wr_ptr[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl2_dut/state[0]~FF  (.D(\ctrl2_dut/n15 ), .CE(1'b1), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\ctrl2_dut/state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\ctrl2.v(46)
    defparam \ctrl2_dut/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl2_dut/state[0]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl2_dut/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \ctrl2_dut/state[0]~FF .D_POLARITY = 1'b1;
    defparam \ctrl2_dut/state[0]~FF .SR_SYNC = 1'b0;
    defparam \ctrl2_dut/state[0]~FF .SR_VALUE = 1'b0;
    defparam \ctrl2_dut/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl2_dut/next_state[0]~FF  (.D(\ctrl2_dut/n15 ), .CE(reset), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrl2_dut/next_state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl2.v(46)
    defparam \ctrl2_dut/next_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl2_dut/next_state[0]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl2_dut/next_state[0]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl2_dut/next_state[0]~FF .D_POLARITY = 1'b1;
    defparam \ctrl2_dut/next_state[0]~FF .SR_SYNC = 1'b1;
    defparam \ctrl2_dut/next_state[0]~FF .SR_VALUE = 1'b0;
    defparam \ctrl2_dut/next_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl2_dut/state[1]~FF  (.D(\ctrl2_dut/n14 ), .CE(1'b1), .CLK(\clock_w~O ), 
           .SR(reset), .Q(\ctrl2_dut/state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\ctrl2.v(46)
    defparam \ctrl2_dut/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl2_dut/state[1]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl2_dut/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \ctrl2_dut/state[1]~FF .D_POLARITY = 1'b1;
    defparam \ctrl2_dut/state[1]~FF .SR_SYNC = 1'b0;
    defparam \ctrl2_dut/state[1]~FF .SR_VALUE = 1'b0;
    defparam \ctrl2_dut/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \xx~FF  (.D(\ctrl2_dut/n12 ), .CE(ceg_net264), .CLK(\clock_w~O ), 
           .SR(reset), .Q(xx)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\ctrl2.v(46)
    defparam \xx~FF .CLK_POLARITY = 1'b1;
    defparam \xx~FF .CE_POLARITY = 1'b0;
    defparam \xx~FF .SR_POLARITY = 1'b0;
    defparam \xx~FF .D_POLARITY = 1'b1;
    defparam \xx~FF .SR_SYNC = 1'b0;
    defparam \xx~FF .SR_VALUE = 1'b0;
    defparam \xx~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrl2_dut/next_state[1]~FF  (.D(\ctrl2_dut/n14 ), .CE(reset), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrl2_dut/next_state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl2.v(46)
    defparam \ctrl2_dut/next_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrl2_dut/next_state[1]~FF .CE_POLARITY = 1'b1;
    defparam \ctrl2_dut/next_state[1]~FF .SR_POLARITY = 1'b1;
    defparam \ctrl2_dut/next_state[1]~FF .D_POLARITY = 1'b1;
    defparam \ctrl2_dut/next_state[1]~FF .SR_SYNC = 1'b1;
    defparam \ctrl2_dut/next_state[1]~FF .SR_VALUE = 1'b0;
    defparam \ctrl2_dut/next_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bb~FF  (.D(p), .CE(\apb_master1/p_state[0] ), .CLK(\clock_w~O ), 
           .SR(\apb_master1/p_state[1] ), .Q(bb)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \bb~FF .CLK_POLARITY = 1'b1;
    defparam \bb~FF .CE_POLARITY = 1'b0;
    defparam \bb~FF .SR_POLARITY = 1'b0;
    defparam \bb~FF .D_POLARITY = 1'b0;
    defparam \bb~FF .SR_SYNC = 1'b1;
    defparam \bb~FF .SR_VALUE = 1'b0;
    defparam \bb~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[0]~FF  (.D(\d[0] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[0]~FF .CE_POLARITY = 1'b1;
    defparam \ee[0]~FF .SR_POLARITY = 1'b1;
    defparam \ee[0]~FF .D_POLARITY = 1'b1;
    defparam \ee[0]~FF .SR_SYNC = 1'b1;
    defparam \ee[0]~FF .SR_VALUE = 1'b0;
    defparam \ee[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \aaa~FF  (.D(\apb_master1/n757 ), .CE(\apb_master1/p_state[1] ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(aaa)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \aaa~FF .CLK_POLARITY = 1'b1;
    defparam \aaa~FF .CE_POLARITY = 1'b0;
    defparam \aaa~FF .SR_POLARITY = 1'b1;
    defparam \aaa~FF .D_POLARITY = 1'b1;
    defparam \aaa~FF .SR_SYNC = 1'b1;
    defparam \aaa~FF .SR_VALUE = 1'b0;
    defparam \aaa~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \apb_master1/p_state[0]~FF  (.D(xx), .CE(1'b1), .CLK(\clock_w~O ), 
           .SR(\apb_master1/n792 ), .Q(\apb_master1/p_state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \apb_master1/p_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \apb_master1/p_state[0]~FF .CE_POLARITY = 1'b1;
    defparam \apb_master1/p_state[0]~FF .SR_POLARITY = 1'b1;
    defparam \apb_master1/p_state[0]~FF .D_POLARITY = 1'b1;
    defparam \apb_master1/p_state[0]~FF .SR_SYNC = 1'b1;
    defparam \apb_master1/p_state[0]~FF .SR_VALUE = 1'b0;
    defparam \apb_master1/p_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \apb_master1/r_ext_write~FF  (.D(write), .CE(\apb_master1/n863 ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\apb_master1/r_ext_write )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \apb_master1/r_ext_write~FF .CLK_POLARITY = 1'b1;
    defparam \apb_master1/r_ext_write~FF .CE_POLARITY = 1'b1;
    defparam \apb_master1/r_ext_write~FF .SR_POLARITY = 1'b1;
    defparam \apb_master1/r_ext_write~FF .D_POLARITY = 1'b1;
    defparam \apb_master1/r_ext_write~FF .SR_SYNC = 1'b1;
    defparam \apb_master1/r_ext_write~FF .SR_VALUE = 1'b0;
    defparam \apb_master1/r_ext_write~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \d3[1]~FF  (.D(1'b1), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\d3[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \d3[1]~FF .CLK_POLARITY = 1'b1;
    defparam \d3[1]~FF .CE_POLARITY = 1'b1;
    defparam \d3[1]~FF .SR_POLARITY = 1'b1;
    defparam \d3[1]~FF .D_POLARITY = 1'b1;
    defparam \d3[1]~FF .SR_SYNC = 1'b1;
    defparam \d3[1]~FF .SR_VALUE = 1'b0;
    defparam \d3[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[1]~FF  (.D(\d[1] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[1]~FF .CE_POLARITY = 1'b1;
    defparam \ee[1]~FF .SR_POLARITY = 1'b1;
    defparam \ee[1]~FF .D_POLARITY = 1'b1;
    defparam \ee[1]~FF .SR_SYNC = 1'b1;
    defparam \ee[1]~FF .SR_VALUE = 1'b0;
    defparam \ee[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[2]~FF  (.D(\d[2] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[2]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[2]~FF .CE_POLARITY = 1'b1;
    defparam \ee[2]~FF .SR_POLARITY = 1'b1;
    defparam \ee[2]~FF .D_POLARITY = 1'b1;
    defparam \ee[2]~FF .SR_SYNC = 1'b1;
    defparam \ee[2]~FF .SR_VALUE = 1'b0;
    defparam \ee[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[3]~FF  (.D(\d[3] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[3]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[3]~FF .CE_POLARITY = 1'b1;
    defparam \ee[3]~FF .SR_POLARITY = 1'b1;
    defparam \ee[3]~FF .D_POLARITY = 1'b1;
    defparam \ee[3]~FF .SR_SYNC = 1'b1;
    defparam \ee[3]~FF .SR_VALUE = 1'b0;
    defparam \ee[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[4]~FF  (.D(\d[4] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[4]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[4]~FF .CE_POLARITY = 1'b1;
    defparam \ee[4]~FF .SR_POLARITY = 1'b1;
    defparam \ee[4]~FF .D_POLARITY = 1'b1;
    defparam \ee[4]~FF .SR_SYNC = 1'b1;
    defparam \ee[4]~FF .SR_VALUE = 1'b0;
    defparam \ee[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[5]~FF  (.D(\d[5] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[5]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[5]~FF .CE_POLARITY = 1'b1;
    defparam \ee[5]~FF .SR_POLARITY = 1'b1;
    defparam \ee[5]~FF .D_POLARITY = 1'b1;
    defparam \ee[5]~FF .SR_SYNC = 1'b1;
    defparam \ee[5]~FF .SR_VALUE = 1'b0;
    defparam \ee[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[6]~FF  (.D(\d[6] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[6]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[6]~FF .CE_POLARITY = 1'b1;
    defparam \ee[6]~FF .SR_POLARITY = 1'b1;
    defparam \ee[6]~FF .D_POLARITY = 1'b1;
    defparam \ee[6]~FF .SR_SYNC = 1'b1;
    defparam \ee[6]~FF .SR_VALUE = 1'b0;
    defparam \ee[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[7]~FF  (.D(\d[7] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[7]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[7]~FF .CE_POLARITY = 1'b1;
    defparam \ee[7]~FF .SR_POLARITY = 1'b1;
    defparam \ee[7]~FF .D_POLARITY = 1'b1;
    defparam \ee[7]~FF .SR_SYNC = 1'b1;
    defparam \ee[7]~FF .SR_VALUE = 1'b0;
    defparam \ee[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[8]~FF  (.D(\d[8] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[8]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[8]~FF .CE_POLARITY = 1'b1;
    defparam \ee[8]~FF .SR_POLARITY = 1'b1;
    defparam \ee[8]~FF .D_POLARITY = 1'b1;
    defparam \ee[8]~FF .SR_SYNC = 1'b1;
    defparam \ee[8]~FF .SR_VALUE = 1'b0;
    defparam \ee[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[9]~FF  (.D(\d[9] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[9]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[9]~FF .CE_POLARITY = 1'b1;
    defparam \ee[9]~FF .SR_POLARITY = 1'b1;
    defparam \ee[9]~FF .D_POLARITY = 1'b1;
    defparam \ee[9]~FF .SR_SYNC = 1'b1;
    defparam \ee[9]~FF .SR_VALUE = 1'b0;
    defparam \ee[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[10]~FF  (.D(\d[10] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[10]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[10]~FF .CE_POLARITY = 1'b1;
    defparam \ee[10]~FF .SR_POLARITY = 1'b1;
    defparam \ee[10]~FF .D_POLARITY = 1'b1;
    defparam \ee[10]~FF .SR_SYNC = 1'b1;
    defparam \ee[10]~FF .SR_VALUE = 1'b0;
    defparam \ee[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[11]~FF  (.D(\d[11] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[11]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[11]~FF .CE_POLARITY = 1'b1;
    defparam \ee[11]~FF .SR_POLARITY = 1'b1;
    defparam \ee[11]~FF .D_POLARITY = 1'b1;
    defparam \ee[11]~FF .SR_SYNC = 1'b1;
    defparam \ee[11]~FF .SR_VALUE = 1'b0;
    defparam \ee[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[12]~FF  (.D(\d[12] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[12]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[12]~FF .CE_POLARITY = 1'b1;
    defparam \ee[12]~FF .SR_POLARITY = 1'b1;
    defparam \ee[12]~FF .D_POLARITY = 1'b1;
    defparam \ee[12]~FF .SR_SYNC = 1'b1;
    defparam \ee[12]~FF .SR_VALUE = 1'b0;
    defparam \ee[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[13]~FF  (.D(\d[13] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[13]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[13]~FF .CE_POLARITY = 1'b1;
    defparam \ee[13]~FF .SR_POLARITY = 1'b1;
    defparam \ee[13]~FF .D_POLARITY = 1'b1;
    defparam \ee[13]~FF .SR_SYNC = 1'b1;
    defparam \ee[13]~FF .SR_VALUE = 1'b0;
    defparam \ee[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[14]~FF  (.D(\d[14] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[14]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[14]~FF .CE_POLARITY = 1'b1;
    defparam \ee[14]~FF .SR_POLARITY = 1'b1;
    defparam \ee[14]~FF .D_POLARITY = 1'b1;
    defparam \ee[14]~FF .SR_SYNC = 1'b1;
    defparam \ee[14]~FF .SR_VALUE = 1'b0;
    defparam \ee[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[15]~FF  (.D(\d[15] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[15]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[15]~FF .CE_POLARITY = 1'b1;
    defparam \ee[15]~FF .SR_POLARITY = 1'b1;
    defparam \ee[15]~FF .D_POLARITY = 1'b1;
    defparam \ee[15]~FF .SR_SYNC = 1'b1;
    defparam \ee[15]~FF .SR_VALUE = 1'b0;
    defparam \ee[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[16]~FF  (.D(\d[16] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[16]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[16]~FF .CE_POLARITY = 1'b1;
    defparam \ee[16]~FF .SR_POLARITY = 1'b1;
    defparam \ee[16]~FF .D_POLARITY = 1'b1;
    defparam \ee[16]~FF .SR_SYNC = 1'b1;
    defparam \ee[16]~FF .SR_VALUE = 1'b0;
    defparam \ee[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[17]~FF  (.D(\d[17] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[17]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[17]~FF .CE_POLARITY = 1'b1;
    defparam \ee[17]~FF .SR_POLARITY = 1'b1;
    defparam \ee[17]~FF .D_POLARITY = 1'b1;
    defparam \ee[17]~FF .SR_SYNC = 1'b1;
    defparam \ee[17]~FF .SR_VALUE = 1'b0;
    defparam \ee[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[18]~FF  (.D(\d[18] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[18]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[18]~FF .CE_POLARITY = 1'b1;
    defparam \ee[18]~FF .SR_POLARITY = 1'b1;
    defparam \ee[18]~FF .D_POLARITY = 1'b1;
    defparam \ee[18]~FF .SR_SYNC = 1'b1;
    defparam \ee[18]~FF .SR_VALUE = 1'b0;
    defparam \ee[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[19]~FF  (.D(\d[19] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[19]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[19]~FF .CE_POLARITY = 1'b1;
    defparam \ee[19]~FF .SR_POLARITY = 1'b1;
    defparam \ee[19]~FF .D_POLARITY = 1'b1;
    defparam \ee[19]~FF .SR_SYNC = 1'b1;
    defparam \ee[19]~FF .SR_VALUE = 1'b0;
    defparam \ee[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[20]~FF  (.D(\d[20] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[20]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[20]~FF .CE_POLARITY = 1'b1;
    defparam \ee[20]~FF .SR_POLARITY = 1'b1;
    defparam \ee[20]~FF .D_POLARITY = 1'b1;
    defparam \ee[20]~FF .SR_SYNC = 1'b1;
    defparam \ee[20]~FF .SR_VALUE = 1'b0;
    defparam \ee[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[21]~FF  (.D(\d[21] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[21]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[21]~FF .CE_POLARITY = 1'b1;
    defparam \ee[21]~FF .SR_POLARITY = 1'b1;
    defparam \ee[21]~FF .D_POLARITY = 1'b1;
    defparam \ee[21]~FF .SR_SYNC = 1'b1;
    defparam \ee[21]~FF .SR_VALUE = 1'b0;
    defparam \ee[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[22]~FF  (.D(\d[22] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[22]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[22]~FF .CE_POLARITY = 1'b1;
    defparam \ee[22]~FF .SR_POLARITY = 1'b1;
    defparam \ee[22]~FF .D_POLARITY = 1'b1;
    defparam \ee[22]~FF .SR_SYNC = 1'b1;
    defparam \ee[22]~FF .SR_VALUE = 1'b0;
    defparam \ee[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[23]~FF  (.D(\d[23] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[23]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[23]~FF .CE_POLARITY = 1'b1;
    defparam \ee[23]~FF .SR_POLARITY = 1'b1;
    defparam \ee[23]~FF .D_POLARITY = 1'b1;
    defparam \ee[23]~FF .SR_SYNC = 1'b1;
    defparam \ee[23]~FF .SR_VALUE = 1'b0;
    defparam \ee[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[24]~FF  (.D(\d[24] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[24]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[24]~FF .CE_POLARITY = 1'b1;
    defparam \ee[24]~FF .SR_POLARITY = 1'b1;
    defparam \ee[24]~FF .D_POLARITY = 1'b1;
    defparam \ee[24]~FF .SR_SYNC = 1'b1;
    defparam \ee[24]~FF .SR_VALUE = 1'b0;
    defparam \ee[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[25]~FF  (.D(\d[25] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[25]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[25]~FF .CE_POLARITY = 1'b1;
    defparam \ee[25]~FF .SR_POLARITY = 1'b1;
    defparam \ee[25]~FF .D_POLARITY = 1'b1;
    defparam \ee[25]~FF .SR_SYNC = 1'b1;
    defparam \ee[25]~FF .SR_VALUE = 1'b0;
    defparam \ee[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[26]~FF  (.D(\d[26] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[26]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[26]~FF .CE_POLARITY = 1'b1;
    defparam \ee[26]~FF .SR_POLARITY = 1'b1;
    defparam \ee[26]~FF .D_POLARITY = 1'b1;
    defparam \ee[26]~FF .SR_SYNC = 1'b1;
    defparam \ee[26]~FF .SR_VALUE = 1'b0;
    defparam \ee[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[27]~FF  (.D(\d[27] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[27] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[27]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[27]~FF .CE_POLARITY = 1'b1;
    defparam \ee[27]~FF .SR_POLARITY = 1'b1;
    defparam \ee[27]~FF .D_POLARITY = 1'b1;
    defparam \ee[27]~FF .SR_SYNC = 1'b1;
    defparam \ee[27]~FF .SR_VALUE = 1'b0;
    defparam \ee[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[28]~FF  (.D(\d[28] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[28] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[28]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[28]~FF .CE_POLARITY = 1'b1;
    defparam \ee[28]~FF .SR_POLARITY = 1'b1;
    defparam \ee[28]~FF .D_POLARITY = 1'b1;
    defparam \ee[28]~FF .SR_SYNC = 1'b1;
    defparam \ee[28]~FF .SR_VALUE = 1'b0;
    defparam \ee[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[29]~FF  (.D(\d[29] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[29] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[29]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[29]~FF .CE_POLARITY = 1'b1;
    defparam \ee[29]~FF .SR_POLARITY = 1'b1;
    defparam \ee[29]~FF .D_POLARITY = 1'b1;
    defparam \ee[29]~FF .SR_SYNC = 1'b1;
    defparam \ee[29]~FF .SR_VALUE = 1'b0;
    defparam \ee[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[30]~FF  (.D(\d[30] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[30] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[30]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[30]~FF .CE_POLARITY = 1'b1;
    defparam \ee[30]~FF .SR_POLARITY = 1'b1;
    defparam \ee[30]~FF .D_POLARITY = 1'b1;
    defparam \ee[30]~FF .SR_SYNC = 1'b1;
    defparam \ee[30]~FF .SR_VALUE = 1'b0;
    defparam \ee[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ee[31]~FF  (.D(\d[31] ), .CE(\apb_master1/n864 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ee[31] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \ee[31]~FF .CLK_POLARITY = 1'b1;
    defparam \ee[31]~FF .CE_POLARITY = 1'b1;
    defparam \ee[31]~FF .SR_POLARITY = 1'b1;
    defparam \ee[31]~FF .D_POLARITY = 1'b1;
    defparam \ee[31]~FF .SR_SYNC = 1'b1;
    defparam \ee[31]~FF .SR_VALUE = 1'b0;
    defparam \ee[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \apb_master1/p_state[1]~FF  (.D(\apb_master1/n115 ), .CE(1'b1), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\apb_master1/p_state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbmaster.v(70)
    defparam \apb_master1/p_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \apb_master1/p_state[1]~FF .CE_POLARITY = 1'b1;
    defparam \apb_master1/p_state[1]~FF .SR_POLARITY = 1'b1;
    defparam \apb_master1/p_state[1]~FF .D_POLARITY = 1'b1;
    defparam \apb_master1/p_state[1]~FF .SR_SYNC = 1'b1;
    defparam \apb_master1/p_state[1]~FF .SR_VALUE = 1'b0;
    defparam \apb_master1/p_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \p~FF  (.D(n800), .CE(ceg_net427), .CLK(\clock_w~O ), .SR(reset), 
           .Q(p)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \p~FF .CLK_POLARITY = 1'b1;
    defparam \p~FF .CE_POLARITY = 1'b0;
    defparam \p~FF .SR_POLARITY = 1'b0;
    defparam \p~FF .D_POLARITY = 1'b1;
    defparam \p~FF .SR_SYNC = 1'b0;
    defparam \p~FF .SR_VALUE = 1'b0;
    defparam \p~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \p2~FF  (.D(\apb_slave1/n1242 ), .CE(ceg_net430), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(p2)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \p2~FF .CLK_POLARITY = 1'b1;
    defparam \p2~FF .CE_POLARITY = 1'b1;
    defparam \p2~FF .SR_POLARITY = 1'b1;
    defparam \p2~FF .D_POLARITY = 1'b1;
    defparam \p2~FF .SR_SYNC = 1'b1;
    defparam \p2~FF .SR_VALUE = 1'b0;
    defparam \p2~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[0]~FF  (.D(\ee[0] ), .CE(\apb_slave1/n1180 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[0]~FF .CE_POLARITY = 1'b1;
    defparam \ii[0]~FF .SR_POLARITY = 1'b1;
    defparam \ii[0]~FF .D_POLARITY = 1'b1;
    defparam \ii[0]~FF .SR_SYNC = 1'b1;
    defparam \ii[0]~FF .SR_VALUE = 1'b0;
    defparam \ii[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \apb_slave1/pready_counter[0]~FF  (.D(\apb_slave1/n19 ), .CE(ceg_net281), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\apb_slave1/pready_counter[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \apb_slave1/pready_counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \apb_slave1/pready_counter[0]~FF .CE_POLARITY = 1'b1;
    defparam \apb_slave1/pready_counter[0]~FF .SR_POLARITY = 1'b1;
    defparam \apb_slave1/pready_counter[0]~FF .D_POLARITY = 1'b1;
    defparam \apb_slave1/pready_counter[0]~FF .SR_SYNC = 1'b1;
    defparam \apb_slave1/pready_counter[0]~FF .SR_VALUE = 1'b0;
    defparam \apb_slave1/pready_counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \apb_slave1/s_state[0]~FF  (.D(\apb_slave1/n230 ), .CE(ceg_net473), 
           .CLK(\clock_w~O ), .SR(reset), .Q(\apb_slave1/s_state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \apb_slave1/s_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \apb_slave1/s_state[0]~FF .CE_POLARITY = 1'b0;
    defparam \apb_slave1/s_state[0]~FF .SR_POLARITY = 1'b0;
    defparam \apb_slave1/s_state[0]~FF .D_POLARITY = 1'b1;
    defparam \apb_slave1/s_state[0]~FF .SR_SYNC = 1'b0;
    defparam \apb_slave1/s_state[0]~FF .SR_VALUE = 1'b0;
    defparam \apb_slave1/s_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[1]~FF  (.D(\ee[1] ), .CE(\apb_slave1/n1180 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[1]~FF .CE_POLARITY = 1'b1;
    defparam \ii[1]~FF .SR_POLARITY = 1'b1;
    defparam \ii[1]~FF .D_POLARITY = 1'b1;
    defparam \ii[1]~FF .SR_SYNC = 1'b1;
    defparam \ii[1]~FF .SR_VALUE = 1'b0;
    defparam \ii[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[2]~FF  (.D(\ee[2] ), .CE(\apb_slave1/n1180 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[2]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[2]~FF .CE_POLARITY = 1'b1;
    defparam \ii[2]~FF .SR_POLARITY = 1'b1;
    defparam \ii[2]~FF .D_POLARITY = 1'b1;
    defparam \ii[2]~FF .SR_SYNC = 1'b1;
    defparam \ii[2]~FF .SR_VALUE = 1'b0;
    defparam \ii[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[3]~FF  (.D(\ee[3] ), .CE(\apb_slave1/n1180 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[3]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[3]~FF .CE_POLARITY = 1'b1;
    defparam \ii[3]~FF .SR_POLARITY = 1'b1;
    defparam \ii[3]~FF .D_POLARITY = 1'b1;
    defparam \ii[3]~FF .SR_SYNC = 1'b1;
    defparam \ii[3]~FF .SR_VALUE = 1'b0;
    defparam \ii[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[4]~FF  (.D(\ee[4] ), .CE(\apb_slave1/n1180 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[4]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[4]~FF .CE_POLARITY = 1'b1;
    defparam \ii[4]~FF .SR_POLARITY = 1'b1;
    defparam \ii[4]~FF .D_POLARITY = 1'b1;
    defparam \ii[4]~FF .SR_SYNC = 1'b1;
    defparam \ii[4]~FF .SR_VALUE = 1'b0;
    defparam \ii[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[5]~FF  (.D(\ee[5] ), .CE(\apb_slave1/n1180 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[5]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[5]~FF .CE_POLARITY = 1'b1;
    defparam \ii[5]~FF .SR_POLARITY = 1'b1;
    defparam \ii[5]~FF .D_POLARITY = 1'b1;
    defparam \ii[5]~FF .SR_SYNC = 1'b1;
    defparam \ii[5]~FF .SR_VALUE = 1'b0;
    defparam \ii[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[6]~FF  (.D(\ee[6] ), .CE(\apb_slave1/n1180 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[6]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[6]~FF .CE_POLARITY = 1'b1;
    defparam \ii[6]~FF .SR_POLARITY = 1'b1;
    defparam \ii[6]~FF .D_POLARITY = 1'b1;
    defparam \ii[6]~FF .SR_SYNC = 1'b1;
    defparam \ii[6]~FF .SR_VALUE = 1'b0;
    defparam \ii[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[7]~FF  (.D(\ee[7] ), .CE(\apb_slave1/n1180 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[7]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[7]~FF .CE_POLARITY = 1'b1;
    defparam \ii[7]~FF .SR_POLARITY = 1'b1;
    defparam \ii[7]~FF .D_POLARITY = 1'b1;
    defparam \ii[7]~FF .SR_SYNC = 1'b1;
    defparam \ii[7]~FF .SR_VALUE = 1'b0;
    defparam \ii[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[8]~FF  (.D(\ee[8] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[8]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[8]~FF .CE_POLARITY = 1'b1;
    defparam \ii[8]~FF .SR_POLARITY = 1'b1;
    defparam \ii[8]~FF .D_POLARITY = 1'b1;
    defparam \ii[8]~FF .SR_SYNC = 1'b1;
    defparam \ii[8]~FF .SR_VALUE = 1'b0;
    defparam \ii[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[9]~FF  (.D(\ee[9] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[9]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[9]~FF .CE_POLARITY = 1'b1;
    defparam \ii[9]~FF .SR_POLARITY = 1'b1;
    defparam \ii[9]~FF .D_POLARITY = 1'b1;
    defparam \ii[9]~FF .SR_SYNC = 1'b1;
    defparam \ii[9]~FF .SR_VALUE = 1'b0;
    defparam \ii[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[10]~FF  (.D(\ee[10] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[10]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[10]~FF .CE_POLARITY = 1'b1;
    defparam \ii[10]~FF .SR_POLARITY = 1'b1;
    defparam \ii[10]~FF .D_POLARITY = 1'b1;
    defparam \ii[10]~FF .SR_SYNC = 1'b1;
    defparam \ii[10]~FF .SR_VALUE = 1'b0;
    defparam \ii[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[11]~FF  (.D(\ee[11] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[11]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[11]~FF .CE_POLARITY = 1'b1;
    defparam \ii[11]~FF .SR_POLARITY = 1'b1;
    defparam \ii[11]~FF .D_POLARITY = 1'b1;
    defparam \ii[11]~FF .SR_SYNC = 1'b1;
    defparam \ii[11]~FF .SR_VALUE = 1'b0;
    defparam \ii[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[12]~FF  (.D(\ee[12] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[12]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[12]~FF .CE_POLARITY = 1'b1;
    defparam \ii[12]~FF .SR_POLARITY = 1'b1;
    defparam \ii[12]~FF .D_POLARITY = 1'b1;
    defparam \ii[12]~FF .SR_SYNC = 1'b1;
    defparam \ii[12]~FF .SR_VALUE = 1'b0;
    defparam \ii[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[13]~FF  (.D(\ee[13] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[13]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[13]~FF .CE_POLARITY = 1'b1;
    defparam \ii[13]~FF .SR_POLARITY = 1'b1;
    defparam \ii[13]~FF .D_POLARITY = 1'b1;
    defparam \ii[13]~FF .SR_SYNC = 1'b1;
    defparam \ii[13]~FF .SR_VALUE = 1'b0;
    defparam \ii[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[14]~FF  (.D(\ee[14] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[14]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[14]~FF .CE_POLARITY = 1'b1;
    defparam \ii[14]~FF .SR_POLARITY = 1'b1;
    defparam \ii[14]~FF .D_POLARITY = 1'b1;
    defparam \ii[14]~FF .SR_SYNC = 1'b1;
    defparam \ii[14]~FF .SR_VALUE = 1'b0;
    defparam \ii[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[15]~FF  (.D(\ee[15] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[15]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[15]~FF .CE_POLARITY = 1'b1;
    defparam \ii[15]~FF .SR_POLARITY = 1'b1;
    defparam \ii[15]~FF .D_POLARITY = 1'b1;
    defparam \ii[15]~FF .SR_SYNC = 1'b1;
    defparam \ii[15]~FF .SR_VALUE = 1'b0;
    defparam \ii[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[16]~FF  (.D(\ee[16] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[16]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[16]~FF .CE_POLARITY = 1'b1;
    defparam \ii[16]~FF .SR_POLARITY = 1'b1;
    defparam \ii[16]~FF .D_POLARITY = 1'b1;
    defparam \ii[16]~FF .SR_SYNC = 1'b1;
    defparam \ii[16]~FF .SR_VALUE = 1'b0;
    defparam \ii[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[17]~FF  (.D(\ee[17] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[17]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[17]~FF .CE_POLARITY = 1'b1;
    defparam \ii[17]~FF .SR_POLARITY = 1'b1;
    defparam \ii[17]~FF .D_POLARITY = 1'b1;
    defparam \ii[17]~FF .SR_SYNC = 1'b1;
    defparam \ii[17]~FF .SR_VALUE = 1'b0;
    defparam \ii[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[18]~FF  (.D(\ee[18] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[18]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[18]~FF .CE_POLARITY = 1'b1;
    defparam \ii[18]~FF .SR_POLARITY = 1'b1;
    defparam \ii[18]~FF .D_POLARITY = 1'b1;
    defparam \ii[18]~FF .SR_SYNC = 1'b1;
    defparam \ii[18]~FF .SR_VALUE = 1'b0;
    defparam \ii[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[19]~FF  (.D(\ee[19] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[19]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[19]~FF .CE_POLARITY = 1'b1;
    defparam \ii[19]~FF .SR_POLARITY = 1'b1;
    defparam \ii[19]~FF .D_POLARITY = 1'b1;
    defparam \ii[19]~FF .SR_SYNC = 1'b1;
    defparam \ii[19]~FF .SR_VALUE = 1'b0;
    defparam \ii[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[20]~FF  (.D(\ee[20] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[20]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[20]~FF .CE_POLARITY = 1'b1;
    defparam \ii[20]~FF .SR_POLARITY = 1'b1;
    defparam \ii[20]~FF .D_POLARITY = 1'b1;
    defparam \ii[20]~FF .SR_SYNC = 1'b1;
    defparam \ii[20]~FF .SR_VALUE = 1'b0;
    defparam \ii[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[21]~FF  (.D(\ee[21] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[21]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[21]~FF .CE_POLARITY = 1'b1;
    defparam \ii[21]~FF .SR_POLARITY = 1'b1;
    defparam \ii[21]~FF .D_POLARITY = 1'b1;
    defparam \ii[21]~FF .SR_SYNC = 1'b1;
    defparam \ii[21]~FF .SR_VALUE = 1'b0;
    defparam \ii[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[22]~FF  (.D(\ee[22] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[22]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[22]~FF .CE_POLARITY = 1'b1;
    defparam \ii[22]~FF .SR_POLARITY = 1'b1;
    defparam \ii[22]~FF .D_POLARITY = 1'b1;
    defparam \ii[22]~FF .SR_SYNC = 1'b1;
    defparam \ii[22]~FF .SR_VALUE = 1'b0;
    defparam \ii[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[23]~FF  (.D(\ee[23] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[23]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[23]~FF .CE_POLARITY = 1'b1;
    defparam \ii[23]~FF .SR_POLARITY = 1'b1;
    defparam \ii[23]~FF .D_POLARITY = 1'b1;
    defparam \ii[23]~FF .SR_SYNC = 1'b1;
    defparam \ii[23]~FF .SR_VALUE = 1'b0;
    defparam \ii[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[24]~FF  (.D(\ee[24] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[24]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[24]~FF .CE_POLARITY = 1'b1;
    defparam \ii[24]~FF .SR_POLARITY = 1'b1;
    defparam \ii[24]~FF .D_POLARITY = 1'b1;
    defparam \ii[24]~FF .SR_SYNC = 1'b1;
    defparam \ii[24]~FF .SR_VALUE = 1'b0;
    defparam \ii[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[25]~FF  (.D(\ee[25] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[25]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[25]~FF .CE_POLARITY = 1'b1;
    defparam \ii[25]~FF .SR_POLARITY = 1'b1;
    defparam \ii[25]~FF .D_POLARITY = 1'b1;
    defparam \ii[25]~FF .SR_SYNC = 1'b1;
    defparam \ii[25]~FF .SR_VALUE = 1'b0;
    defparam \ii[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[26]~FF  (.D(\ee[26] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[26] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[26]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[26]~FF .CE_POLARITY = 1'b1;
    defparam \ii[26]~FF .SR_POLARITY = 1'b1;
    defparam \ii[26]~FF .D_POLARITY = 1'b1;
    defparam \ii[26]~FF .SR_SYNC = 1'b1;
    defparam \ii[26]~FF .SR_VALUE = 1'b0;
    defparam \ii[26]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[27]~FF  (.D(\ee[27] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[27] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[27]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[27]~FF .CE_POLARITY = 1'b1;
    defparam \ii[27]~FF .SR_POLARITY = 1'b1;
    defparam \ii[27]~FF .D_POLARITY = 1'b1;
    defparam \ii[27]~FF .SR_SYNC = 1'b1;
    defparam \ii[27]~FF .SR_VALUE = 1'b0;
    defparam \ii[27]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[28]~FF  (.D(\ee[28] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[28] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[28]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[28]~FF .CE_POLARITY = 1'b1;
    defparam \ii[28]~FF .SR_POLARITY = 1'b1;
    defparam \ii[28]~FF .D_POLARITY = 1'b1;
    defparam \ii[28]~FF .SR_SYNC = 1'b1;
    defparam \ii[28]~FF .SR_VALUE = 1'b0;
    defparam \ii[28]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[29]~FF  (.D(\ee[29] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[29] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[29]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[29]~FF .CE_POLARITY = 1'b1;
    defparam \ii[29]~FF .SR_POLARITY = 1'b1;
    defparam \ii[29]~FF .D_POLARITY = 1'b1;
    defparam \ii[29]~FF .SR_SYNC = 1'b1;
    defparam \ii[29]~FF .SR_VALUE = 1'b0;
    defparam \ii[29]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[30]~FF  (.D(\ee[30] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[30] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[30]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[30]~FF .CE_POLARITY = 1'b1;
    defparam \ii[30]~FF .SR_POLARITY = 1'b1;
    defparam \ii[30]~FF .D_POLARITY = 1'b1;
    defparam \ii[30]~FF .SR_SYNC = 1'b1;
    defparam \ii[30]~FF .SR_VALUE = 1'b0;
    defparam \ii[30]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ii[31]~FF  (.D(\ee[31] ), .CE(\apb_slave1/n1196 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\ii[31] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \ii[31]~FF .CLK_POLARITY = 1'b1;
    defparam \ii[31]~FF .CE_POLARITY = 1'b1;
    defparam \ii[31]~FF .SR_POLARITY = 1'b1;
    defparam \ii[31]~FF .D_POLARITY = 1'b1;
    defparam \ii[31]~FF .SR_SYNC = 1'b1;
    defparam \ii[31]~FF .SR_VALUE = 1'b0;
    defparam \ii[31]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \apb_slave1/s_state[1]~FF  (.D(\apb_slave1/n229 ), .CE(ceg_net473), 
           .CLK(\clock_w~O ), .SR(reset), .Q(\apb_slave1/s_state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\apbslave.v(80)
    defparam \apb_slave1/s_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \apb_slave1/s_state[1]~FF .CE_POLARITY = 1'b0;
    defparam \apb_slave1/s_state[1]~FF .SR_POLARITY = 1'b0;
    defparam \apb_slave1/s_state[1]~FF .D_POLARITY = 1'b1;
    defparam \apb_slave1/s_state[1]~FF .SR_SYNC = 1'b0;
    defparam \apb_slave1/s_state[1]~FF .SR_VALUE = 1'b0;
    defparam \apb_slave1/s_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrluart/state[0]~FF  (.D(\ctrluart/n71 ), .CE(ceg_net441), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrluart/state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \ctrluart/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrluart/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \ctrluart/state[0]~FF .SR_POLARITY = 1'b1;
    defparam \ctrluart/state[0]~FF .D_POLARITY = 1'b1;
    defparam \ctrluart/state[0]~FF .SR_SYNC = 1'b1;
    defparam \ctrluart/state[0]~FF .SR_VALUE = 1'b0;
    defparam \ctrluart/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrluart/max_counter[0]~FF  (.D(\ctrluart/n283 ), .CE(ceg_net500), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrluart/max_counter[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \ctrluart/max_counter[0]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrluart/max_counter[0]~FF .CE_POLARITY = 1'b0;
    defparam \ctrluart/max_counter[0]~FF .SR_POLARITY = 1'b1;
    defparam \ctrluart/max_counter[0]~FF .D_POLARITY = 1'b1;
    defparam \ctrluart/max_counter[0]~FF .SR_SYNC = 1'b1;
    defparam \ctrluart/max_counter[0]~FF .SR_VALUE = 1'b0;
    defparam \ctrluart/max_counter[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mm[0]~FF  (.D(\ctrluart/n290 ), .CE(ceg_net339), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\mm[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \mm[0]~FF .CLK_POLARITY = 1'b1;
    defparam \mm[0]~FF .CE_POLARITY = 1'b0;
    defparam \mm[0]~FF .SR_POLARITY = 1'b1;
    defparam \mm[0]~FF .D_POLARITY = 1'b1;
    defparam \mm[0]~FF .SR_SYNC = 1'b1;
    defparam \mm[0]~FF .SR_VALUE = 1'b0;
    defparam \mm[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \d4~FF  (.D(\ctrluart/state[0] ), .CE(\ctrluart/n242 ), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(d4)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \d4~FF .CLK_POLARITY = 1'b1;
    defparam \d4~FF .CE_POLARITY = 1'b0;
    defparam \d4~FF .SR_POLARITY = 1'b1;
    defparam \d4~FF .D_POLARITY = 1'b1;
    defparam \d4~FF .SR_SYNC = 1'b1;
    defparam \d4~FF .SR_VALUE = 1'b0;
    defparam \d4~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \d5~FF  (.D(\ctrluart/n66 ), .CE(ceg_net340), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(d5)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \d5~FF .CLK_POLARITY = 1'b1;
    defparam \d5~FF .CE_POLARITY = 1'b0;
    defparam \d5~FF .SR_POLARITY = 1'b1;
    defparam \d5~FF .D_POLARITY = 1'b1;
    defparam \d5~FF .SR_SYNC = 1'b1;
    defparam \d5~FF .SR_VALUE = 1'b0;
    defparam \d5~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrluart/state[1]~FF  (.D(\ctrluart/n70 ), .CE(ceg_net447), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrluart/state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \ctrluart/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrluart/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \ctrluart/state[1]~FF .SR_POLARITY = 1'b1;
    defparam \ctrluart/state[1]~FF .D_POLARITY = 1'b1;
    defparam \ctrluart/state[1]~FF .SR_SYNC = 1'b1;
    defparam \ctrluart/state[1]~FF .SR_VALUE = 1'b0;
    defparam \ctrluart/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrluart/state[2]~FF  (.D(\ctrluart/n69 ), .CE(ceg_net340), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrluart/state[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \ctrluart/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrluart/state[2]~FF .CE_POLARITY = 1'b0;
    defparam \ctrluart/state[2]~FF .SR_POLARITY = 1'b1;
    defparam \ctrluart/state[2]~FF .D_POLARITY = 1'b1;
    defparam \ctrluart/state[2]~FF .SR_SYNC = 1'b1;
    defparam \ctrluart/state[2]~FF .SR_VALUE = 1'b0;
    defparam \ctrluart/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrluart/state[3]~FF  (.D(\ctrluart/n68 ), .CE(ceg_net340), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrluart/state[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \ctrluart/state[3]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrluart/state[3]~FF .CE_POLARITY = 1'b0;
    defparam \ctrluart/state[3]~FF .SR_POLARITY = 1'b1;
    defparam \ctrluart/state[3]~FF .D_POLARITY = 1'b1;
    defparam \ctrluart/state[3]~FF .SR_SYNC = 1'b1;
    defparam \ctrluart/state[3]~FF .SR_VALUE = 1'b0;
    defparam \ctrluart/state[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \ctrluart/max_counter[1]~FF  (.D(\ctrluart/n190 ), .CE(ceg_net500), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\ctrluart/max_counter[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \ctrluart/max_counter[1]~FF .CLK_POLARITY = 1'b1;
    defparam \ctrluart/max_counter[1]~FF .CE_POLARITY = 1'b0;
    defparam \ctrluart/max_counter[1]~FF .SR_POLARITY = 1'b1;
    defparam \ctrluart/max_counter[1]~FF .D_POLARITY = 1'b1;
    defparam \ctrluart/max_counter[1]~FF .SR_SYNC = 1'b1;
    defparam \ctrluart/max_counter[1]~FF .SR_VALUE = 1'b0;
    defparam \ctrluart/max_counter[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mm[1]~FF  (.D(\ctrluart/n197 ), .CE(ceg_net339), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\mm[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \mm[1]~FF .CLK_POLARITY = 1'b1;
    defparam \mm[1]~FF .CE_POLARITY = 1'b0;
    defparam \mm[1]~FF .SR_POLARITY = 1'b1;
    defparam \mm[1]~FF .D_POLARITY = 1'b1;
    defparam \mm[1]~FF .SR_SYNC = 1'b1;
    defparam \mm[1]~FF .SR_VALUE = 1'b0;
    defparam \mm[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mm[2]~FF  (.D(\ctrluart/n204 ), .CE(ceg_net339), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\mm[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \mm[2]~FF .CLK_POLARITY = 1'b1;
    defparam \mm[2]~FF .CE_POLARITY = 1'b0;
    defparam \mm[2]~FF .SR_POLARITY = 1'b1;
    defparam \mm[2]~FF .D_POLARITY = 1'b1;
    defparam \mm[2]~FF .SR_SYNC = 1'b1;
    defparam \mm[2]~FF .SR_VALUE = 1'b0;
    defparam \mm[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mm[3]~FF  (.D(\ctrluart/n211 ), .CE(ceg_net339), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\mm[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \mm[3]~FF .CLK_POLARITY = 1'b1;
    defparam \mm[3]~FF .CE_POLARITY = 1'b0;
    defparam \mm[3]~FF .SR_POLARITY = 1'b1;
    defparam \mm[3]~FF .D_POLARITY = 1'b1;
    defparam \mm[3]~FF .SR_SYNC = 1'b1;
    defparam \mm[3]~FF .SR_VALUE = 1'b0;
    defparam \mm[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mm[4]~FF  (.D(\ctrluart/n218 ), .CE(ceg_net339), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\mm[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \mm[4]~FF .CLK_POLARITY = 1'b1;
    defparam \mm[4]~FF .CE_POLARITY = 1'b0;
    defparam \mm[4]~FF .SR_POLARITY = 1'b1;
    defparam \mm[4]~FF .D_POLARITY = 1'b1;
    defparam \mm[4]~FF .SR_SYNC = 1'b1;
    defparam \mm[4]~FF .SR_VALUE = 1'b0;
    defparam \mm[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mm[5]~FF  (.D(\ctrluart/n225 ), .CE(ceg_net339), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\mm[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \mm[5]~FF .CLK_POLARITY = 1'b1;
    defparam \mm[5]~FF .CE_POLARITY = 1'b0;
    defparam \mm[5]~FF .SR_POLARITY = 1'b1;
    defparam \mm[5]~FF .D_POLARITY = 1'b1;
    defparam \mm[5]~FF .SR_SYNC = 1'b1;
    defparam \mm[5]~FF .SR_VALUE = 1'b0;
    defparam \mm[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mm[6]~FF  (.D(\ctrluart/n232 ), .CE(ceg_net339), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\mm[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \mm[6]~FF .CLK_POLARITY = 1'b1;
    defparam \mm[6]~FF .CE_POLARITY = 1'b0;
    defparam \mm[6]~FF .SR_POLARITY = 1'b1;
    defparam \mm[6]~FF .D_POLARITY = 1'b1;
    defparam \mm[6]~FF .SR_SYNC = 1'b1;
    defparam \mm[6]~FF .SR_VALUE = 1'b0;
    defparam \mm[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mm[7]~FF  (.D(\ctrluart/n239 ), .CE(ceg_net339), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(\mm[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\ctrl3.v(130)
    defparam \mm[7]~FF .CLK_POLARITY = 1'b1;
    defparam \mm[7]~FF .CE_POLARITY = 1'b0;
    defparam \mm[7]~FF .SR_POLARITY = 1'b1;
    defparam \mm[7]~FF .D_POLARITY = 1'b1;
    defparam \mm[7]~FF .SR_SYNC = 1'b1;
    defparam \mm[7]~FF .SR_VALUE = 1'b0;
    defparam \mm[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Clock_Count[0]~FF  (.D(\uarttx_1/n429 ), .CE(\uarttx_1/r_SM_Main[2] ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Clock_Count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Clock_Count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[0]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Clock_Count[0]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[0]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[0]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Clock_Count[0]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Clock_Count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \o_Tx_Done~FF  (.D(\uarttx_1/n438 ), .CE(ceg_net490), .CLK(\clock_w~O ), 
           .SR(1'b0), .Q(o_Tx_Done)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \o_Tx_Done~FF .CLK_POLARITY = 1'b1;
    defparam \o_Tx_Done~FF .CE_POLARITY = 1'b0;
    defparam \o_Tx_Done~FF .SR_POLARITY = 1'b1;
    defparam \o_Tx_Done~FF .D_POLARITY = 1'b1;
    defparam \o_Tx_Done~FF .SR_SYNC = 1'b1;
    defparam \o_Tx_Done~FF .SR_VALUE = 1'b0;
    defparam \o_Tx_Done~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \o_Tx_Serial~FF  (.D(\uarttx_1/n311 ), .CE(\uarttx_1/r_SM_Main[2] ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(o_Tx_Serial)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \o_Tx_Serial~FF .CLK_POLARITY = 1'b1;
    defparam \o_Tx_Serial~FF .CE_POLARITY = 1'b0;
    defparam \o_Tx_Serial~FF .SR_POLARITY = 1'b1;
    defparam \o_Tx_Serial~FF .D_POLARITY = 1'b1;
    defparam \o_Tx_Serial~FF .SR_SYNC = 1'b1;
    defparam \o_Tx_Serial~FF .SR_VALUE = 1'b0;
    defparam \o_Tx_Serial~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Bit_Index[0]~FF  (.D(\uarttx_1/n433 ), .CE(ceg_net462), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Bit_Index[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Bit_Index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Bit_Index[0]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Bit_Index[0]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Bit_Index[0]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Bit_Index[0]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Bit_Index[0]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Bit_Index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \o_Tx_Active~FF  (.D(\uarttx_1/r_SM_Main[1] ), .CE(ceg_net460), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(o_Tx_Active)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \o_Tx_Active~FF .CLK_POLARITY = 1'b1;
    defparam \o_Tx_Active~FF .CE_POLARITY = 1'b0;
    defparam \o_Tx_Active~FF .SR_POLARITY = 1'b1;
    defparam \o_Tx_Active~FF .D_POLARITY = 1'b0;
    defparam \o_Tx_Active~FF .SR_SYNC = 1'b1;
    defparam \o_Tx_Active~FF .SR_VALUE = 1'b0;
    defparam \o_Tx_Active~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Tx_Data[0]~FF  (.D(\mm[0] ), .CE(\uarttx_1/n497 ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Tx_Data[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Tx_Data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[0]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[0]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[0]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[0]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Tx_Data[0]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Tx_Data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_SM_Main[1]~FF  (.D(\uarttx_1/n421 ), .CE(1'b1), .CLK(\clock_w~O ), 
           .SR(\uarttx_1/r_SM_Main[2] ), .Q(\uarttx_1/r_SM_Main[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_SM_Main[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[1]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[1]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[1]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[1]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_SM_Main[1]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_SM_Main[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_SM_Main[0]~FF  (.D(\uarttx_1/n425 ), .CE(1'b1), .CLK(\clock_w~O ), 
           .SR(\uarttx_1/r_SM_Main[2] ), .Q(\uarttx_1/r_SM_Main[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_SM_Main[0]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[0]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[0]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[0]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[0]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_SM_Main[0]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_SM_Main[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Clock_Count[1]~FF  (.D(\uarttx_1/n344 ), .CE(\uarttx_1/r_SM_Main[2] ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Clock_Count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Clock_Count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[1]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Clock_Count[1]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[1]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[1]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Clock_Count[1]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Clock_Count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Clock_Count[2]~FF  (.D(\uarttx_1/n347 ), .CE(\uarttx_1/r_SM_Main[2] ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Clock_Count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Clock_Count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[2]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Clock_Count[2]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[2]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[2]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Clock_Count[2]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Clock_Count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Clock_Count[3]~FF  (.D(\uarttx_1/n350 ), .CE(\uarttx_1/r_SM_Main[2] ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Clock_Count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Clock_Count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[3]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Clock_Count[3]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[3]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[3]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Clock_Count[3]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Clock_Count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Clock_Count[4]~FF  (.D(\uarttx_1/n353 ), .CE(\uarttx_1/r_SM_Main[2] ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Clock_Count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Clock_Count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[4]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Clock_Count[4]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[4]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[4]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Clock_Count[4]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Clock_Count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Clock_Count[5]~FF  (.D(\uarttx_1/n356 ), .CE(\uarttx_1/r_SM_Main[2] ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Clock_Count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Clock_Count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[5]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Clock_Count[5]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[5]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[5]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Clock_Count[5]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Clock_Count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Clock_Count[6]~FF  (.D(\uarttx_1/n359 ), .CE(\uarttx_1/r_SM_Main[2] ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Clock_Count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Clock_Count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[6]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Clock_Count[6]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[6]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Clock_Count[6]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Clock_Count[6]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Clock_Count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Bit_Index[1]~FF  (.D(\uarttx_1/n375 ), .CE(ceg_net462), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Bit_Index[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Bit_Index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Bit_Index[1]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Bit_Index[1]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Bit_Index[1]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Bit_Index[1]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Bit_Index[1]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Bit_Index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Bit_Index[2]~FF  (.D(\uarttx_1/n379 ), .CE(ceg_net462), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Bit_Index[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Bit_Index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Bit_Index[2]~FF .CE_POLARITY = 1'b0;
    defparam \uarttx_1/r_Bit_Index[2]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Bit_Index[2]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Bit_Index[2]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Bit_Index[2]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Bit_Index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Tx_Data[1]~FF  (.D(\mm[1] ), .CE(\uarttx_1/n497 ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Tx_Data[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Tx_Data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[1]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[1]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[1]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[1]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Tx_Data[1]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Tx_Data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Tx_Data[2]~FF  (.D(\mm[2] ), .CE(\uarttx_1/n497 ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Tx_Data[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Tx_Data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[2]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[2]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[2]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[2]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Tx_Data[2]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Tx_Data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Tx_Data[3]~FF  (.D(\mm[3] ), .CE(\uarttx_1/n497 ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Tx_Data[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Tx_Data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[3]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[3]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[3]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[3]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Tx_Data[3]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Tx_Data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Tx_Data[4]~FF  (.D(\mm[4] ), .CE(\uarttx_1/n497 ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Tx_Data[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Tx_Data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[4]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[4]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[4]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[4]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Tx_Data[4]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Tx_Data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Tx_Data[5]~FF  (.D(\mm[5] ), .CE(\uarttx_1/n497 ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Tx_Data[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Tx_Data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[5]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[5]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[5]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[5]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Tx_Data[5]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Tx_Data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Tx_Data[6]~FF  (.D(\mm[6] ), .CE(\uarttx_1/n497 ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Tx_Data[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Tx_Data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[6]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[6]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[6]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[6]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Tx_Data[6]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Tx_Data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_Tx_Data[7]~FF  (.D(\mm[7] ), .CE(\uarttx_1/n497 ), 
           .CLK(\clock_w~O ), .SR(1'b0), .Q(\uarttx_1/r_Tx_Data[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_Tx_Data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[7]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[7]~FF .SR_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[7]~FF .D_POLARITY = 1'b1;
    defparam \uarttx_1/r_Tx_Data[7]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_Tx_Data[7]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_Tx_Data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \uarttx_1/r_SM_Main[2]~FF  (.D(\uarttx_1/LessThan_8/n14 ), .CE(1'b1), 
           .CLK(\clock_w~O ), .SR(\uarttx_1/n479 ), .Q(\uarttx_1/r_SM_Main[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // E:\intern\project\apb_final\uarttx.v(108)
    defparam \uarttx_1/r_SM_Main[2]~FF .CLK_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[2]~FF .CE_POLARITY = 1'b1;
    defparam \uarttx_1/r_SM_Main[2]~FF .SR_POLARITY = 1'b0;
    defparam \uarttx_1/r_SM_Main[2]~FF .D_POLARITY = 1'b0;
    defparam \uarttx_1/r_SM_Main[2]~FF .SR_SYNC = 1'b1;
    defparam \uarttx_1/r_SM_Main[2]~FF .SR_VALUE = 1'b0;
    defparam \uarttx_1/r_SM_Main[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \fifo_1/add_26/i2  (.I0(\fifo_1/rd_ptr[1] ), .I1(\fifo_1/rd_ptr[0] ), 
            .CI(1'b0), .O(n105), .CO(n106)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/add_26/i2 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_26/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \fifo_1/add_26/i6  (.I0(\fifo_1/rd_ptr[5] ), .I1(1'b0), .CI(n273), 
            .O(n271)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/add_26/i6 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_26/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \fifo_1/add_26/i5  (.I0(\fifo_1/rd_ptr[4] ), .I1(1'b0), .CI(n275), 
            .O(n272), .CO(n273)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/add_26/i5 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_26/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \fifo_1/add_26/i4  (.I0(\fifo_1/rd_ptr[3] ), .I1(1'b0), .CI(n277), 
            .O(n274), .CO(n275)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/add_26/i4 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_26/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \fifo_1/add_26/i3  (.I0(\fifo_1/rd_ptr[2] ), .I1(1'b0), .CI(n106), 
            .O(n276), .CO(n277)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(47)
    defparam \fifo_1/add_26/i3 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_26/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \fifo_1/add_18/i6  (.I0(\fifo_1/wr_ptr[5] ), .I1(1'b0), .CI(n280), 
            .O(n278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/add_18/i6 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_18/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \fifo_1/add_18/i5  (.I0(\fifo_1/wr_ptr[4] ), .I1(1'b0), .CI(n282), 
            .O(n279), .CO(n280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/add_18/i5 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_18/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \fifo_1/add_18/i4  (.I0(\fifo_1/wr_ptr[3] ), .I1(1'b0), .CI(n284), 
            .O(n281), .CO(n282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/add_18/i4 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_18/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \fifo_1/add_18/i3  (.I0(\fifo_1/wr_ptr[2] ), .I1(1'b0), .CI(n286), 
            .O(n283), .CO(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/add_18/i3 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_18/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \fifo_1/add_18/i2  (.I0(\fifo_1/wr_ptr[1] ), .I1(\fifo_1/wr_ptr[0] ), 
            .CI(1'b0), .O(n285), .CO(n286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // E:\intern\project\apb_final\fifo.v(43)
    defparam \fifo_1/add_18/i2 .I0_POLARITY = 1'b1;
    defparam \fifo_1/add_18/i2 .I1_POLARITY = 1'b1;
    EFX_RAM_5K \fifo_1/sram1/memory__D$2  (.WCLK(\clock_w~O ), .RCLK(\clock_w~O ), 
            .WCLKE(\fifo_1/n11 ), .WE(\ctrl1/state[1] ), .RE(\fifo_1/n13 ), 
            .WDATA({\f[15] , \f[14] , \f[13] , \f[12] , \f[11] , \f[10] , 
            \f[9] , \f[8] , \f[7] , \f[6] , \f[5] , \f[4] , \f[3] , 
            \f[2] , \f[1] , \f[0] }), .WADDR({3'b000, \fifo_1/wr_ptr[4] , 
            \fifo_1/wr_ptr[3] , \fifo_1/wr_ptr[2] , \fifo_1/wr_ptr[1] , 
            \fifo_1/wr_ptr[0] }), .RADDR({3'b000, \fifo_1/rd_ptr[4] , 
            \fifo_1/rd_ptr[3] , \fifo_1/rd_ptr[2] , \fifo_1/rd_ptr[1] , 
            \fifo_1/rd_ptr[0] }), .RDATA({\d[15] , \d[14] , \d[13] , 
            \d[12] , \d[11] , \d[10] , \d[9] , \d[8] , \d[7] , \d[6] , 
            \d[5] , \d[4] , \d[3] , \d[2] , \d[1] , \d[0] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_RAM_5K, READ_WIDTH=16, WRITE_WIDTH=16, WCLK_POLARITY=1'b1, WCLKE_POLARITY=1'b1, WE_POLARITY=1'b1, RCLK_POLARITY=1'b1, RE_POLARITY=1'b1, OUTPUT_REG=1'b0, WRITE_MODE="READ_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b1 */ ;   // E:\intern\project\apb_final\sram.v(17)
    defparam \fifo_1/sram1/memory__D$2 .READ_WIDTH = 16;
    defparam \fifo_1/sram1/memory__D$2 .WRITE_WIDTH = 16;
    defparam \fifo_1/sram1/memory__D$2 .WCLK_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$2 .WCLKE_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$2 .WE_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$2 .RCLK_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$2 .RE_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$2 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$2 .OUTPUT_REG = 1'b0;
    defparam \fifo_1/sram1/memory__D$2 .WRITE_MODE = "READ_FIRST";
    EFX_RAM_5K \fifo_1/sram1/memory__D$1  (.WCLK(\clock_w~O ), .RCLK(\clock_w~O ), 
            .WCLKE(\fifo_1/n11 ), .WE(\ctrl1/state[1] ), .RE(\fifo_1/n13 ), 
            .WDATA({\f[31] , \f[30] , \f[29] , \f[28] , \f[27] , \f[26] , 
            \f[25] , \f[24] , \f[23] , \f[22] , \f[21] , \f[20] , 
            \f[19] , \f[18] , \f[17] , \f[16] }), .WADDR({3'b000, 
            \fifo_1/wr_ptr[4] , \fifo_1/wr_ptr[3] , \fifo_1/wr_ptr[2] , 
            \fifo_1/wr_ptr[1] , \fifo_1/wr_ptr[0] }), .RADDR({3'b000, 
            \fifo_1/rd_ptr[4] , \fifo_1/rd_ptr[3] , \fifo_1/rd_ptr[2] , 
            \fifo_1/rd_ptr[1] , \fifo_1/rd_ptr[0] }), .RDATA({\d[31] , 
            \d[30] , \d[29] , \d[28] , \d[27] , \d[26] , \d[25] , 
            \d[24] , \d[23] , \d[22] , \d[21] , \d[20] , \d[19] , 
            \d[18] , \d[17] , \d[16] })) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_RAM_5K, READ_WIDTH=16, WRITE_WIDTH=16, WCLK_POLARITY=1'b1, WCLKE_POLARITY=1'b1, WE_POLARITY=1'b1, RCLK_POLARITY=1'b1, RE_POLARITY=1'b1, OUTPUT_REG=1'b0, WRITE_MODE="READ_FIRST", INIT_0=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_1=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_2=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_3=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_4=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_5=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_6=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_7=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_8=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_9=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_A=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_B=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_C=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_D=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_E=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_F=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_10=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_11=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_12=256'h0000000000000000000000000000000000000000000000000000000000000000, INIT_13=256'h0000000000000000000000000000000000000000000000000000000000000000, PRESERVE_USER_INIT=1'b1 */ ;   // E:\intern\project\apb_final\sram.v(17)
    defparam \fifo_1/sram1/memory__D$1 .READ_WIDTH = 16;
    defparam \fifo_1/sram1/memory__D$1 .WRITE_WIDTH = 16;
    defparam \fifo_1/sram1/memory__D$1 .WCLK_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$1 .WCLKE_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$1 .WE_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$1 .RCLK_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$1 .RE_POLARITY = 1'b1;
    defparam \fifo_1/sram1/memory__D$1 .INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam \fifo_1/sram1/memory__D$1 .OUTPUT_REG = 1'b0;
    defparam \fifo_1/sram1/memory__D$1 .WRITE_MODE = "READ_FIRST";
    EFX_LUT4 LUT__890 (.I0(\uartrx_1/r_Clock_Count[5] ), .I1(n604), .I2(\uartrx_1/r_Clock_Count[6] ), 
            .I3(n605), .O(\uartrx_1/n55 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f00 */ ;
    defparam LUT__890.LUTMASK = 16'h1f00;
    EFX_LUT4 LUT__891 (.I0(\uartrx_1/r_SM_Main[2] ), .I1(\uartrx_1/r_SM_Main[1] ), 
            .O(\uartrx_1/n481 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__891.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__892 (.I0(\uartrx_1/r_SM_Main[0] ), .I1(\uartrx_1/n481 ), 
            .O(\uartrx_1/n485 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__892.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__893 (.I0(\uartrx_1/r_SM_Main[0] ), .I1(\uartrx_1/n55 ), 
            .I2(\uartrx_1/n481 ), .O(n606)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__893.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__894 (.I0(\uartrx_1/r_Bit_Index[0] ), .I1(\uartrx_1/r_Bit_Index[1] ), 
            .I2(\uartrx_1/r_Bit_Index[2] ), .I3(n606), .O(\uartrx_1/n509 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__894.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__895 (.I0(\uartrx_1/r_Clock_Count[0] ), .I1(\uartrx_1/r_Clock_Count[1] ), 
            .I2(\uartrx_1/r_Clock_Count[3] ), .O(n607)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__895.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__896 (.I0(\uartrx_1/r_Clock_Count[2] ), .I1(\uartrx_1/r_Clock_Count[4] ), 
            .I2(\uartrx_1/r_Clock_Count[6] ), .I3(\uartrx_1/r_Clock_Count[5] ), 
            .O(n608)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__896.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__897 (.I0(\uartrx_1/r_SM_Main[1] ), .I1(\uartrx_1/r_SM_Main[0] ), 
            .O(n609)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__897.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__898 (.I0(n608), .I1(n605), .I2(n607), .I3(n609), .O(n610)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f00 */ ;
    defparam LUT__898.LUTMASK = 16'h7f00;
    EFX_LUT4 LUT__899 (.I0(\uartrx_1/n55 ), .I1(\uartrx_1/r_SM_Main[1] ), 
            .I2(n610), .O(n611)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__899.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__900 (.I0(\uartrx_1/r_Clock_Count[0] ), .I1(n611), .O(\uartrx_1/n438 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__900.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__901 (.I0(\uartrx_1/r_Clock_Count[0] ), .I1(\uartrx_1/r_Clock_Count[1] ), 
            .O(n612)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__901.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__902 (.I0(n605), .I1(n612), .I2(n608), .I3(\uartrx_1/r_Clock_Count[3] ), 
            .O(n613)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__902.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__903 (.I0(\uartrx_1/r_Rx_Data ), .I1(n609), .I2(n613), 
            .I3(\uartrx_1/r_SM_Main[2] ), .O(ceg_net72)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff40 */ ;
    defparam LUT__903.LUTMASK = 16'hff40;
    EFX_LUT4 LUT__904 (.I0(\uartrx_1/n55 ), .I1(\uartrx_1/n481 ), .I2(\uartrx_1/r_SM_Main[1] ), 
            .I3(\uartrx_1/r_SM_Main[0] ), .O(ceg_net464)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__904.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__905 (.I0(\uartrx_1/r_Bit_Index[0] ), .I1(\uartrx_1/r_SM_Main[1] ), 
            .O(\uartrx_1/n442 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__905.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__906 (.I0(\uartrx_1/n55 ), .I1(\uartrx_1/r_SM_Main[1] ), 
            .I2(\uartrx_1/r_SM_Main[0] ), .I3(\uartrx_1/r_SM_Main[2] ), 
            .O(ceg_net371)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;
    defparam LUT__906.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__907 (.I0(\uartrx_1/r_Rx_Data ), .I1(\uartrx_1/r_SM_Main[0] ), 
            .I2(n613), .O(n614)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__907.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__908 (.I0(\uartrx_1/n55 ), .I1(\uartrx_1/r_SM_Main[0] ), 
            .I2(n614), .I3(\uartrx_1/r_SM_Main[1] ), .O(\uartrx_1/n431 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbf0 */ ;
    defparam LUT__908.LUTMASK = 16'hbbf0;
    EFX_LUT4 LUT__909 (.I0(\uartrx_1/r_SM_Main[0] ), .I1(\uartrx_1/r_Bit_Index[0] ), 
            .I2(\uartrx_1/r_Bit_Index[1] ), .I3(\uartrx_1/r_Bit_Index[2] ), 
            .O(n615)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__909.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__910 (.I0(\uartrx_1/n55 ), .I1(\uartrx_1/r_SM_Main[1] ), 
            .I2(n615), .O(\uartrx_1/n504 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__910.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__911 (.I0(\uartrx_1/n55 ), .I1(\uartrx_1/r_Rx_Data ), .I2(\uartrx_1/r_SM_Main[0] ), 
            .I3(\uartrx_1/r_SM_Main[1] ), .O(n616)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5ff3 */ ;
    defparam LUT__911.LUTMASK = 16'h5ff3;
    EFX_LUT4 LUT__912 (.I0(n610), .I1(\uartrx_1/n504 ), .I2(n616), .O(\uartrx_1/n435 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;
    defparam LUT__912.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__913 (.I0(\uartrx_1/r_Bit_Index[1] ), .I1(\uartrx_1/r_Bit_Index[2] ), 
            .I2(\uartrx_1/r_Bit_Index[0] ), .I3(n606), .O(\uartrx_1/n489 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__913.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__914 (.I0(\uartrx_1/r_Bit_Index[0] ), .I1(\uartrx_1/r_Bit_Index[2] ), 
            .I2(\uartrx_1/r_Bit_Index[1] ), .I3(n606), .O(\uartrx_1/n491 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__914.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__915 (.I0(\uartrx_1/r_Bit_Index[2] ), .I1(\uartrx_1/r_Bit_Index[1] ), 
            .I2(\uartrx_1/r_Bit_Index[0] ), .I3(n606), .O(\uartrx_1/n493 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__915.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__916 (.I0(\uartrx_1/r_Bit_Index[0] ), .I1(\uartrx_1/r_Bit_Index[1] ), 
            .I2(\uartrx_1/r_Bit_Index[2] ), .I3(n606), .O(\uartrx_1/n495 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__916.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__917 (.I0(\uartrx_1/r_Bit_Index[1] ), .I1(\uartrx_1/r_Bit_Index[0] ), 
            .I2(\uartrx_1/r_Bit_Index[2] ), .I3(n606), .O(\uartrx_1/n497 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__917.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__918 (.I0(\uartrx_1/r_Bit_Index[1] ), .I1(\uartrx_1/r_Bit_Index[2] ), 
            .I2(\uartrx_1/n442 ), .O(n617)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__918.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__919 (.I0(\uartrx_1/r_SM_Main[0] ), .I1(\uartrx_1/n55 ), 
            .I2(n617), .O(\uartrx_1/n499 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__919.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__920 (.I0(n611), .I1(\uartrx_1/r_Clock_Count[0] ), .I2(\uartrx_1/r_Clock_Count[1] ), 
            .O(\uartrx_1/n365 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__920.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__921 (.I0(n611), .I1(\uartrx_1/r_Clock_Count[2] ), .I2(n612), 
            .O(\uartrx_1/n368 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__921.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__922 (.I0(\uartrx_1/r_Clock_Count[2] ), .I1(n612), .I2(n611), 
            .I3(\uartrx_1/r_Clock_Count[3] ), .O(\uartrx_1/n371 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__922.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__923 (.I0(\uartrx_1/r_Clock_Count[0] ), .I1(\uartrx_1/r_Clock_Count[1] ), 
            .I2(\uartrx_1/r_Clock_Count[2] ), .I3(\uartrx_1/r_Clock_Count[3] ), 
            .O(n618)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__923.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__924 (.I0(n611), .I1(\uartrx_1/r_Clock_Count[4] ), .I2(n618), 
            .O(\uartrx_1/n374 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__924.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__925 (.I0(\uartrx_1/r_Clock_Count[4] ), .I1(n618), .I2(n611), 
            .I3(\uartrx_1/r_Clock_Count[5] ), .O(\uartrx_1/n377 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__925.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__926 (.I0(\uartrx_1/r_Clock_Count[4] ), .I1(\uartrx_1/r_Clock_Count[5] ), 
            .I2(n618), .O(n619)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__926.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__927 (.I0(n611), .I1(\uartrx_1/r_Clock_Count[6] ), .I2(n619), 
            .O(\uartrx_1/n380 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__927.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__928 (.I0(\uartrx_1/r_Clock_Count[6] ), .I1(n619), .I2(\uartrx_1/r_Clock_Count[7] ), 
            .I3(n610), .O(\uartrx_1/n383 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__928.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__929 (.I0(\uartrx_1/r_Clock_Count[6] ), .I1(\uartrx_1/r_Clock_Count[7] ), 
            .O(n620)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__929.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__930 (.I0(n619), .I1(n620), .I2(\uartrx_1/r_Clock_Count[8] ), 
            .I3(n610), .O(\uartrx_1/n386 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__930.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__931 (.I0(\uartrx_1/r_Clock_Count[6] ), .I1(\uartrx_1/r_Clock_Count[7] ), 
            .I2(\uartrx_1/r_Clock_Count[8] ), .I3(n619), .O(n621)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__931.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__932 (.I0(\uartrx_1/r_Clock_Count[9] ), .I1(n621), .I2(n610), 
            .O(\uartrx_1/n389 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__932.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__933 (.I0(\uartrx_1/r_Clock_Count[9] ), .I1(n621), .I2(\uartrx_1/r_Clock_Count[10] ), 
            .I3(n609), .O(\uartrx_1/n392 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__933.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__934 (.I0(\uartrx_1/r_Bit_Index[0] ), .I1(\uartrx_1/r_Bit_Index[1] ), 
            .I2(\uartrx_1/r_SM_Main[1] ), .O(\uartrx_1/n396 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__934.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__935 (.I0(\uartrx_1/r_Bit_Index[0] ), .I1(\uartrx_1/r_Bit_Index[1] ), 
            .I2(\uartrx_1/r_Bit_Index[2] ), .I3(\uartrx_1/r_SM_Main[1] ), 
            .O(\uartrx_1/n400 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__935.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__936 (.I0(\ctrl1/state[0] ), .I1(\ctrl1/state[1] ), .O(n787)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__936.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__937 (.I0(\ctrl1/byte_count[0] ), .I1(\ctrl1/byte_count[1] ), 
            .O(n622)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__937.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__938 (.I0(n622), .I1(a), .I2(\ctrl1/state[0] ), .I3(\ctrl1/state[1] ), 
            .O(ceg_net467)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfc53 */ ;
    defparam LUT__938.LUTMASK = 16'hfc53;
    EFX_LUT4 LUT__939 (.I0(\ctrl1/state[1] ), .I1(\ctrl1/state[0] ), .O(\ctrl1/n693 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__939.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__940 (.I0(n622), .I1(\ctrl1/n693 ), .O(\ctrl1/n609 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__940.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__941 (.I0(\ctrl1/state[0] ), .I1(n622), .O(n623)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__941.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__942 (.I0(n623), .I1(\b[0] ), .O(\ctrl1/n536 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__942.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__943 (.I0(\ctrl1/state[1] ), .I1(a), .I2(\ctrl1/n609 ), 
            .O(ceg_net381)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;
    defparam LUT__943.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__944 (.I0(n622), .I1(a), .I2(\ctrl1/n693 ), .O(ceg_net263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__944.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__945 (.I0(n623), .I1(\b[1] ), .O(\ctrl1/n459 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__945.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__946 (.I0(n623), .I1(\b[2] ), .O(\ctrl1/n461 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__946.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__947 (.I0(n623), .I1(\b[3] ), .O(\ctrl1/n463 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__947.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__948 (.I0(n623), .I1(\b[4] ), .O(\ctrl1/n465 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__948.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__949 (.I0(n623), .I1(\b[5] ), .O(\ctrl1/n467 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__949.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__950 (.I0(n623), .I1(\b[6] ), .O(\ctrl1/n469 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__950.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__951 (.I0(n623), .I1(\b[7] ), .O(\ctrl1/n471 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__951.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__952 (.I0(n622), .I1(\ctrl1/temp_reg[0] ), .O(\ctrl1/n118 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__952.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__953 (.I0(n622), .I1(\ctrl1/temp_reg[1] ), .O(\ctrl1/n117 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__953.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__954 (.I0(n622), .I1(\ctrl1/temp_reg[2] ), .O(\ctrl1/n116 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__954.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__955 (.I0(n622), .I1(\ctrl1/temp_reg[3] ), .O(\ctrl1/n115 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__955.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__956 (.I0(n622), .I1(\ctrl1/temp_reg[4] ), .O(\ctrl1/n114 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__956.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__957 (.I0(n622), .I1(\ctrl1/temp_reg[5] ), .O(\ctrl1/n113 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__957.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__958 (.I0(n622), .I1(\ctrl1/temp_reg[6] ), .O(\ctrl1/n112 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__958.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__959 (.I0(n622), .I1(\ctrl1/temp_reg[7] ), .O(\ctrl1/n111 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__959.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__960 (.I0(n622), .I1(\ctrl1/temp_reg[8] ), .O(\ctrl1/n110 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__960.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__961 (.I0(n622), .I1(\ctrl1/temp_reg[9] ), .O(\ctrl1/n109 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__961.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__962 (.I0(n622), .I1(\ctrl1/temp_reg[10] ), .O(\ctrl1/n108 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__962.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__963 (.I0(n622), .I1(\ctrl1/temp_reg[11] ), .O(\ctrl1/n107 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__963.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__964 (.I0(n622), .I1(\ctrl1/temp_reg[12] ), .O(\ctrl1/n106 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__964.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__965 (.I0(n622), .I1(\ctrl1/temp_reg[13] ), .O(\ctrl1/n105 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__965.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__966 (.I0(n622), .I1(\ctrl1/temp_reg[14] ), .O(\ctrl1/n104 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__966.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__967 (.I0(n622), .I1(\ctrl1/temp_reg[15] ), .O(\ctrl1/n103 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__967.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__968 (.I0(n622), .I1(\ctrl1/temp_reg[16] ), .O(\ctrl1/n102 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__968.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__969 (.I0(n622), .I1(\ctrl1/temp_reg[17] ), .O(\ctrl1/n101 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__969.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__970 (.I0(n622), .I1(\ctrl1/temp_reg[18] ), .O(\ctrl1/n100 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__970.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__971 (.I0(n622), .I1(\ctrl1/temp_reg[19] ), .O(\ctrl1/n99 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__971.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__972 (.I0(n622), .I1(\ctrl1/temp_reg[20] ), .O(\ctrl1/n98 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__972.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__973 (.I0(n622), .I1(\ctrl1/temp_reg[21] ), .O(\ctrl1/n97 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__973.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__974 (.I0(n622), .I1(\ctrl1/temp_reg[22] ), .O(\ctrl1/n96 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__974.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__975 (.I0(n622), .I1(\ctrl1/temp_reg[23] ), .O(\ctrl1/n95 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__975.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__976 (.I0(\ctrl1/byte_count[0] ), .I1(\ctrl1/byte_count[1] ), 
            .O(\ctrl1/n374 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__976.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__977 (.I0(\fifo_1/rd_ptr[1] ), .I1(\fifo_1/wr_ptr[1] ), 
            .I2(\fifo_1/rd_ptr[4] ), .I3(\fifo_1/wr_ptr[4] ), .O(n624)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__977.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__978 (.I0(\fifo_1/rd_ptr[0] ), .I1(\fifo_1/wr_ptr[0] ), 
            .I2(\fifo_1/rd_ptr[2] ), .I3(\fifo_1/wr_ptr[2] ), .O(n625)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9009 */ ;
    defparam LUT__978.LUTMASK = 16'h9009;
    EFX_LUT4 LUT__979 (.I0(\fifo_1/rd_ptr[3] ), .I1(\fifo_1/wr_ptr[3] ), 
            .I2(n624), .I3(n625), .O(n626)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9000 */ ;
    defparam LUT__979.LUTMASK = 16'h9000;
    EFX_LUT4 LUT__980 (.I0(\fifo_1/rd_ptr[5] ), .I1(\fifo_1/wr_ptr[5] ), 
            .I2(n626), .O(n627)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9090 */ ;
    defparam LUT__980.LUTMASK = 16'h9090;
    EFX_LUT4 LUT__981 (.I0(n627), .I1(xx), .O(\fifo_1/n13 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__981.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__982 (.I0(n626), .I1(\fifo_1/rd_ptr[5] ), .I2(\fifo_1/wr_ptr[5] ), 
            .I3(\ctrl1/state[1] ), .O(\fifo_1/n11 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd700 */ ;
    defparam LUT__982.LUTMASK = 16'hd700;
    EFX_LUT4 LUT__983 (.I0(n627), .I1(\ctrl2_dut/next_state[0] ), .I2(\ctrl2_dut/state[1] ), 
            .I3(\ctrl2_dut/state[0] ), .O(\ctrl2_dut/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc005 */ ;
    defparam LUT__983.LUTMASK = 16'hc005;
    EFX_LUT4 LUT__984 (.I0(n627), .I1(\ctrl2_dut/next_state[1] ), .I2(\ctrl2_dut/state[1] ), 
            .I3(\ctrl2_dut/state[0] ), .O(\ctrl2_dut/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc500 */ ;
    defparam LUT__984.LUTMASK = 16'hc500;
    EFX_LUT4 LUT__985 (.I0(\ctrl2_dut/state[1] ), .I1(\ctrl2_dut/state[0] ), 
            .O(\ctrl2_dut/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__985.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__986 (.I0(\ctrl2_dut/state[0] ), .I1(\ctrl2_dut/state[1] ), 
            .O(ceg_net264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__986.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__987 (.I0(\apb_master1/p_state[0] ), .I1(\apb_master1/r_ext_write ), 
            .I2(\apb_master1/p_state[1] ), .O(\apb_master1/n864 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__987.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__988 (.I0(sel), .I1(\apb_master1/p_state[0] ), .O(\apb_master1/n757 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__988.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__989 (.I0(\apb_master1/p_state[0] ), .I1(\apb_master1/p_state[1] ), 
            .O(\apb_master1/n792 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__989.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__990 (.I0(\apb_master1/p_state[1] ), .I1(\apb_master1/p_state[0] ), 
            .O(\apb_master1/n863 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__990.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__991 (.I0(p), .I1(\apb_master1/p_state[0] ), .I2(\apb_master1/p_state[1] ), 
            .O(\apb_master1/n115 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1c1c */ ;
    defparam LUT__991.LUTMASK = 16'h1c1c;
    EFX_LUT4 LUT__992 (.I0(\apb_slave1/s_state[0] ), .I1(\apb_slave1/s_state[1] ), 
            .O(n800)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__992.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__993 (.I0(write), .I1(bb), .I2(aaa), .O(n628)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__993.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__994 (.I0(\apb_slave1/pready_counter[0] ), .I1(n628), .O(\apb_slave1/n19 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__994.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__995 (.I0(d4), .I1(\apb_slave1/n19 ), .O(n629)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__995.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__996 (.I0(write), .I1(bb), .O(n630)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__996.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__997 (.I0(\apb_slave1/s_state[0] ), .I1(aaa), .I2(n630), 
            .I3(\apb_slave1/s_state[1] ), .O(n631)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__997.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__998 (.I0(n629), .I1(\apb_slave1/s_state[0] ), .I2(n631), 
            .O(ceg_net427)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__998.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__999 (.I0(\apb_slave1/s_state[1] ), .I1(\apb_slave1/s_state[0] ), 
            .I2(reset), .O(\apb_slave1/n1242 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__999.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1000 (.I0(\apb_slave1/s_state[1] ), .I1(n629), .I2(\apb_slave1/s_state[0] ), 
            .I3(reset), .O(ceg_net430)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;
    defparam LUT__1000.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__1001 (.I0(n629), .I1(\apb_slave1/n1242 ), .O(\apb_slave1/n1180 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1001.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1002 (.I0(n629), .I1(p), .I2(n628), .I3(\apb_slave1/n1242 ), 
            .O(ceg_net281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;
    defparam LUT__1002.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__1003 (.I0(n800), .I1(bb), .I2(write), .O(\apb_slave1/n230 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1003.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1004 (.I0(d4), .I1(\apb_slave1/pready_counter[0] ), .I2(\apb_slave1/s_state[0] ), 
            .I3(n628), .O(n632)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he000 */ ;
    defparam LUT__1004.LUTMASK = 16'he000;
    EFX_LUT4 LUT__1005 (.I0(\apb_slave1/s_state[0] ), .I1(bb), .I2(n631), 
            .I3(n632), .O(ceg_net473)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff1 */ ;
    defparam LUT__1005.LUTMASK = 16'hfff1;
    EFX_LUT4 LUT__1006 (.I0(\d3[1] ), .I1(n629), .I2(\apb_slave1/n1242 ), 
            .O(\apb_slave1/n1196 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1006.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1007 (.I0(bb), .I1(write), .I2(n800), .O(\apb_slave1/n229 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__1007.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__1008 (.I0(\d3[1] ), .I1(\ctrluart/max_counter[0] ), .I2(\ctrluart/max_counter[1] ), 
            .O(n633)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7e7e */ ;
    defparam LUT__1008.LUTMASK = 16'h7e7e;
    EFX_LUT4 LUT__1009 (.I0(\ctrluart/state[2] ), .I1(o_Tx_Done), .O(n634)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1009.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1010 (.I0(\ctrluart/state[1] ), .I1(n633), .I2(\ctrluart/state[0] ), 
            .I3(n634), .O(n635)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf70f */ ;
    defparam LUT__1010.LUTMASK = 16'hf70f;
    EFX_LUT4 LUT__1011 (.I0(\ctrluart/state[2] ), .I1(p2), .I2(n635), 
            .I3(\ctrluart/state[3] ), .O(\ctrluart/n71 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__1011.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__1012 (.I0(\ctrluart/state[0] ), .I1(\ctrluart/state[1] ), 
            .O(n636)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1012.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1013 (.I0(n636), .I1(\ctrluart/state[2] ), .I2(\ctrluart/state[3] ), 
            .O(ceg_net340)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd0d0 */ ;
    defparam LUT__1013.LUTMASK = 16'hd0d0;
    EFX_LUT4 LUT__1014 (.I0(\ctrluart/state[2] ), .I1(\ctrluart/state[1] ), 
            .I2(ceg_net340), .O(ceg_net441)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__1014.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__1015 (.I0(\d3[1] ), .I1(\ctrluart/max_counter[0] ), .I2(\ctrluart/max_counter[1] ), 
            .I3(\ctrluart/state[2] ), .O(\ctrluart/n283 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb200 */ ;
    defparam LUT__1015.LUTMASK = 16'hb200;
    EFX_LUT4 LUT__1016 (.I0(o_Tx_Done), .I1(\ctrluart/state[3] ), .I2(n636), 
            .I3(\ctrluart/state[2] ), .O(ceg_net500)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfdcf */ ;
    defparam LUT__1016.LUTMASK = 16'hfdcf;
    EFX_LUT4 LUT__1017 (.I0(\ii[16] ), .I1(\ii[0] ), .I2(\ctrluart/state[1] ), 
            .O(n637)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1017.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1018 (.I0(\ctrluart/state[1] ), .I1(\ii[8] ), .I2(n637), 
            .I3(\ctrluart/state[0] ), .O(n638)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__1018.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__1019 (.I0(n638), .I1(\ii[24] ), .I2(\ctrluart/state[2] ), 
            .O(\ctrluart/n290 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1019.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1020 (.I0(n636), .I1(\ctrluart/state[2] ), .I2(\ctrluart/state[3] ), 
            .O(ceg_net339)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;
    defparam LUT__1020.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__1021 (.I0(\ctrluart/state[1] ), .I1(\ctrluart/state[2] ), 
            .I2(\ctrluart/state[3] ), .O(\ctrluart/n242 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfefe */ ;
    defparam LUT__1021.LUTMASK = 16'hfefe;
    EFX_LUT4 LUT__1022 (.I0(\ctrluart/state[3] ), .I1(\ctrluart/state[2] ), 
            .I2(n636), .O(\ctrluart/n66 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4141 */ ;
    defparam LUT__1022.LUTMASK = 16'h4141;
    EFX_LUT4 LUT__1023 (.I0(o_Tx_Done), .I1(\ctrluart/state[0] ), .I2(n633), 
            .I3(\ctrluart/state[1] ), .O(n639)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8a7f */ ;
    defparam LUT__1023.LUTMASK = 16'h8a7f;
    EFX_LUT4 LUT__1024 (.I0(\ctrluart/state[3] ), .I1(n639), .O(\ctrluart/n70 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1024.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1025 (.I0(n636), .I1(\ctrluart/state[2] ), .I2(\ctrluart/state[3] ), 
            .O(ceg_net447)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hd3d3 */ ;
    defparam LUT__1025.LUTMASK = 16'hd3d3;
    EFX_LUT4 LUT__1026 (.I0(n633), .I1(n634), .I2(\ctrluart/state[0] ), 
            .I3(\ctrluart/state[1] ), .O(n640)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4ccf */ ;
    defparam LUT__1026.LUTMASK = 16'h4ccf;
    EFX_LUT4 LUT__1027 (.I0(\ctrluart/state[3] ), .I1(n640), .O(\ctrluart/n69 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__1027.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__1028 (.I0(\ctrluart/state[2] ), .I1(n636), .I2(o_Tx_Done), 
            .I3(\ctrluart/state[3] ), .O(\ctrluart/n68 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f88 */ ;
    defparam LUT__1028.LUTMASK = 16'h0f88;
    EFX_LUT4 LUT__1029 (.I0(\d3[1] ), .I1(\ctrluart/max_counter[0] ), .I2(\ctrluart/max_counter[1] ), 
            .I3(\ctrluart/state[2] ), .O(\ctrluart/n190 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbc00 */ ;
    defparam LUT__1029.LUTMASK = 16'hbc00;
    EFX_LUT4 LUT__1030 (.I0(\ii[17] ), .I1(\ii[1] ), .I2(\ctrluart/state[1] ), 
            .O(n641)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1030.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1031 (.I0(\ctrluart/state[1] ), .I1(\ii[9] ), .I2(n641), 
            .I3(\ctrluart/state[0] ), .O(n642)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__1031.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__1032 (.I0(n642), .I1(\ii[25] ), .I2(\ctrluart/state[2] ), 
            .O(\ctrluart/n197 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1032.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1033 (.I0(\ii[18] ), .I1(\ii[2] ), .I2(\ctrluart/state[1] ), 
            .O(n643)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1033.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1034 (.I0(\ctrluart/state[1] ), .I1(\ii[10] ), .I2(n643), 
            .I3(\ctrluart/state[0] ), .O(n644)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__1034.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__1035 (.I0(n644), .I1(\ii[26] ), .I2(\ctrluart/state[2] ), 
            .O(\ctrluart/n204 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1035.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1036 (.I0(\ii[19] ), .I1(\ii[3] ), .I2(\ctrluart/state[1] ), 
            .O(n645)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1036.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1037 (.I0(\ctrluart/state[1] ), .I1(\ii[11] ), .I2(n645), 
            .I3(\ctrluart/state[0] ), .O(n646)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__1037.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__1038 (.I0(n646), .I1(\ii[27] ), .I2(\ctrluart/state[2] ), 
            .O(\ctrluart/n211 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1038.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1039 (.I0(\ii[20] ), .I1(\ii[4] ), .I2(\ctrluart/state[1] ), 
            .O(n647)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1039.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1040 (.I0(\ctrluart/state[1] ), .I1(\ii[12] ), .I2(n647), 
            .I3(\ctrluart/state[0] ), .O(n648)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__1040.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__1041 (.I0(n648), .I1(\ii[28] ), .I2(\ctrluart/state[2] ), 
            .O(\ctrluart/n218 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1041.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1042 (.I0(\ii[21] ), .I1(\ii[5] ), .I2(\ctrluart/state[1] ), 
            .O(n649)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1042.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1043 (.I0(\ctrluart/state[1] ), .I1(\ii[13] ), .I2(n649), 
            .I3(\ctrluart/state[0] ), .O(n650)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__1043.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__1044 (.I0(n650), .I1(\ii[29] ), .I2(\ctrluart/state[2] ), 
            .O(\ctrluart/n225 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1044.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1045 (.I0(\ii[22] ), .I1(\ii[6] ), .I2(\ctrluart/state[1] ), 
            .O(n651)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1045.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1046 (.I0(\ctrluart/state[1] ), .I1(\ii[14] ), .I2(n651), 
            .I3(\ctrluart/state[0] ), .O(n652)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__1046.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__1047 (.I0(n652), .I1(\ii[30] ), .I2(\ctrluart/state[2] ), 
            .O(\ctrluart/n232 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1047.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1048 (.I0(\ii[23] ), .I1(\ii[7] ), .I2(\ctrluart/state[1] ), 
            .O(n653)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1048.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1049 (.I0(\ctrluart/state[1] ), .I1(\ii[15] ), .I2(n653), 
            .I3(\ctrluart/state[0] ), .O(n654)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf077 */ ;
    defparam LUT__1049.LUTMASK = 16'hf077;
    EFX_LUT4 LUT__1050 (.I0(n654), .I1(\ii[31] ), .I2(\ctrluart/state[2] ), 
            .O(\ctrluart/n239 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;
    defparam LUT__1050.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__1051 (.I0(\uarttx_1/r_Clock_Count[2] ), .I1(\uarttx_1/r_Clock_Count[1] ), 
            .I2(\uarttx_1/r_Clock_Count[3] ), .I3(\uarttx_1/r_Clock_Count[4] ), 
            .O(n655)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__1051.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__1052 (.I0(\uarttx_1/r_Clock_Count[5] ), .I1(n655), .I2(\uarttx_1/r_Clock_Count[6] ), 
            .O(\uarttx_1/LessThan_8/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1f1f */ ;
    defparam LUT__1052.LUTMASK = 16'h1f1f;
    EFX_LUT4 LUT__1053 (.I0(\uarttx_1/r_SM_Main[0] ), .I1(\uarttx_1/r_SM_Main[1] ), 
            .I2(\uarttx_1/LessThan_8/n14 ), .O(n656)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0e0 */ ;
    defparam LUT__1053.LUTMASK = 16'he0e0;
    EFX_LUT4 LUT__1054 (.I0(\uarttx_1/r_Clock_Count[0] ), .I1(n656), .O(\uarttx_1/n429 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1054.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1055 (.I0(\uarttx_1/r_SM_Main[1] ), .I1(\uarttx_1/r_SM_Main[2] ), 
            .O(\uarttx_1/n438 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__1055.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__1056 (.I0(\uarttx_1/r_SM_Main[2] ), .I1(\uarttx_1/r_SM_Main[0] ), 
            .I2(\uarttx_1/r_SM_Main[1] ), .O(\uarttx_1/n479 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__1056.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__1057 (.I0(\uarttx_1/LessThan_8/n14 ), .I1(\uarttx_1/n479 ), 
            .I2(\uarttx_1/r_SM_Main[1] ), .I3(\uarttx_1/r_SM_Main[0] ), 
            .O(ceg_net490)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbb0 */ ;
    defparam LUT__1057.LUTMASK = 16'hbbb0;
    EFX_LUT4 LUT__1058 (.I0(\uarttx_1/r_Tx_Data[1] ), .I1(\uarttx_1/r_Tx_Data[3] ), 
            .I2(\uarttx_1/r_Bit_Index[1] ), .O(n657)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__1058.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__1059 (.I0(\uarttx_1/r_Tx_Data[2] ), .I1(\uarttx_1/r_Tx_Data[0] ), 
            .I2(\uarttx_1/r_Bit_Index[1] ), .O(n658)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__1059.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__1060 (.I0(n658), .I1(n657), .I2(\uarttx_1/r_Bit_Index[2] ), 
            .I3(\uarttx_1/r_Bit_Index[0] ), .O(n659)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__1060.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__1061 (.I0(\uarttx_1/r_Tx_Data[5] ), .I1(\uarttx_1/r_Tx_Data[7] ), 
            .I2(\uarttx_1/r_Bit_Index[1] ), .O(n660)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__1061.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__1062 (.I0(\uarttx_1/r_Tx_Data[4] ), .I1(\uarttx_1/r_Tx_Data[6] ), 
            .I2(\uarttx_1/r_Bit_Index[1] ), .O(n661)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3535 */ ;
    defparam LUT__1062.LUTMASK = 16'h3535;
    EFX_LUT4 LUT__1063 (.I0(n661), .I1(n660), .I2(\uarttx_1/r_Bit_Index[0] ), 
            .I3(\uarttx_1/r_Bit_Index[2] ), .O(n662)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__1063.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__1064 (.I0(n659), .I1(n662), .I2(\uarttx_1/r_SM_Main[1] ), 
            .I3(\uarttx_1/r_SM_Main[0] ), .O(\uarttx_1/n311 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf01f */ ;
    defparam LUT__1064.LUTMASK = 16'hf01f;
    EFX_LUT4 LUT__1065 (.I0(\uarttx_1/r_Bit_Index[0] ), .I1(\uarttx_1/r_SM_Main[1] ), 
            .O(\uarttx_1/n433 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1065.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1066 (.I0(\uarttx_1/LessThan_8/n14 ), .I1(\uarttx_1/r_SM_Main[1] ), 
            .I2(\uarttx_1/r_SM_Main[2] ), .I3(\uarttx_1/r_SM_Main[0] ), 
            .O(ceg_net462)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;
    defparam LUT__1066.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__1067 (.I0(\uarttx_1/r_SM_Main[1] ), .I1(d5), .O(n663)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__1067.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__1068 (.I0(\uarttx_1/r_SM_Main[0] ), .I1(\uarttx_1/r_SM_Main[2] ), 
            .I2(n663), .O(\uarttx_1/n497 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__1068.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__1069 (.I0(\uarttx_1/n479 ), .I1(\uarttx_1/LessThan_8/n14 ), 
            .I2(\uarttx_1/n497 ), .O(ceg_net460)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__1069.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__1070 (.I0(\uarttx_1/LessThan_8/n14 ), .I1(\uarttx_1/r_SM_Main[0] ), 
            .I2(\uarttx_1/r_SM_Main[1] ), .O(\uarttx_1/n421 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;
    defparam LUT__1070.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__1071 (.I0(\uarttx_1/r_Bit_Index[0] ), .I1(\uarttx_1/r_SM_Main[1] ), 
            .I2(\uarttx_1/r_Bit_Index[1] ), .I3(\uarttx_1/r_Bit_Index[2] ), 
            .O(n664)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__1071.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__1072 (.I0(n664), .I1(n663), .I2(\uarttx_1/LessThan_8/n14 ), 
            .I3(\uarttx_1/r_SM_Main[0] ), .O(\uarttx_1/n425 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ce */ ;
    defparam LUT__1072.LUTMASK = 16'hf0ce;
    EFX_LUT4 LUT__1073 (.I0(\uarttx_1/r_Clock_Count[0] ), .I1(\uarttx_1/r_Clock_Count[1] ), 
            .I2(n656), .O(\uarttx_1/n344 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1073.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1074 (.I0(\uarttx_1/r_Clock_Count[0] ), .I1(\uarttx_1/r_Clock_Count[1] ), 
            .O(n665)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1074.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1075 (.I0(\uarttx_1/r_Clock_Count[2] ), .I1(n665), .I2(n656), 
            .O(\uarttx_1/n347 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1075.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1076 (.I0(\uarttx_1/r_Clock_Count[2] ), .I1(n665), .I2(\uarttx_1/r_Clock_Count[3] ), 
            .I3(n656), .O(\uarttx_1/n350 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__1076.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__1077 (.I0(\uarttx_1/r_Clock_Count[2] ), .I1(\uarttx_1/r_Clock_Count[3] ), 
            .I2(n665), .O(n666)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__1077.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__1078 (.I0(\uarttx_1/r_Clock_Count[4] ), .I1(n666), .I2(n656), 
            .O(\uarttx_1/n353 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1078.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1079 (.I0(\uarttx_1/r_Clock_Count[4] ), .I1(n666), .O(n667)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__1079.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__1080 (.I0(\uarttx_1/r_Clock_Count[5] ), .I1(n667), .I2(n656), 
            .O(\uarttx_1/n356 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1080.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1081 (.I0(\uarttx_1/r_Clock_Count[5] ), .I1(n667), .I2(\uarttx_1/r_Clock_Count[6] ), 
            .I3(n656), .O(\uarttx_1/n359 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__1081.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__1082 (.I0(\uarttx_1/r_Bit_Index[0] ), .I1(\uarttx_1/r_Bit_Index[1] ), 
            .I2(\uarttx_1/r_SM_Main[1] ), .O(\uarttx_1/n375 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__1082.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__1083 (.I0(\uarttx_1/r_Bit_Index[0] ), .I1(\uarttx_1/r_Bit_Index[1] ), 
            .I2(\uarttx_1/r_Bit_Index[2] ), .I3(\uarttx_1/r_SM_Main[1] ), 
            .O(\uarttx_1/n379 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__1083.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__888 (.I0(\uartrx_1/r_Clock_Count[2] ), .I1(\uartrx_1/r_Clock_Count[1] ), 
            .I2(\uartrx_1/r_Clock_Count[3] ), .I3(\uartrx_1/r_Clock_Count[4] ), 
            .O(n604)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__888.LUTMASK = 16'hf800;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(clock_w), .O(\clock_w~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_580acc17_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_580acc17_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_580acc17_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_580acc17_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_580acc17_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_580acc17_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_580acc17_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_580acc17_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_580acc17_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_580acc17_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_580acc17_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_RAM_5K_580acc17__16_16_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_RAM_5K_580acc17__16_16_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_50
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_51
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_52
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_53
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_54
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_55
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_56
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_57
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_58
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_59
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_60
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_61
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_62
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_63
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_64
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_65
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_580acc17_66
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_580acc17_0
// module not written out since it is a black box. 
//

