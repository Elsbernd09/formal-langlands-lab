import FormalLanglandsLab.MathlibIntegration.FinsetArithmeticTables
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.LFunctions

def finsetDivisorCountLSeries : FormalDirichletSeries where
  coeff := finsetDivisorCountFunction

def finsetSumOfDivisorsLSeries : FormalDirichletSeries where
  coeff := finsetSumOfDivisorsFunction

def finsetSquareDivisorSumLSeries : FormalDirichletSeries where
  coeff := finsetSquareDivisorSumFunction

theorem finsetDivisorCountLSeries_coeff_one :
    finsetDivisorCountLSeries.coeff 1 = 1 := by
  decide

theorem finsetDivisorCountLSeries_coeff_six :
    finsetDivisorCountLSeries.coeff 6 = 4 := by
  decide

theorem finsetDivisorCountLSeries_coeff_twelve :
    finsetDivisorCountLSeries.coeff 12 = 6 := by
  decide

theorem finsetSumOfDivisorsLSeries_coeff_one :
    finsetSumOfDivisorsLSeries.coeff 1 = 1 := by
  decide

theorem finsetSumOfDivisorsLSeries_coeff_six :
    finsetSumOfDivisorsLSeries.coeff 6 = 12 := by
  decide

theorem finsetSumOfDivisorsLSeries_coeff_twelve :
    finsetSumOfDivisorsLSeries.coeff 12 = 28 := by
  decide

theorem finsetSquareDivisorSumLSeries_coeff_one :
    finsetSquareDivisorSumLSeries.coeff 1 = 1 := by
  decide

theorem finsetSquareDivisorSumLSeries_coeff_six :
    finsetSquareDivisorSumLSeries.coeff 6 = 50 := by
  decide

theorem finsetSquareDivisorSumLSeries_coeff_twelve :
    finsetSquareDivisorSumLSeries.coeff 12 = 210 := by
  decide

theorem finsetDivisorCountLSeries_self_agreement :
    coeffAgreement finsetDivisorCountLSeries finsetDivisorCountLSeries := by
  intro n
  rfl

theorem finsetSumOfDivisorsLSeries_self_agreement :
    coeffAgreement finsetSumOfDivisorsLSeries finsetSumOfDivisorsLSeries := by
  intro n
  rfl

theorem finsetSquareDivisorSumLSeries_self_agreement :
    coeffAgreement finsetSquareDivisorSumLSeries finsetSquareDivisorSumLSeries := by
  intro n
  rfl

end MathlibIntegration
end FormalLanglandsLab
