import FormalLanglandsLab.MathlibIntegration.FinsetDivisorTables

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset
open FormalLanglandsLab.NumberTheory

def mathlibDivisorFinsetSum
    (n : Nat) : Nat :=
  ∑ d in mathlibDivisorFinset n, d

def mathlibDivisorFinsetSquareSum
    (n : Nat) : Nat :=
  ∑ d in mathlibDivisorFinset n, d * d

theorem divisorFinsetSum_one :
    mathlibDivisorFinsetSum 1 = 1 := by
  decide

theorem divisorFinsetSum_two :
    mathlibDivisorFinsetSum 2 = 3 := by
  decide

theorem divisorFinsetSum_three :
    mathlibDivisorFinsetSum 3 = 4 := by
  decide

theorem divisorFinsetSum_four :
    mathlibDivisorFinsetSum 4 = 7 := by
  decide

theorem divisorFinsetSum_five :
    mathlibDivisorFinsetSum 5 = 6 := by
  decide

theorem divisorFinsetSum_six :
    mathlibDivisorFinsetSum 6 = 12 := by
  decide

theorem divisorFinsetSum_twelve :
    mathlibDivisorFinsetSum 12 = 28 := by
  decide

theorem divisorFinsetSquareSum_one :
    mathlibDivisorFinsetSquareSum 1 = 1 := by
  decide

theorem divisorFinsetSquareSum_two :
    mathlibDivisorFinsetSquareSum 2 = 5 := by
  decide

theorem divisorFinsetSquareSum_three :
    mathlibDivisorFinsetSquareSum 3 = 10 := by
  decide

theorem divisorFinsetSquareSum_four :
    mathlibDivisorFinsetSquareSum 4 = 21 := by
  decide

theorem divisorFinsetSquareSum_five :
    mathlibDivisorFinsetSquareSum 5 = 26 := by
  decide

theorem divisorFinsetSquareSum_six :
    mathlibDivisorFinsetSquareSum 6 = 50 := by
  decide

theorem divisorFinsetSquareSum_twelve :
    mathlibDivisorFinsetSquareSum 12 = 210 := by
  decide

theorem divisorFinsetSum_matches_v4_list_one :
    mathlibDivisorFinsetSum 1 = mathlibSumOfDivisorsFromList 1 := by
  decide

theorem divisorFinsetSum_matches_v4_list_four :
    mathlibDivisorFinsetSum 4 = mathlibSumOfDivisorsFromList 4 := by
  decide

theorem divisorFinsetSum_matches_v4_list_six :
    mathlibDivisorFinsetSum 6 = mathlibSumOfDivisorsFromList 6 := by
  decide

theorem divisorFinsetSum_matches_v4_list_twelve :
    mathlibDivisorFinsetSum 12 = mathlibSumOfDivisorsFromList 12 := by
  decide

theorem divisorFinsetSquareSum_matches_existing_squareFunction_four :
    mathlibDivisorFinsetSquareSum 4 = squareDivisorSumFunction 4 := by
  decide

theorem divisorFinsetSquareSum_matches_existing_squareFunction_six :
    mathlibDivisorFinsetSquareSum 6 = squareDivisorSumFunction 6 := by
  decide

theorem divisorFinsetSquareSum_matches_existing_squareFunction_twelve :
    mathlibDivisorFinsetSquareSum 12 = squareDivisorSumFunction 12 := by
  decide

end MathlibIntegration
end FormalLanglandsLab
