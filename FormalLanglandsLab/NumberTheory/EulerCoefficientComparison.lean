import FormalLanglandsLab.NumberTheory.PrimePowerTables

namespace FormalLanglandsLab
namespace NumberTheory

open FormalLanglandsLab.Core

def localCoefficientProduct
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Nat :=
  f a * f b

def globalCoefficientAtProduct
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Nat :=
  f (a * b)

def coefficientProductAgreement
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Prop :=
  globalCoefficientAtProduct f a b =
    localCoefficientProduct f a b

theorem coprimePairProperty_implies_coefficientProductAgreement
    (f : ArithmeticFunction Nat)
    (a b : Nat)
    (h : coprimeMultiplicativePairProperty f a b)
    (hc : areCoprime a b) :
    coefficientProductAgreement f a b := by
  exact h hc

theorem divisorCount_coeff_compare_two_three :
    coefficientProductAgreement divisorCountFunction 2 3 := by
  rfl

theorem sumOfDivisors_coeff_compare_two_three :
    coefficientProductAgreement sumOfDivisorsFunction 2 3 := by
  rfl

theorem squareDivisorSum_coeff_compare_two_three :
    coefficientProductAgreement squareDivisorSumFunction 2 3 := by
  rfl

theorem divisorCount_coeff_compare_three_four :
    coefficientProductAgreement divisorCountFunction 3 4 := by
  rfl

theorem sumOfDivisors_coeff_compare_three_four :
    coefficientProductAgreement sumOfDivisorsFunction 3 4 := by
  rfl

theorem squareDivisorSum_coeff_compare_three_four :
    coefficientProductAgreement squareDivisorSumFunction 3 4 := by
  rfl

theorem divisorCount_coeff_compare_four_five :
    coefficientProductAgreement divisorCountFunction 4 5 := by
  rfl

theorem sumOfDivisors_coeff_compare_four_five :
    coefficientProductAgreement sumOfDivisorsFunction 4 5 := by
  rfl

theorem squareDivisorSum_coeff_compare_four_five :
    coefficientProductAgreement squareDivisorSumFunction 4 5 := by
  rfl

theorem divisorCount_six_from_local_two_three :
    divisorCountFunction 6 =
      divisorCountFunction 2 * divisorCountFunction 3 := by
  rfl

theorem sumOfDivisors_six_from_local_two_three :
    sumOfDivisorsFunction 6 =
      sumOfDivisorsFunction 2 * sumOfDivisorsFunction 3 := by
  rfl

theorem squareDivisorSum_six_from_local_two_three :
    squareDivisorSumFunction 6 =
      squareDivisorSumFunction 2 * squareDivisorSumFunction 3 := by
  rfl

theorem divisorCount_twelve_from_local_three_four :
    divisorCountFunction 12 =
      divisorCountFunction 3 * divisorCountFunction 4 := by
  rfl

theorem sumOfDivisors_twelve_from_local_three_four :
    sumOfDivisorsFunction 12 =
      sumOfDivisorsFunction 3 * sumOfDivisorsFunction 4 := by
  rfl

theorem squareDivisorSum_twelve_from_local_three_four :
    squareDivisorSumFunction 12 =
      squareDivisorSumFunction 3 * squareDivisorSumFunction 4 := by
  rfl

theorem divisorCount_twenty :
    divisorCountFunction 20 = 6 := by
  rfl

theorem sumOfDivisors_twenty :
    sumOfDivisorsFunction 20 = 42 := by
  rfl

theorem squareDivisorSum_twenty :
    squareDivisorSumFunction 20 = 546 := by
  rfl

theorem divisorCount_twenty_from_local_four_five :
    divisorCountFunction 20 =
      divisorCountFunction 4 * divisorCountFunction 5 := by
  rfl

theorem sumOfDivisors_twenty_from_local_four_five :
    sumOfDivisorsFunction 20 =
      sumOfDivisorsFunction 4 * sumOfDivisorsFunction 5 := by
  rfl

theorem squareDivisorSum_twenty_from_local_four_five :
    squareDivisorSumFunction 20 =
      squareDivisorSumFunction 4 * squareDivisorSumFunction 5 := by
  rfl

theorem noncoprime_divisorCount_two_four_difference :
    divisorCountFunction 8 ≠
      divisorCountFunction 2 * divisorCountFunction 4 := by
  decide

theorem noncoprime_sumOfDivisors_two_four_difference :
    sumOfDivisorsFunction 8 ≠
      sumOfDivisorsFunction 2 * sumOfDivisorsFunction 4 := by
  decide

theorem noncoprime_squareDivisorSum_two_four_difference :
    squareDivisorSumFunction 8 ≠
      squareDivisorSumFunction 2 * squareDivisorSumFunction 4 := by
  decide

end NumberTheory
end FormalLanglandsLab
