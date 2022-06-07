/*

this code is a template for appending all the files of a given type in a folder

the output from this code is placed in the $route folder, which is my preferred filepath global macro name

if you're looking for a split-merge-append help for huge datasets (RLL) use split_merge_append instead

*/

*set your directory
cd "$route\the_folder_where_the_files_are"

*make a tempfile to avoid accidentally stacking unrelated datasets, unnecessary for non-append loops
tempfile building
save `building', emptyok

*create a macro of all files in the dir folder with a given ending (example: .csv)
local filenames : dir "$route\the_folder_where_the_files_are" files "*.csv"

*start the loop
foreach f of local filenames {

	*open a file (adjust this for the appropriate file type)
	import delimited using `"`f'"' , varnames(1) clear
	
	*append the previous data to the bottom of this file
	append using `building'
	
	*save the tempfile with the new appends
	save `"`building'"', replace
	}
	
*save the final dataset
save "$route\appended_data", replace


