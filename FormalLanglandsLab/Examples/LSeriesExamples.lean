import FormalLanglandsLab.Examples.ArithmeticExamples
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Examples

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory
open FormalLanglandsLab.LFunctions

def divisorCountLSeries : FormalDirichletSeries where
  coeff := divisorCountFunction

def sumOfDivisorsLSeries : FormalDirichletSeries where
  coeff := sumOfDivisorsFunction

def squareDivisorSumLSeries : FormalDirichletSeries where
  coeff := squareDivisorSumFunction

theorem divisorCountLSeries_coeff_two :
    divisorCountLSeries.coeff 2 = 2 := by
  rfl

theorem divisorCountLSeries_coeff_four :
    divisorCountLSeries.coeff 4 = 3 := by
  rfl

theorem divisorCountLSeries_coeff_six :
    divisorCountLSeries.coeff 6 = 4 := by
  rfl

theorem sumOfDivisorsLSeries_coeff_two :
    sumOfDivisorsLSeries.coeff 2 = 3 := by
  rfl

theorem sumOfDivisorsLSeries_coeff_four :
    sumOfDivisorsLSeries.coeff 4 = 7 := by
  rfl

theorem sumOfDivisorsLSeries_coeff_six :
    sumOfDivisorsLSeries.coeff 6 = 12 := by
  rfl

theorem squareDivisorSumLSeries_coeff_two :
    squareDivisorSumLSeries.coeff 2 = 5 := by
  rfl

theorem squareDivisorSumLSeries_coeff_four :
    squareDivisorSumLSeries.coeff 4 = 21 := by
  rfl

theorem squareDivisorSumLSeries_coeff_six :
    squareDivisorSumLSeries.coeff 6 = 50 := by
  rfl

theorem divisorCountLSeries_self_agreement :
    coeffAgreement divisorCountLSeries divisorCountLSeries := by
  intro n
  rfl

theorem sumOfDivisorsLSeries_self_agreement :
    coeffAgreement sumOfDivisorsLSeries sumOfDivisorsLSeries := by
  intro n
  rfl

theorem squareDivisorSumLSeries_self_agreement :
    coeffAgreement squareDivisorSumLSeries squareDivisorSumLSeries := by
  intro n
  rfl

end Examples
end FormalLanglandsLab
