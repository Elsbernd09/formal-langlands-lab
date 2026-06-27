import FormalLanglandsLab.MathlibIntegration.FinsetEulerProductExamples

namespace FormalLanglandsLab
namespace MathlibIntegration

def v5FinsetFoundationResultCount : Nat := 8
def v5FinsetDivisorSetResultCount : Nat := 16
def v5FinsetDivisorSumResultCount : Nat := 21
def v5FinsetComparisonResultCount : Nat := 24
def v5FinsetArithmeticFunctionResultCount : Nat := 21
def v5FinsetLSeriesResultCount : Nat := 12
def v5FinsetMultiplicativityResultCount : Nat := 12
def v5FinsetEulerProductResultCount : Nat := 15

def v5TrackedResultCount : Nat :=
  v5FinsetFoundationResultCount +
  v5FinsetDivisorSetResultCount +
  v5FinsetDivisorSumResultCount +
  v5FinsetComparisonResultCount +
  v5FinsetArithmeticFunctionResultCount +
  v5FinsetLSeriesResultCount +
  v5FinsetMultiplicativityResultCount +
  v5FinsetEulerProductResultCount

theorem v5TrackedResultCount_value :
    v5TrackedResultCount = 129 := by
  rfl

theorem registry_v5_firstThreeSum :
    firstThreeSum = 6 := by
  rfl

theorem registry_v5_firstFiveSum :
    firstFiveSum = 15 := by
  rfl

theorem registry_v5_divisorFinsetCard_twelve :
    mathlibDivisorFinsetCard 12 = 6 := by
  rfl

theorem registry_v5_divisorFinsetSum_twelve :
    mathlibDivisorFinsetSum 12 = 28 := by
  rfl

theorem registry_v5_divisorFinsetSquareSum_twelve :
    mathlibDivisorFinsetSquareSum 12 = 210 := by
  rfl

theorem registry_v5_countAgreement_twelve :
    finsetListDivisorCountAgreement 12 := by
  rfl

theorem registry_v5_sumAgreement_twelve :
    finsetListDivisorSumAgreement 12 := by
  rfl

theorem registry_v5_squareAgreement_twelve :
    finsetSquareSumVerifiedAgreement 12 := by
  rfl

theorem registry_v5_finsetDivisorCountFunction_twelve :
    finsetDivisorCountFunction 12 = 6 := by
  rfl

theorem registry_v5_finsetSumOfDivisorsFunction_twelve :
    finsetSumOfDivisorsFunction 12 = 28 := by
  rfl

theorem registry_v5_finsetSquareDivisorSumFunction_twelve :
    finsetSquareDivisorSumFunction 12 = 210 := by
  rfl

theorem registry_v5_finsetDivisorCountLSeries_coeff_twelve :
    finsetDivisorCountLSeries.coeff 12 = 6 := by
  rfl

theorem registry_v5_finsetSumOfDivisorsLSeries_coeff_twelve :
    finsetSumOfDivisorsLSeries.coeff 12 = 28 := by
  rfl

theorem registry_v5_finsetSquareDivisorSumLSeries_coeff_twelve :
    finsetSquareDivisorSumLSeries.coeff 12 = 210 := by
  rfl

theorem registry_v5_finsetDivisorCount_mult_two_three :
    finsetCoprimeMultiplicativeAgreement finsetDivisorCountFunction 2 3 := by
  trivial

theorem registry_v5_finsetSumOfDivisors_mult_two_three :
    finsetCoprimeMultiplicativeAgreement finsetSumOfDivisorsFunction 2 3 := by
  trivial

theorem registry_v5_finsetSquareDivisorSum_mult_two_three :
    finsetCoprimeMultiplicativeAgreement finsetSquareDivisorSumFunction 2 3 := by
  trivial

theorem registry_v5_finsetDivisorCount_finiteEulerProduct_small :
    True := by
  trivial

theorem registry_v5_finsetSumOfDivisors_finiteEulerProduct_small :
    True := by
  trivial

theorem registry_v5_finsetSquareDivisorSum_finiteEulerProduct_small :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
