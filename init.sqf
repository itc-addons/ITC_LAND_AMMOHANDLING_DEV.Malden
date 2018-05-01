//init.sqf

itc_land_SPHammoHandler_fnc_onLoad = compile preProcessFileLineNumbers "functions\onLoad.sqf";
itc_land_SPHammoHandler_fnc_fillAmmoList = compile preProcessFileLineNumbers "functions\fillAmmoList.sqf";
itc_land_SPHammoHandler_fnc_fillFuzeList = compile preProcessFileLineNumbers "functions\fillFuzeList.sqf";

itc_land_SPHammoHandler_fnc_onSelectAmmo = compile preProcessFileLineNumbers "functions\onLBSelChanged_ammoList.sqf";

itc_land_SPHammoHandler_fnc_onSelectFuze = compile preProcessFileLineNumbers "functions\onLBSelChanged_fuzeList.sqf";

itc_land_SPHammoHandler_fnc_changeCharge = compile preProcessFileLineNumbers "functions\changeCharge.sqf";

itc_land_SPHammoHandler_fnc_loadGun  = compile preProcessFileLineNumbers "functions\loadGun.sqf";
itc_land_SPHammoHandler_fnc_fireGun = compile preProcessFileLineNumbers "functions\fireGun.sqf";
itc_land_SPHammoHandler_fnc_firedEH = compile preProcessFileLineNumbers "functions\firedEH.sqf";
/*
[vehicle ACE_player, "FiredBIS", {
    systemChat _thisArgs;
    player removeEventHandler [_thisType, _thisID];
}] call CBA_fnc_addBISEventHandler;
*/
//Variables
itc_land_SPHammoHandler_status = "";

itc_land_selectedMagClass = "";
itc_land_selectedMagConfig = "";

//itc_land_fuzeMode = "";
//itc_land_fuzeValues = 0; //time: time in seconds (0), prox: height above ground in metres (5), delay: delay in seconds (0.005)

 ["itc_land_SPH01_base", "Fired", {_this call itc_land_SPHammoHandler_fnc_firedEH}] call CBA_fnc_addClassEventHandler;
 ["itc_land_SPH02_base", "Fired", {_this call itc_land_SPHammoHandler_fnc_firedEH}] call CBA_fnc_addClassEventHandler;