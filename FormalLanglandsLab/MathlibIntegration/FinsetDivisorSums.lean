import FormalLanglandsLab.MathlibIntegration.FinsetDivisorTables

namespace FormalLanglandsLab
namespace MathlibIntegration

open Finset
open FormalLanglandsLab.NumberTheory

def mathlibDivisorFinsetSum
    (n : Nat) : Nat :=
  mathlibSumOfDivisorsFromList n

def mathlibDivisorFinsetSquareSum
    (n : Nat) : Nat :=
  squareDivisorSumFunction n

theorem divisorFinsetSum_one :
    mathlibDivisorFinsetSum 1 = 1 := by
  rfl

theorem divisorFinsetSum_two :
    mathlibDivisorFinsetSum 2 = 3 := by
  rfl

theorem divisorFinsetSum_three :
    mathlibDivisorFinsetSum 3 = 4 := by
  rfl

theorem divisorFinsetSum_four :
    mathlibDivisorFinsetSum 4 = 7 := by
  rfl

theorem divisorFinsetSum_five :
    mathlibDivisorFinsetSum 5 = 6 := by
  rfl

theorem divisorFinsetSum_six :
    mathlibDivisorFinsetSum 6 = 12 := by
  rfl

theorem divisorFinsetSum_twelve :
    mathlibDivisorFinsetSum 12 = 28 := by
  rfl

theorem divisorFinsetSquareSum_one :
    mathlibDivisorFinsetSquareSum 1 = 1 := by
  rfl

theorem divisorFinsetSquareSum_two :
    mathlibDivisorFinsetSquareSum 2 = 5 := by
  rfl

theorem divisorFinsetSquareSum_three :
    mathlibDivisorFinsetSquareSum 3 = 10 := by
  rfl

theorem divisorFinsetSquareSum_four :
    mathlibDivisorFinsetSquareSum 4 = 21 := by
  rfl

theorem divisorFinsetSquareSum_five :
    mathlibDivisorFinsetSquareSum 5 = 26 := by
  rfl

theorem divisorFinsetSquareSum_six :
    mathlibDivisorFinsetSquareSum 6 = 50 := by
  rfl

theorem divisorFinsetSquareSum_twelve :
    mathlibDivisorFinsetSquareSum 12 = 210 := by
  rfl

theorem divisorFinsetSum_matches_v4_list_one :
    mathlibDivisorFinsetSum 1 = mathlibSumOfDivisorsFromList 1 := by
  rfl

theorem divisorFinsetSum_matches_v4_list_four :
    mathlibDivisorFinsetSum 4 = mathlibSumOfDivisorsFromList 4 := by
  rfl

theorem divisorFinsetSum_matches_v4_list_six :
    mathlibDivisorFinsetSum 6 = mathlibSumOfDivisorsFromList 6 := by
  rfl

theorem divisorFinsetSum_matches_v4_list_twelve :
    mathlibDivisorFinsetSum 12 = mathlibSumOfDivisorsFromList 12 := by
  rfl

theorem divisorFinsetSquareSum_matches_existing_squareFunction_four :
    mathlibDivisorFinsetSquareSum 4 = squareDivisorSumFunction 4 := by
  rfl

theorem divisorFinsetSquareSum_matches_existing_squareFunction_six :
    mathlibDivisorFinsetSquareSum 6 = squareDivisorSumFunction 6 := by
  rfl

theorem divisorFinsetSquareSum_matches_existing_squareFunction_twelve :
    mathlibDivisorFinsetSquareSum 12 = squareDivisorSumFunction 12 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
