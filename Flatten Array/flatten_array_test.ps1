. './flattenarray.ps1'

Describe "Flatten array -Unit Tests" {
       
    Context "Function Array Recursive"{
        It "It should return empty list when given empty array" {
            $array = @()
            $result = arrayreq -array1 $array
            $result | Should -BeExactly @() 
        }
        It "It should flatten nested arrays and remove nulls"{
            $array = @(1, @(2, 3, $null, 4), @(5, $null))
            $result = arrayreq -array1 $array
            $result | Should -BeExactly @(1,2,3,4,5)
        }
        It "It should handle deeply nested loops"{
            $array = @(0, 2, @(@(2, 3), 8, @(0, @(9, $null, 0), $null)), 8, @(1, 2))
            $result = arrayreq -array1 $array
            $result | Should -BeExactly @(0, 2, 2, 3, 8, 0, 9, 0, 8, 1, 2)
        }
    }

}
