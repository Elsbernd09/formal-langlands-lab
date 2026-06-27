import FormalLanglandsLab.NumberTheory.EulerProductVerification

namespace FormalLanglandsLab
namespace Examples

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory

theorem example_divisor_count_one :
    divisorCountFunction 1 = 1 := by
  rfl

theorem example_divisor_count_two :
    divisorCountFunction 2 = 2 := by
  rfl

theorem example_divisor_count_three :
    divisorCountFunction 3 = 2 := by
  rfl

theorem example_divisor_count_four :
    divisorCountFunction 4 = 3 := by
  rfl

theorem example_divisor_count_six :
    divisorCountFunction 6 = 4 := by
  rfl

theorem example_sum_of_divisors_one :
    sumOfDivisorsFunction 1 = 1 := by
  rfl

theorem example_sum_of_divisors_two :
    sumOfDivisorsFunction 2 = 3 := by
  rfl

theorem example_sum_of_divisors_three :
    sumOfDivisorsFunction 3 = 4 := by
  rfl

theorem example_sum_of_divisors_four :
    sumOfDivisorsFunction 4 = 7 := by
  rfl

theorem example_sum_of_divisors_six :
    sumOfDivisorsFunction 6 = 12 := by
  rfl

theorem example_square_divisor_sum_two :
    squareDivisorSumFunction 2 = 5 := by
  rfl

theorem example_square_divisor_sum_three :
    squareDivisorSumFunction 3 = 10 := by
  rfl

theorem example_square_divisor_sum_four :
    squareDivisorSumFunction 4 = 21 := by
  rfl

theorem example_square_divisor_sum_six :
    squareDivisorSumFunction 6 = 50 := by
  rfl

theorem example_divisor_count_multiplicative_two_three :
    multiplicativePairTest divisorCountFunction 2 3 = true := by
  rfl

theorem example_sum_of_divisors_multiplicative_two_three :
    multiplicativePairTest sumOfDivisorsFunction 2 3 = true := by
  rfl

theorem example_square_divisor_sum_multiplicative_two_three :
    multiplicativePairTest squareDivisorSumFunction 2 3 = true := by
  rfl

theorem example_constant_one_euler_product :
    twoThreeEulerProductApprox constantOneFunction = 9 := by
  rfl

theorem example_identity_euler_product :
    twoThreeEulerProductApprox identityArithmeticFunction = 91 := by
  rfl

theorem example_divisor_count_euler_product :
    twoThreeEulerProductApprox divisorCountFunction = 36 := by
  rfl

theorem example_sum_of_divisors_euler_product :
    twoThreeEulerProductApprox sumOfDivisorsFunction = 198 := by
  rfl

theorem example_square_divisor_sum_euler_product :
    twoThreeEulerProductApprox squareDivisorSumFunction = 2754 := by
  rfl

end Examples
end FormalLanglandsLab
