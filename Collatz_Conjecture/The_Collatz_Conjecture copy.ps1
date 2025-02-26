# The Collatz Conjecture or 3x+1 problem can be summarized as follows:

# Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely. The conjecture states that no matter which number you start with, you will always reach 1 eventually.

# Given a number n, return the number of steps required to reach 1.
param([int]$n = 12)


$steps = 0

while($n -ne 1){
$n = if($n % 2 -eq 0) { $n/2 } else {$n * 3 + 1}
$steps++
}


Write-Output "Number of steps equals: $steps"