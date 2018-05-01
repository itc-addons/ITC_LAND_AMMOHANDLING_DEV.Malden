params ["_control","_index"];

_fuzeType = lbData [86004, _index];
	ctrlShow [86005, false];
	ctrlShow [86006, false];
	
itc_land_fuzeMode = _fuzeType;
//itc_land_selectedFuzeIndex = _index;

if(_fuzeType == "time") then {
	ctrlShow [86005, true];
	ctrlShow [86006, true];
	ctrlSetText [86006,format["%1", itc_land_fuzeValues]];
} else {
	ctrlShow [86005, false];
	ctrlShow [86006, false];	
};

