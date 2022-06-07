*****************************

*use this when your datasets are too big to merge in one step

*preliminary step is to have saved the big file you want to merge stuff onto
*it also uses a $route global to some big project file


**************************************
*Split the File and Perform the Merges
**************************************

*adjust these ranges to whatever works for you
foreach range in 1/14000001 14000002/28000002 28000003/42000003 42000004/56000004 56000005/70000005 70000006/84000006 84000007/98000007 98000008/112000008 112000009/L {
	
	*open your big file in pieces
	use in `range' using "path_to_really_big_file", clear
	
	*merge in the thing you want to merge (might be m:1, so watch out)
	*keep(1 3) keeps only master and matched observations, good for space saving
	merge 1:1 the_merging_variable using "the_path_to_the_thing_to_merge_on", keep(1 3)
	
	*use the last character of each `range' as an identifier for the split
	*if you need more than 10 splits, change the -1 and 1 to -2 and 2 and go from there
	local rangedenoter=substr("`range'",-1,1)

	*save the new set fragment to the $route folder
	save "$route\splits_`rangedenoter'.dta", replace
	
}


***********************************
*Append and Save the Big Merged Set
***********************************

*append the splits 
foreach rangedenoter in 1 2 3 4 5 6 7 8 L {
	
	*append the sets
	append using "$route\splits_`rangedenoter'.dta"
	
}

*save the appended, fininished file in some folder with path "$route"
save "$route\big_merged_file.dta", replace

*erase the splits 
foreach rangedenoter in 1 2 3 4 5 6 7 8 L {
	
	*erase the splits
	erase "$route\splits_`rangedenoter'.dta"
	
}

