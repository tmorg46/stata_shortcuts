global allstates `""alaska" "alabama" "arkansas" "american samoa" "arizona" "california" "colorado" "connecticut" "district of columbia" "delaware" "florida" "georgia" "guam" "hawaii" "iowa" "idaho" "illinois" "indiana" "kansas" "kentucky" "louisiana" "massachusetts" "maryland" "maine" "michigan" "minnesota" "missouri" "mississippi" "montana" "north carolina" "north dakota" "nebraska" "new hampshire" "new jersey" "new mexico" "nevada" "new york" "ohio" "oklahoma" "oregon" "pennsylvania" "puerto rico" "rhode island" "south carolina" "south dakota" "tennessee" "texas" "utah" "virginia" "virgin islands" "vermont" "washington" "wisconsin" "wyoming""'

/* example code:

*replace all of the strings that contain a state with that state
foreach state in $allstates {
replace pr_birth_place = "`state'" if ustrpos(pr_birth_place, "`state'")>0
}

*note the need to put the macros into quotes as well; the global will kill them

*/

below are single-line lists of every US state and major territory, with and without quotes, in lower, Proper, and UPPER cases.
use extra double quotes `""' if used in a Stata macro

***************
*WITHOUT QUOTES
***************
lowercase:
alaska alabama arkansas american samoa arizona california colorado connecticut district of columbia delaware florida georgia guam hawaii iowa idaho illinois indiana kansas kentucky louisiana massachusetts maryland maine michigan minnesota missouri mississippi montana north carolina north dakota nebraska new hampshire new jersey new mexico nevada new york ohio oklahoma oregon pennsylvania puerto rico rhode island south carolina south dakota tennessee texas utah virginia virgin islands vermont washington wisconsin west virginia wyoming

UPPERCASE:
ALASKA ALABAMA ARKANSAS AMERICAN SAMOA ARIZONA CALIFORNIA COLORADO CONNECTICUT DISTRICT OF COLUMBIA DELAWARE FLORIDA GEORGIA GUAM HAWAII IOWA IDAHO ILLINOIS INDIANA KANSAS KENTUCKY LOUISIANA MASSACHUSETTS MARYLAND MAINE MICHIGAN MINNESOTA MISSOURI MISSISSIPPI MONTANA NORTH CAROLINA NORTH DAKOTA NEBRASKA NEW HAMPSHIRE NEW JERSEY NEW MEXICO NEVADA NEW YORK OHIO OKLAHOMA OREGON PENNSYLVANIA PUERTO RICO RHODE ISLAND SOUTH CAROLINA SOUTH DAKOTA TENNESSEE TEXAS UTAH VIRGINIA VIRGIN ISLANDS VERMONT WASHINGTON WISCONSIN WEST VIRGINIA WYOMING

Proper Case:
Alaska Alabama Arkansas American Samoa Arizona California Colorado Connecticut District Of Columbia Delaware Florida Georgia Guam Hawaii Iowa Idaho Illinois Indiana Kansas Kentucky Louisiana Massachusetts Maryland Maine Michigan Minnesota Missouri Mississippi Montana North Carolina North Dakota Nebraska New Hampshire New Jersey New Mexico Nevada New York Ohio Oklahoma Oregon Pennsylvania Puerto Rico Rhode Island South Carolina South Dakota Tennessee Texas Utah Virginia Virgin Islands Vermont Washington Wisconsin West Virginia Wyoming

************
*WITH QUOTES
************
lowercase:
"alaska" "alabama" "arkansas" "american samoa" "arizona" "california" "colorado" "connecticut" "district of columbia" "delaware" "florida" "georgia" "guam" "hawaii" "iowa" "idaho" "illinois" "indiana" "kansas" "kentucky" "louisiana" "massachusetts" "maryland" "maine" "michigan" "minnesota" "missouri" "mississippi" "montana" "north carolina" "north dakota" "nebraska" "new hampshire" "new jersey" "new mexico" "nevada" "new york" "ohio" "oklahoma" "oregon" "pennsylvania" "puerto rico" "rhode island" "south carolina" "south dakota" "tennessee" "texas" "utah" "virginia" "virgin islands" "vermont" "washington" "wisconsin" "west virginia" "wyoming"

UPPERCASE:
"ALASKA" "ALABAMA" "ARKANSAS" "AMERICAN SAMOA" "ARIZONA" "CALIFORNIA" "COLORADO" "CONNECTICUT" "DISTRICT OF COLUMBIA" "DELAWARE" "FLORIDA" "GEORGIA" "GUAM" "HAWAII" "IOWA" "IDAHO" "ILLINOIS" "INDIANA" "KANSAS" "KENTUCKY" "LOUISIANA" "MASSACHUSETTS" "MARYLAND" "MAINE" "MICHIGAN" "MINNESOTA" "MISSOURI" "MISSISSIPPI" "MONTANA" "NORTH CAROLINA" "NORTH DAKOTA" "NEBRASKA" "NEW HAMPSHIRE" "NEW JERSEY" "NEW MEXICO" "NEVADA" "NEW YORK" "OHIO" "OKLAHOMA" "OREGON" "PENNSYLVANIA" "PUERTO RICO" "RHODE ISLAND" "SOUTH CAROLINA" "SOUTH DAKOTA" "TENNESSEE" "TEXAS" "UTAH" "VIRGINIA" "VIRGIN ISLANDS" "VERMONT" "WASHINGTON" "WISCONSIN" "WEST VIRGINIA" "WYOMING"

Proper Case:
"Alaska" "Alabama" "Arkansas" "American Samoa" "Arizona" "California" "Colorado" "Connecticut" "District Of Columbia" "Delaware" "Florida" "Georgia" "Guam" "Hawaii" "Iowa" "Idaho" "Illinois" "Indiana" "Kansas" "Kentucky" "Louisiana" "Massachusetts" "Maryland" "Maine" "Michigan" "Minnesota" "Missouri" "Mississippi" "Montana" "North Carolina" "North Dakota" "Nebraska" "New Hampshire" "New Jersey" "New Mexico" "Nevada" "New York" "Ohio" "Oklahoma" "Oregon" "Pennsylvania" "Puerto Rico" "Rhode Island" "South Carolina" "South Dakota" "Tennessee" "Texas" "Utah" "Virginia" "Virgin Islands" "Vermont" "Washington" "Wisconsin" "West Virginia" "Wyoming"
