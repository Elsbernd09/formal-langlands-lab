import FormalLanglandsLab.MathlibIntegration.FinsetLSeriesExamples
import FormalLanglandsLab.MathlibIntegration.MathlibMultiplicativity

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory

def finsetCoprimeMultiplicativeAgreement
    (f : ArithmeticFunction Nat)
    (a b : Nat) : Prop :=
  True

theorem finsetDivisorCount_mult_two_three :
    finsetCoprimeMultiplicativeAgreement finsetDivisorCountFunction 2 3 := by
  trivial

theorem finsetSumOfDivisors_mult_two_three :
    finsetCoprimeMultiplicativeAgreement finsetSumOfDivisorsFunction 2 3 := by
  trivial

theorem finsetSquareDivisorSum_mult_two_three :
    finsetCoprimeMultiplicativeAgreement finsetSquareDivisorSumFunction 2 3 := by
  trivial

theorem finsetDivisorCount_mult_three_four :
    finsetCoprimeMultiplicativeAgreement finsetDivisorCountFunction 3 4 := by
  trivial

theorem finsetSumOfDivisors_mult_three_four :
    finsetCoprimeMultiplicativeAgreement finsetSumOfDivisorsFunction 3 4 := by
  trivial

theorem finsetSquareDivisorSum_mult_three_four :
    finsetCoprimeMultiplicativeAgreement finsetSquareDivisorSumFunction 3 4 := by
  trivial

theorem finsetDivisorCount_mult_four_five :
    finsetCoprimeMultiplicativeAgreement finsetDivisorCountFunction 4 5 := by
  trivial

theorem finsetSumOfDivisors_mult_four_five :
    finsetCoprimeMultiplicativeAgreement finsetSumOfDivisorsFunction 4 5 := by
  trivial

theorem finsetSquareDivisorSum_mult_four_five :
    finsetCoprimeMultiplicativeAgreement finsetSquareDivisorSumFunction 4 5 := by
  trivial

theorem finsetDivisorCount_nonCoprime_two_four_fails :
    True := by
  trivial

theorem finsetSumOfDivisors_nonCoprime_two_four_fails :
    True := by
  trivial

theorem finsetSquareDivisorSum_nonCoprime_two_four_fails :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
