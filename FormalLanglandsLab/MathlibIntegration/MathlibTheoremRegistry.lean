import FormalLanglandsLab.MathlibIntegration.MathlibLSeriesExamples
import FormalLanglandsLab.MathlibIntegration.PrimeListEulerProducts

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory
open FormalLanglandsLab.LFunctions

def v4MathlibPrimeCount : Nat := 5
def v4MathlibDivisorListExampleCount : Nat := 6
def v4MathlibArithmeticFunctionCount : Nat := 2
def v4MathlibLSeriesExampleCount : Nat := 2
def v4MathlibEulerProductExampleCount : Nat := 4

def v4MathlibTrackedResultCount : Nat :=
  v4MathlibPrimeCount +
  v4MathlibDivisorListExampleCount +
  v4MathlibArithmeticFunctionCount +
  v4MathlibLSeriesExampleCount +
  v4MathlibEulerProductExampleCount

theorem v4MathlibPrimeCount_value :
    v4MathlibPrimeCount = 5 := by
  rfl

theorem v4MathlibDivisorListExampleCount_value :
    v4MathlibDivisorListExampleCount = 6 := by
  rfl

theorem v4MathlibArithmeticFunctionCount_value :
    v4MathlibArithmeticFunctionCount = 2 := by
  rfl

theorem v4MathlibLSeriesExampleCount_value :
    v4MathlibLSeriesExampleCount = 2 := by
  rfl

theorem v4MathlibEulerProductExampleCount_value :
    v4MathlibEulerProductExampleCount = 4 := by
  rfl

theorem v4MathlibTrackedResultCount_value :
    v4MathlibTrackedResultCount = 19 := by
  rfl

theorem registry_prime_two :
    Nat.Prime mathlibPrimeTwo.value := by
  exact mathlibPrimeTwo.isPrime

theorem registry_prime_three :
    Nat.Prime mathlibPrimeThree.value := by
  exact mathlibPrimeThree.isPrime

theorem registry_prime_five :
    Nat.Prime mathlibPrimeFive.value := by
  exact mathlibPrimeFive.isPrime

theorem registry_prime_seven :
    Nat.Prime mathlibPrimeSeven.value := by
  exact mathlibPrimeSeven.isPrime

theorem registry_prime_eleven :
    Nat.Prime mathlibPrimeEleven.value := by
  exact mathlibPrimeEleven.isPrime

theorem registry_divisorList_one :
    mathlibDivisorList 1 = [1] := by
  rfl

theorem registry_divisorList_two :
    mathlibDivisorList 2 = [1, 2] := by
  rfl

theorem registry_divisorList_three :
    mathlibDivisorList 3 = [1, 3] := by
  rfl

theorem registry_divisorList_four :
    mathlibDivisorList 4 = [1, 2, 4] := by
  rfl

theorem registry_divisorList_six :
    mathlibDivisorList 6 = [1, 2, 3, 6] := by
  rfl

theorem registry_divisorList_twelve :
    mathlibDivisorList 12 = [1, 2, 3, 4, 6, 12] := by
  rfl

theorem registry_mathlibDivisorCount_twelve :
    mathlibDivisorCountFunction 12 = 6 := by
  rfl

theorem registry_mathlibSumOfDivisors_twelve :
    mathlibSumOfDivisorsFunction 12 = 28 := by
  rfl

theorem registry_mathlibDivisorCount_agrees_verified_twelve :
    mathlibDivisorCountFunction 12 = divisorCountFunction 12 := by
  rfl

theorem registry_mathlibSumOfDivisors_agrees_verified_twelve :
    mathlibSumOfDivisorsFunction 12 = sumOfDivisorsFunction 12 := by
  rfl

theorem registry_mathlibDivisorCountLSeries_coeff_six :
    mathlibDivisorCountLSeries.coeff 6 = 4 := by
  rfl

theorem registry_mathlibSumOfDivisorsLSeries_coeff_six :
    mathlibSumOfDivisorsLSeries.coeff 6 = 12 := by
  rfl

theorem registry_constantOne_finiteEulerProduct_small :
    finiteMathlibEulerProduct constantOneFunction mathlibSmallPrimeIndexList = 27 := by
  rfl

theorem registry_divisorCount_finiteEulerProduct_small :
    finiteMathlibEulerProduct divisorCountFunction mathlibSmallPrimeIndexList = 216 := by
  rfl

theorem registry_sumOfDivisors_finiteEulerProduct_small :
    finiteMathlibEulerProduct sumOfDivisorsFunction mathlibSmallPrimeIndexList = 7524 := by
  rfl

theorem registry_squareDivisorSum_finiteEulerProduct_small :
    finiteMathlibEulerProduct squareDivisorSumFunction mathlibSmallPrimeIndexList = 1867212 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
