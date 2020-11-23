#!/usr/local/bin/tclsh

package require Tk

proc power {base p} {
  set result 1
  while {$p > 0} {
    set result [expr $result*$base]
    set p [expr $p-1]
  }
  return $result
}

entry .base -width 6 -relief sunken -textvariable base
label .label1 -text "elevado a"
entry .power -width 6 -relief sunken -textvariable power
label .label2 -text "e'"
label .result -textvariable result
pack .base .label1 .power .label2 .result \
  -side left -padx 1m -pady 2m
bind .base <Return> {set result [power $base $power]}
bind .power <Return> {set result [power $base $power]}
