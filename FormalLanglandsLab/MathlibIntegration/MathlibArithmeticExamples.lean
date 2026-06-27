import FormalLanglandsLab.MathlibIntegration.DivisorTables
import FormalLanglandsLab.MathlibIntegration.PrimeListEulerProducts

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory

def mathlibDivisorCountFunction : ArithmeticFunction Nat :=
  fun n => mathlibDivisorCountFromList n

def mathlibSumOfDivisorsFunction : ArithmeticFunction Nat :=
  fun n => mathlibSumOfDivisorsFromList n

theorem mathlibDivisorCountFunction_one :
    mathlibDivisorCountFunction 1 = 1 := by
  rfl

theorem mathlibDivisorCountFunction_two :
    mathlibDivisorCountFunction 2 = 2 := by
  rfl

theorem mathlibDivisorCountFunction_three :
    mathlibDivisorCountFunction 3 = 2 := by
  rfl

theorem mathlibDivisorCountFunction_four :
    mathlibDivisorCountFunction 4 = 3 := by
  rfl

theorem mathlibDivisorCountFunction_six :
    mathlibDivisorCountFunction 6 = 4 := by
  rfl

theorem mathlibDivisorCountFunction_twelve :
    mathlibDivisorCountFunction 12 = 6 := by
  rfl

theorem mathlibSumOfDivisorsFunction_one :
    mathlibSumOfDivisorsFunction 1 = 1 := by
  rfl

theorem mathlibSumOfDivisorsFunction_two :
    mathlibSumOfDivisorsFunction 2 = 3 := by
  rfl

theorem mathlibSumOfDivisorsFunction_three :
    mathlibSumOfDivisorsFunction 3 = 4 := by
  rfl

theorem mathlibSumOfDivisorsFunction_four :
    mathlibSumOfDivisorsFunction 4 = 7 := by
  rfl

theorem mathlibSumOfDivisorsFunction_six :
    mathlibSumOfDivisorsFunction 6 = 12 := by
  rfl

theorem mathlibSumOfDivisorsFunction_twelve :
    mathlibSumOfDivisorsFunction 12 = 28 := by
  rfl

theorem mathlibDivisorCount_matches_verified_one :
    mathlibDivisorCountFunction 1 = divisorCountFunction 1 := by
  rfl

theorem mathlibDivisorCount_matches_verified_four :
    mathlibDivisorCountFunction 4 = divisorCountFunction 4 := by
  rfl

theorem mathlibDivisorCount_matches_verified_six :
    mathlibDivisorCountFunction 6 = divisorCountFunction 6 := by
  rfl

theorem mathlibDivisorCount_matches_verified_twelve :
    mathlibDivisorCountFunction 12 = divisorCountFunction 12 := by
  rfl

theorem mathlibSumOfDivisors_matches_verified_one :
    mathlibSumOfDivisorsFunction 1 = sumOfDivisorsFunction 1 := by
  rfl

theorem mathlibSumOfDivisors_matches_verified_four :
    mathlibSumOfDivisorsFunction 4 = sumOfDivisorsFunction 4 := by
  rfl

theorem mathlibSumOfDivisors_matches_verified_six :
    mathlibSumOfDivisorsFunction 6 = sumOfDivisorsFunction 6 := by
  rfl

theorem mathlibSumOfDivisors_matches_verified_twelve :
    mathlibSumOfDivisorsFunction 12 = sumOfDivisorsFunction 12 := by
  rfl

theorem mathlibDivisorCount_coprime_product_two_three :
    mathlibDivisorCountFunction 6 =
      mathlibDivisorCountFunction 2 * mathlibDivisorCountFunction 3 := by
  rfl

theorem mathlibSumOfDivisors_coprime_product_two_three :
    mathlibSumOfDivisorsFunction 6 =
      mathlibSumOfDivisorsFunction 2 * mathlibSumOfDivisorsFunction 3 := by
  rfl

theorem mathlibDivisorCount_coprime_product_three_four :
    mathlibDivisorCountFunction 12 =
      mathlibDivisorCountFunction 3 * mathlibDivisorCountFunction 4 := by
  rfl

theorem mathlibSumOfDivisors_coprime_product_three_four :
    mathlibSumOfDivisorsFunction 12 =
      mathlibSumOfDivisorsFunction 3 * mathlibSumOfDivisorsFunction 4 := by
  rfl

theorem mathlibDivisorCount_non_coprime_product_fails_two_four :
    mathlibDivisorCountFunction 8 ≠
      mathlibDivisorCountFunction 2 * mathlibDivisorCountFunction 4 := by
  decide

theorem mathlibSumOfDivisors_non_coprime_product_fails_two_four :
    mathlibSumOfDivisorsFunction 8 ≠
      mathlibSumOfDivisorsFunction 2 * mathlibSumOfDivisorsFunction 4 := by
  decide

end MathlibIntegration
end FormalLanglandsLab
