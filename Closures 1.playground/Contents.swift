import UIKit

// The Sorted Function
let names = ["chris", "alex", "ewa", "barry", "daniella"]


func backwards(s1: String, s2: String) -> Bool {
	return s1 > s2
}

var reversed = sorted(names, backwards)

// Closure Expression Syntax
reversed = sorted(names, { (s1: String, s2: String) -> Bool in return s1 < s2 })

println(reversed)

// Inferring Type From Context
reversed  = sorted(names, { s1, s2 in return s1 > s2 })

println(reversed)

// Implicit returns from Single-Expression closure
reversed = sorted(names, { s1, s2 in s1 < s2 })

println(reversed)

// Shorthand Argument Names
reversed = sorted(names, { $0 > $1 } )

println(reversed)

// Operator Functions
reversed = sorted(names, < )

// Trailing Closures
reversed = sorted(names) { $0 > $1 }
println(reversed)
