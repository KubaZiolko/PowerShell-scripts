. .\The_Collatz_Conjecture_withtest.ps1

Describe "Get-CollatzSteps function tests"{
    It "Should return 0 for input 1" {
        Get-CollatzSteps -n 1 | Should -Be 0
    }

    It "Should return correct steps for input 6"{
        Get-CollatzSteps -n 6 | Should -Be 8
    }

    It "Should throw error for negative number"{
        {Get-CollatzSteps -n -5} | Should -Throw "Number must be greater than 0"
    }

}