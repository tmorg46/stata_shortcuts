*drop variables that never vary in a dataset
ds

foreach var in `r(varlist)' {
    capture assert `var' == `var'[1]
    if !_rc drop `var'
}
