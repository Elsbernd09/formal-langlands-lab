import FormalLanglandsLab.Core.DirichletConvolution
import FormalLanglandsLab.NumberTheory.VerifiedDivisorSums
import FormalLanglandsLab.NumberTheory.ClassicalArithmeticFunctions
import FormalLanglandsLab.LFunctions.FormalDirichletSeries

namespace FormalLanglandsLab
namespace Bridge

open FormalLanglandsLab.Core
open FormalLanglandsLab.NumberTheory
open FormalLanglandsLab.LFunctions

def toyConvolutionLSeries
    (f g : ArithmeticFunction Nat) : FormalDirichletSeries where
  coeff := naiveDirichletConvolution f g

def verifiedConvolutionLSeries
    (f g : ArithmeticFunction Nat) : FormalDirichletSeries where
  coeff := verifiedDirichletConvolution f g

def convolutionUpgradeComparison
    (f g : ArithmeticFunction Nat)
    (n : Nat) : Prop :=
  (toyConvolutionLSeries f g).coeff n =
    (verifiedConvolutionLSeries f g).coeff n

theorem toyConvolution_one_one_at_one :
    naiveDirichletConvolution constantOneFunction constantOneFunction 1 = 2 := by
  rfl

theorem verifiedConvolution_one_one_at_one_v2 :
    verifiedDirichletConvolution constantOneFunction constantOneFunction 1 = 1 := by
  rfl

theorem toy_and_verified_are_different_at_one :
    naiveDirichletConvolution constantOneFunction constantOneFunction 1 ≠
      verifiedDirichletConvolution constantOneFunction constantOneFunction 1 := by
  decide

theorem verifiedConvolution_recovers_divisorCount_four :
    verifiedDirichletConvolution constantOneFunction constantOneFunction 4 =
      divisorCountFunction 4 := by
  rfl

theorem verifiedConvolution_recovers_sumOfDivisors_four :
    verifiedDirichletConvolution identityArithmeticFunction constantOneFunction 4 =
      sumOfDivisorsFunction 4 := by
  rfl

theorem verifiedConvolutionLSeries_divisorCount_coeff_four :
    (verifiedConvolutionLSeries constantOneFunction constantOneFunction).coeff 4 = 3 := by
  rfl

theorem verifiedConvolutionLSeries_sumOfDivisors_coeff_four :
    (verifiedConvolutionLSeries identityArithmeticFunction constantOneFunction).coeff 4 = 7 := by
  rfl

theorem verifiedConvolutionLSeries_squareDivisorSum_coeff_four :
    (verifiedConvolutionLSeries squareArithmeticFunction constantOneFunction).coeff 4 = 21 := by
  rfl

end Bridge
end FormalLanglandsLab
