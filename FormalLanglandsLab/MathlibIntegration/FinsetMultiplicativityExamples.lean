import FormalLanglandsLab.MathlibIntegration.FinsetLSeriesExamples
import FormalLanglandsLab.MathlibIntegration.MathlibMultiplicativity

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory

def finsetCoprimeMultiplicativeAgreement
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Prop :=
  mathlibAreCoprime a b →
    f (a * b) = f a * f b

theorem finsetDivisorCount_mult_two_three :
    finsetCoprimeMultiplicativeAgreement finsetDivisorCountFunction 2 3 := by
  intro h
  decide

theorem finsetSumOfDivisors_mult_two_three :
    finsetCoprimeMultiplicativeAgreement finsetSumOfDivisorsFunction 2 3 := by
  intro h
  decide

theorem finsetSquareDivisorSum_mult_two_three :
    finsetCoprimeMultiplicativeAgreement finsetSquareDivisorSumFunction 2 3 := by
  intro h
  decide

theorem finsetDivisorCount_mult_three_four :
    finsetCoprimeMultiplicativeAgreement finsetDivisorCountFunction 3 4 := by
  intro h
  decide

theorem finsetSumOfDivisors_mult_three_four :
    finsetCoprimeMultiplicativeAgreement finsetSumOfDivisorsFunction 3 4 := by
  intro h
  decide

theorem finsetSquareDivisorSum_mult_three_four :
    finsetCoprimeMultiplicativeAgreement finsetSquareDivisorSumFunction 3 4 := by
  intro h
  decide

theorem finsetDivisorCount_mult_four_five :
    finsetCoprimeMultiplicativeAgreement finsetDivisorCountFunction 4 5 := by
  intro h
  decide

theorem finsetSumOfDivisors_mult_four_five :
    finsetCoprimeMultiplicativeAgreement finsetSumOfDivisorsFunction 4 5 := by
  intro h
  decide

theorem finsetSquareDivisorSum_mult_four_five :
    finsetCoprimeMultiplicativeAgreement finsetSquareDivisorSumFunction 4 5 := by
  intro h
  decide

theorem finsetDivisorCount_nonCoprime_two_four_fails :
    finsetDivisorCountFunction 8 ≠
      finsetDivisorCountFunction 2 * finsetDivisorCountFunction 4 := by
  decide

theorem finsetSumOfDivisors_nonCoprime_two_four_fails :
    finsetSumOfDivisorsFunction 8 ≠
      finsetSumOfDivisorsFunction 2 * finsetSumOfDivisorsFunction 4 := by
  decide

theorem finsetSquareDivisorSum_nonCoprime_two_four_fails :
    finsetSquareDivisorSumFunction 8 ≠
      finsetSquareDivisorSumFunction 2 * finsetSquareDivisorSumFunction 4 := by
  decide

end MathlibIntegration
end FormalLanglandsLab
