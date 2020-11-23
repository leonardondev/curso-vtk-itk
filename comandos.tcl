expr 2 + 2

expr 3 << 2

expr 14.1 * 6

expr (3 > 4) || (6 <= 7)



set a 44

expr $a*4



set b [expr $a*4]

expr $b*$a


package require Tk
bind . <Any-Motion> {puts "pointer at %x %y"}