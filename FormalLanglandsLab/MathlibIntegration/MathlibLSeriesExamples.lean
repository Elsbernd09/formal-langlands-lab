import FormalLanglandsLab.MathlibIntegration.MathlibArithmeticExamples
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.LFunctions

def mathlibDivisorCountLSeries : FormalDirichletSeries where
  coeff := mathlibDivisorCountFunction

def mathlibSumOfDivisorsLSeries : FormalDirichletSeries where
  coeff := mathlibSumOfDivisorsFunction

theorem mathlibDivisorCountLSeries_coeff_one :
    mathlibDivisorCountLSeries.coeff 1 = 1 := by
  rfl

theorem mathlibDivisorCountLSeries_coeff_two :
    mathlibDivisorCountLSeries.coeff 2 = 2 := by
  rfl

theorem mathlibDivisorCountLSeries_coeff_four :
    mathlibDivisorCountLSeries.coeff 4 = 3 := by
  rfl

theorem mathlibDivisorCountLSeries_coeff_six :
    mathlibDivisorCountLSeries.coeff 6 = 4 := by
  rfl

theorem mathlibSumOfDivisorsLSeries_coeff_one :
    mathlibSumOfDivisorsLSeries.coeff 1 = 1 := by
  rfl

theorem mathlibSumOfDivisorsLSeries_coeff_two :
    mathlibSumOfDivisorsLSeries.coeff 2 = 3 := by
  rfl

theorem mathlibSumOfDivisorsLSeries_coeff_four :
    mathlibSumOfDivisorsLSeries.coeff 4 = 7 := by
  rfl

theorem mathlibSumOfDivisorsLSeries_coeff_six :
    mathlibSumOfDivisorsLSeries.coeff 6 = 12 := by
  rfl

theorem mathlibDivisorCountLSeries_self_agreement :
    coeffAgreement mathlibDivisorCountLSeries mathlibDivisorCountLSeries := by
  intro n
  rfl

theorem mathlibSumOfDivisorsLSeries_self_agreement :
    coeffAgreement mathlibSumOfDivisorsLSeries mathlibSumOfDivisorsLSeries := by
  intro n
  rfl

end MathlibIntegration
end FormalLanglandsLab
