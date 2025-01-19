#! /usr/bin/vvp
:ivl_version "12.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "/usr/lib64/ivl/system.vpi";
:vpi_module "/usr/lib64/ivl/vhdl_sys.vpi";
:vpi_module "/usr/lib64/ivl/vhdl_textio.vpi";
:vpi_module "/usr/lib64/ivl/v2005_math.vpi";
:vpi_module "/usr/lib64/ivl/va_math.vpi";
S_0x563c52705470 .scope module, "notGate" "notGate" 2 1;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "x";
    .port_info 1 /OUTPUT 1 "y";
o0x7f7b92b7f018 .functor BUFZ 1, C4<z>; HiZ drive
L_0x563c5274b0a0 .functor NOT 1, o0x7f7b92b7f018, C4<0>, C4<0>, C4<0>;
v0x563c52706f60_0 .net "x", 0 0, o0x7f7b92b7f018;  0 drivers
v0x563c5274af80_0 .net "y", 0 0, L_0x563c5274b0a0;  1 drivers
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "notGate.v";
