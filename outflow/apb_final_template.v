
// Efinity Top-level template
// Version: 2023.1.150
// Date: 2024-02-26 16:01

// Copyright (C) 2017 - 2023 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as E:\intern\project\apb_final\apb_final.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  apb_final
//     #4)  Insert design content.


module apb_final
(
  input clock_r,
  input clock_w,
  input i_Rx_Serial,
  input reset,
  input sel,
  input write,
  input jtag_inst1_CAPTURE,
  input jtag_inst1_DRCK,
  input jtag_inst1_RESET,
  input jtag_inst1_RUNTEST,
  input jtag_inst1_SEL,
  input jtag_inst1_SHIFT,
  input jtag_inst1_TCK,
  input jtag_inst1_TDI,
  input jtag_inst1_TMS,
  input jtag_inst1_UPDATE,
  output o_Tx_Active,
  output o_Tx_Done,
  output o_Tx_Serial,
  output jtag_inst1_TDO
);


endmodule

