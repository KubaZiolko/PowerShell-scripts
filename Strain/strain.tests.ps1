. ./Strain/strain.ps1

Describe "keep & discard - Unit Tests " {
    BeforeAll{ 
    #Function     
    $evenpredicate = {param($x) $x % 2 -eq 0 }
    
    }

    Context "Function keep" {
        It "Should return only even numbers"{
            $numbers = 1..5
            $result = keep -collection $numbers -predicate $evenpredicate
            $result | Should -BeExactly @(2,4)
        
        }
        It "Should return empty , if no element fits "{
            $numbers = 1,3,5
            $result = keep -collection $numbers -predicate $evenpredicate
            $result | Should -BeExactly @()
        }
        It "Should return empty, if there are no elements"{
            $numbers = @()
            $result = keep -collection $numbers -predicate $evenpredicate
            $result | Should -BeExactly @()
        }
    }
    Context "Function discard"{
        It "Should return only odd numbers"{
            $numbers = 1..5
            $result = discard -collection $numbers -predicate $evenpredicate
            $result | Should -BeExactly @(1,3,5)
        
        }
        It "Should return empty , if no element fits "{
            $numbers = 2,4
            $result = discard -collection $numbers -predicate $evenpredicate
            $result | Should -BeExactly @()
        }
        It "Should return empty, if there are no elements"{
            $numbers = @()
            $result = discard -collection $numbers -predicate $evenpredicate
            $result | Should -BeExactly @()
        } 
    }
}