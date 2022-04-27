*****************************

*use this when your datasets are too big to merge in one step

*preliminary step is to have saved the big file you want to merge stuff onto

*that file will be referred to as the big master file


**************************************
*Split the File and Perform the Merges
**************************************

*adjust these ranges to whatever works for you
foreach range in 1/14000001 14000002/28000002 28000003/42000003 42000004/56000004 56000005/70000005 70000006/84000006 84000007/98000007 98000008/112000008 112000009/L {
	
	*open your big master in pieces
	use in `range' using "path_to_your_big_master_file", clear
	
	*merge in the thing you want to merge (might be m:1, so watch out)
	*keep(1 3) keeps only master and matched observations, good for space saving
	merge 1:1 the_merging_variable using "the_path_to_the_thing_to_merge_on", keep(1 3)
	
	*create an identifier to differentiate each file you'll end up saving
	*if you need more than 10 splits, change the -1 and 1 to -2 and 2 and go from there
	local rangedenoter=substr("`range'",-1,1)

	*save the new set fragment to some folder with path "$route\splits"
	save "$route\splits\name_of_master_file_`rangedenoter'.dta", replace
	
}


***********************************
*Append and Save the Big Merged Set
***********************************

*put all of the filepaths from above into some global with double quotes:
*i.e. global big_file_splits `""path1" "path2" "path3" and so on."' 
foreach split in $big_file_splits {
	
	*append the sets
	append using "`split'"
	
}

*save the appended, fininished file in some folder with path "$route"
save "$route\big_merged_file.dta", replace


