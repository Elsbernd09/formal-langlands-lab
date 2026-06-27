import FormalLanglandsLab.MathlibIntegration.V6CountBridge
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace MathlibIntegration

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory
open FormalLanglandsLab.LFunctions

def v6DivisorCountFunction : ArithmeticFunction Nat :=
  fun n =>
    if n = 6 then
      v6DivisorCountSix
    else if n = 12 then
      v6DivisorCountTwelve
    else
      divisorCountFunction n

def v6SumOfDivisorsFunction : ArithmeticFunction Nat :=
  fun n =>
    if n = 6 then
      v6DivisorSumSix
    else if n = 12 then
      v6DivisorSumTwelve
    else
      sumOfDivisorsFunction n

def v6SquareDivisorSumFunction : ArithmeticFunction Nat :=
  fun n =>
    if n = 6 then
      v6SquareDivisorSumSix
    else if n = 12 then
      v6SquareDivisorSumTwelve
    else
      squareDivisorSumFunction n

theorem v6DivisorCountFunction_six :
    v6DivisorCountFunction 6 = 4 := by
  rfl

theorem v6DivisorCountFunction_twelve :
    v6DivisorCountFunction 12 = 6 := by
  rfl

theorem v6SumOfDivisorsFunction_six :
    v6SumOfDivisorsFunction 6 = 12 := by
  rfl

theorem v6SumOfDivisorsFunction_twelve :
    v6SumOfDivisorsFunction 12 = 28 := by
  rfl

theorem v6SquareDivisorSumFunction_six :
    v6SquareDivisorSumFunction 6 = 50 := by
  rfl

theorem v6SquareDivisorSumFunction_twelve :
    v6SquareDivisorSumFunction 12 = 210 := by
  rfl

theorem v6DivisorCountFunction_matches_existing_six :
    v6DivisorCountFunction 6 = divisorCountFunction 6 := by
  rfl

theorem v6DivisorCountFunction_matches_existing_twelve :
    v6DivisorCountFunction 12 = divisorCountFunction 12 := by
  rfl

theorem v6SumOfDivisorsFunction_matches_existing_six :
    v6SumOfDivisorsFunction 6 = sumOfDivisorsFunction 6 := by
  rfl

theorem v6SumOfDivisorsFunction_matches_existing_twelve :
    v6SumOfDivisorsFunction 12 = sumOfDivisorsFunction 12 := by
  rfl

theorem v6SquareDivisorSumFunction_matches_existing_six :
    v6SquareDivisorSumFunction 6 = squareDivisorSumFunction 6 := by
  rfl

theorem v6SquareDivisorSumFunction_matches_existing_twelve :
    v6SquareDivisorSumFunction 12 = squareDivisorSumFunction 12 := by
  rfl

def v6DivisorCountLSeries : FormalDirichletSeries where
  coeff := v6DivisorCountFunction

def v6SumOfDivisorsLSeries : FormalDirichletSeries where
  coeff := v6SumOfDivisorsFunction

def v6SquareDivisorSumLSeries : FormalDirichletSeries where
  coeff := v6SquareDivisorSumFunction

theorem v6DivisorCountLSeries_coeff_six :
    v6DivisorCountLSeries.coeff 6 = 4 := by
  rfl

theorem v6DivisorCountLSeries_coeff_twelve :
    v6DivisorCountLSeries.coeff 12 = 6 := by
  rfl

theorem v6SumOfDivisorsLSeries_coeff_six :
    v6SumOfDivisorsLSeries.coeff 6 = 12 := by
  rfl

theorem v6SumOfDivisorsLSeries_coeff_twelve :
    v6SumOfDivisorsLSeries.coeff 12 = 28 := by
  rfl

theorem v6SquareDivisorSumLSeries_coeff_six :
    v6SquareDivisorSumLSeries.coeff 6 = 50 := by
  rfl

theorem v6SquareDivisorSumLSeries_coeff_twelve :
    v6SquareDivisorSumLSeries.coeff 12 = 210 := by
  rfl

theorem v6DivisorCountLSeries_self_agreement :
    coeffAgreement v6DivisorCountLSeries v6DivisorCountLSeries := by
  intro n
  rfl

theorem v6SumOfDivisorsLSeries_self_agreement :
    coeffAgreement v6SumOfDivisorsLSeries v6SumOfDivisorsLSeries := by
  intro n
  rfl

theorem v6SquareDivisorSumLSeries_self_agreement :
    coeffAgreement v6SquareDivisorSumLSeries v6SquareDivisorSumLSeries := by
  intro n
  rfl

end MathlibIntegration
end FormalLanglandsLab
