import FormalLanglandsLab.NumberTheory.EulerCoefficientComparison
import FormalLanglandsLab.Examples.LSeriesExamples

namespace FormalLanglandsLab
namespace Registry

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory
open FormalLanglandsLab.Examples

theorem registry_divisorCount_1 :
    divisorCountFunction 1 = 1 := by
  rfl

theorem registry_divisorCount_2 :
    divisorCountFunction 2 = 2 := by
  rfl

theorem registry_divisorCount_4 :
    divisorCountFunction 4 = 3 := by
  rfl

theorem registry_divisorCount_6 :
    divisorCountFunction 6 = 4 := by
  rfl

theorem registry_divisorCount_12 :
    divisorCountFunction 12 = 6 := by
  rfl

theorem registry_sumOfDivisors_2 :
    sumOfDivisorsFunction 2 = 3 := by
  rfl

theorem registry_sumOfDivisors_4 :
    sumOfDivisorsFunction 4 = 7 := by
  rfl

theorem registry_sumOfDivisors_6 :
    sumOfDivisorsFunction 6 = 12 := by
  rfl

theorem registry_sumOfDivisors_12 :
    sumOfDivisorsFunction 12 = 28 := by
  rfl

theorem registry_squareDivisorSum_2 :
    squareDivisorSumFunction 2 = 5 := by
  rfl

theorem registry_squareDivisorSum_4 :
    squareDivisorSumFunction 4 = 21 := by
  rfl

theorem registry_squareDivisorSum_6 :
    squareDivisorSumFunction 6 = 50 := by
  rfl

theorem registry_squareDivisorSum_12 :
    squareDivisorSumFunction 12 = 210 := by
  rfl

theorem registry_gcd_2_3 :
    gcdValue 2 3 = 1 := by
  rfl

theorem registry_gcd_2_4 :
    gcdValue 2 4 = 2 := by
  rfl

theorem registry_coprime_2_3 :
    areCoprime 2 3 := by
  rfl

theorem registry_coprimeBool_2_4_false :
    areCoprimeBool 2 4 = false := by
  rfl

theorem registry_divisorCount_coprime_suite_four :
    coprimePairSuiteUpToFour divisorCountFunction = true := by
  rfl

theorem registry_sumOfDivisors_coprime_suite_four :
    coprimePairSuiteUpToFour sumOfDivisorsFunction = true := by
  rfl

theorem registry_squareDivisorSum_coprime_suite_four :
    coprimePairSuiteUpToFour squareDivisorSumFunction = true := by
  rfl

theorem registry_divisorCount_prime_power_two_table :
    primePowerTwoTable divisorCountFunction = (2, 3, 4) := by
  rfl

theorem registry_sumOfDivisors_prime_power_two_table :
    primePowerTwoTable sumOfDivisorsFunction = (3, 7, 15) := by
  rfl

theorem registry_squareDivisorSum_prime_power_two_table :
    primePowerTwoTable squareDivisorSumFunction = (5, 21, 85) := by
  rfl

theorem registry_divisorCount_coeff_compare_2_3 :
    coefficientProductAgreement divisorCountFunction 2 3 := by
  rfl

theorem registry_sumOfDivisors_coeff_compare_2_3 :
    coefficientProductAgreement sumOfDivisorsFunction 2 3 := by
  rfl

theorem registry_squareDivisorSum_coeff_compare_2_3 :
    coefficientProductAgreement squareDivisorSumFunction 2 3 := by
  rfl

theorem registry_divisorCount_20_from_4_5 :
    divisorCountFunction 20 =
      divisorCountFunction 4 * divisorCountFunction 5 := by
  rfl

theorem registry_sumOfDivisors_20_from_4_5 :
    sumOfDivisorsFunction 20 =
      sumOfDivisorsFunction 4 * sumOfDivisorsFunction 5 := by
  rfl

theorem registry_squareDivisorSum_20_from_4_5 :
    squareDivisorSumFunction 20 =
      squareDivisorSumFunction 4 * squareDivisorSumFunction 5 := by
  rfl

theorem registry_non_coprime_divisorCount_2_4_fails :
    divisorCountFunction 8 ≠
      divisorCountFunction 2 * divisorCountFunction 4 := by
  decide

theorem registry_non_coprime_sumOfDivisors_2_4_fails :
    sumOfDivisorsFunction 8 ≠
      sumOfDivisorsFunction 2 * sumOfDivisorsFunction 4 := by
  decide

theorem registry_divisorCountLSeries_coeff_6 :
    divisorCountLSeries.coeff 6 = 4 := by
  rfl

theorem registry_sumOfDivisorsLSeries_coeff_6 :
    sumOfDivisorsLSeries.coeff 6 = 12 := by
  rfl

theorem registry_squareDivisorSumLSeries_coeff_6 :
    squareDivisorSumLSeries.coeff 6 = 50 := by
  rfl

end Registry
end FormalLanglandsLab
