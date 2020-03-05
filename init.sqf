
enableSaving false;[] execVM "R3F_LOG\init.sqf";[] execVM "Vcom\VcomInit.sqf"; [] execVM "outlw_magRepack\MagRepack_init_sv.sqf";call compileFinal preprocessFile "basstardpersis\BAS_persistence\client\BAS_persistence_client_initialization.sqf";
lcarrier enableSimulationGlobal FALSE;
//[] execVM "fn_ALforestb.sqf";
missionNamespace setVariable ["foxy1", 0, true];
missionNamespace setVariable ["foxy2", 0, true];
