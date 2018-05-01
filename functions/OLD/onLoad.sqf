waitUntil {
	!(isNull (findDisplay 86000))
};
itc_land_SPHammoHandler_open = true;

[] call itc_land_SPHammoHandler_fnc_fillAmmoList;

// is gun loaded
if (currentMagazine vehicle ace_player isKindOf ["itc_land_how_mag", configFile >> "CfgMagazines"]) then {
	ctrlSetText [86009, "UNLOAD"];
	
	itc_land_SPHammoHandler_status = "READY TO FIRE";
	//ctrlSetText [86011, itc_land_SPHammoHandler_status];
} else {
	ctrlEnable [86010, false];
	itc_land_SPHammoHandler_status	= "WAITING";
	//ctrlSetText [86011, itc_land_SPHammoHandler_status];
};
	//Hide Guidance fields
	//LGM
	ctrlShow [86007, false];
	ctrlShow [86008, false];
	ctrlSetText [86008, "1111"];
	//PGM
	ctrlShow [86012, false];
	ctrlShow [86013, false];
		ctrlSetText [86013, "00000000"];
	ctrlShow [86014, false];
	ctrlShow [86015, false];
		ctrlSetText [86015, "0"];
		
waitUntil {
	ctrlSetText [86011, itc_land_SPHammoHandler_status];
	if(!alive ace_player) then {
		closeDialog 86000;
		itc_land_SPHammoHandler_open = false;
	};
	sleep 0.1;
	!itc_land_SPHammoHandler_open;
};		
