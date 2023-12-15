let sample_input = '1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet'

let sample_input_two = 'two1nine
eightwothree
abcone2threexyz
xtwone3four
4nineeightseven2
zoneight234
7pqrstsixteen'

def part_one [txt] {
  $txt
    | lines 
    | parse --regex '^\D*(?P<first>\d+)?.*(?P<last>\d+)' 
    | each {|x| if $x.first != "" { $'($x.first)($x.last)' } else {$'($x.last)($x.last)'}} 
    | into int
    | math sum
}

# part_one $sample_input

def part_two [txt] {
  let subs = [
    [ "one" "on1e" ]
    [ "two" "tw2o" ]
    [ "three" "thre3e" ]
    [ "four" "fou4r" ]
    [ "five" "fiv5e" ]
    [ "six" "si6x" ]
    [ "seven" "seve7n" ]
    [ "eight" "eigh8t" ]
    [ "nine" "nin9e" ]
  ]
  let lines = $txt | lines
  $subs | reduce -f $lines {|sub, lines| $lines | str replace --all $sub.0 $sub.1}
    | parse --regex '^\D*(?P<first>\d+)?.*(?P<last>\d+)' 
    | each {|x| if $x.first != "" { $'($x.first)($x.last)' } else {$'($x.last)($x.last)'}} 
    | into int
    | math sum
}

part_two $sample_input_two
