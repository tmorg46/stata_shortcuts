*****************************

*version v.0

/* 

doing a Template Thing
Code by Tommy Morgan
Data and Paper by:
Tommy Morgan, EveryoneElseHere

*/

clear
discard
cap log close

// Set this global to the path of the template folder, where the stuff goes
global route "V:\FHSS-JoePriceResearch\RA_work_folders\Tommy_Morgan\template"

{ // OTHER GLOBALS

	*the first thing created in *00, used in *18
	global used_global "the global"

	*the second thing created in *00, used in ...
	global unused_global "the unused global"
	
	*some list of things, used in *46
	global list_of_things thing1 thing2 thing3
	
} // END GLOBALS


*navigate to the do-file folder
cd "$route\dofiles"

*01: the first thing
do project_01_first_thing // tested, works

*02: the second thing
do project_02_second_thing // unfinished
