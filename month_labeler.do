*use this and replace the XXXX's at the bottom with the names of the variables you have in numeric 1-12 format

*create the label for the month variables
label define month_lbl 1 `"January"'
label define month_lbl 2 `"February"', add
label define month_lbl 3 `"March"', add
label define month_lbl 4 `"April"', add
label define month_lbl 5 `"May"', add
label define month_lbl 6 `"June"', add
label define month_lbl 7 `"July"', add
label define month_lbl 8 `"August"', add
label define month_lbl 9 `"September"', add
label define month_lbl 10 `"October"', add
label define month_lbl 11 `"November"', add
label define month_lbl 12 `"December"', add

*label the month variables
label values /* XXXX */ month_lbl
label values /* XXXX */ month_lbl
