# stata_shortcuts
this is all of my nice stata shortcut stuff, all in one place

- allfiles_appender:
used to append lots of datasets to each other in Stata.

- allstates:
line one is a ready-to-go global macro of state and territory strings for Stata.
the rest of the file is some example code with stuff to look out for, followed by
lines of code with the states in lower, Proper, and UPPER cases, with and without "".

- month_labeler:
use this code to label month variables that range from 1-12 with their respective names.

- state_denoters:
this is a crosswalk between all the ways that states are identified in datasets.
variables included are as follows:
  statename (string state name with Title Caps)
  state_lower (string state name in lowercase)
  state_upper (string state name in UPPERCASE)
  state (string two-letter state abbreviation)
  statefip (state FIPS code number)
  stateicp (state ICP code number)
