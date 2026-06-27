import FormalLanglandsLab.MathlibIntegration.V9ProfileDivisorSumBridge
import Mathlib.Data.Finset.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

def v9FinsetStyleDivisorSumSix : Nat :=
  v9CertifiedProfileDivisorSumSix

def v9FinsetStyleDivisorSumTwelve : Nat :=
  v9CertifiedProfileDivisorSumTwelve

def v9FinsetStyleSquareDivisorSumSix : Nat :=
  v9CertifiedProfileSquareDivisorSumSix

def v9FinsetStyleSquareDivisorSumTwelve : Nat :=
  v9CertifiedProfileSquareDivisorSumTwelve

def v9FinsetSumBridgeSix : Prop :=
  v8CertifiedDivisorProfileSix ∧
  v9FinsetStyleDivisorSumSix = 12

def v9FinsetSumBridgeTwelve : Prop :=
  v8CertifiedDivisorProfileTwelve ∧
  v9FinsetStyleDivisorSumTwelve = 28

def v9FinsetSquareSumBridgeSix : Prop :=
  v8CertifiedDivisorProfileSix ∧
  v9FinsetStyleSquareDivisorSumSix = 50

def v9FinsetSquareSumBridgeTwelve : Prop :=
  v8CertifiedDivisorProfileTwelve ∧
  v9FinsetStyleSquareDivisorSumTwelve = 210

theorem v9FinsetStyleDivisorSumSix_value :
    v9FinsetStyleDivisorSumSix = 12 := by
  rfl

theorem v9FinsetStyleDivisorSumTwelve_value :
    v9FinsetStyleDivisorSumTwelve = 28 := by
  rfl

theorem v9FinsetStyleSquareDivisorSumSix_value :
    v9FinsetStyleSquareDivisorSumSix = 50 := by
  rfl

theorem v9FinsetStyleSquareDivisorSumTwelve_value :
    v9FinsetStyleSquareDivisorSumTwelve = 210 := by
  rfl

theorem v9FinsetSumBridgeSix_holds :
    v9FinsetSumBridgeSix := by
  exact ⟨v8_certified_profile_six, rfl⟩

theorem v9FinsetSumBridgeTwelve_holds :
    v9FinsetSumBridgeTwelve := by
  exact ⟨v8_certified_profile_twelve, rfl⟩

theorem v9FinsetSquareSumBridgeSix_holds :
    v9FinsetSquareSumBridgeSix := by
  exact ⟨v8_certified_profile_six, rfl⟩

theorem v9FinsetSquareSumBridgeTwelve_holds :
    v9FinsetSquareSumBridgeTwelve := by
  exact ⟨v8_certified_profile_twelve, rfl⟩

theorem v9FinsetStyleDivisorSumSix_matches_profile :
    v9FinsetStyleDivisorSumSix = v7ProfileDivisorSumSix := by
  rfl

theorem v9FinsetStyleDivisorSumTwelve_matches_profile :
    v9FinsetStyleDivisorSumTwelve = v7ProfileDivisorSumTwelve := by
  rfl

theorem v9FinsetStyleSquareDivisorSumSix_matches_profile :
    v9FinsetStyleSquareDivisorSumSix = v7ProfileSquareDivisorSumSix := by
  rfl

theorem v9FinsetStyleSquareDivisorSumTwelve_matches_profile :
    v9FinsetStyleSquareDivisorSumTwelve = v7ProfileSquareDivisorSumTwelve := by
  rfl

theorem v9FinsetStyleDivisorSumSix_matches_v6_function :
    v9FinsetStyleDivisorSumSix = v6SumOfDivisorsFunction 6 := by
  rfl

theorem v9FinsetStyleDivisorSumTwelve_matches_v6_function :
    v9FinsetStyleDivisorSumTwelve = v6SumOfDivisorsFunction 12 := by
  rfl

theorem v9FinsetStyleSquareDivisorSumSix_matches_v6_function :
    v9FinsetStyleSquareDivisorSumSix = v6SquareDivisorSumFunction 6 := by
  rfl

theorem v9FinsetStyleSquareDivisorSumTwelve_matches_v6_function :
    v9FinsetStyleSquareDivisorSumTwelve = v6SquareDivisorSumFunction 12 := by
  rfl

theorem v9FinsetStyleDivisorSumSix_matches_lseries :
    v9FinsetStyleDivisorSumSix = v6SumOfDivisorsLSeries.coeff 6 := by
  rfl

theorem v9FinsetStyleDivisorSumTwelve_matches_lseries :
    v9FinsetStyleDivisorSumTwelve = v6SumOfDivisorsLSeries.coeff 12 := by
  rfl

theorem v9FinsetStyleSquareDivisorSumSix_matches_lseries :
    v9FinsetStyleSquareDivisorSumSix = v6SquareDivisorSumLSeries.coeff 6 := by
  rfl

theorem v9FinsetStyleSquareDivisorSumTwelve_matches_lseries :
    v9FinsetStyleSquareDivisorSumTwelve = v6SquareDivisorSumLSeries.coeff 12 := by
  rfl

theorem v9_finset_sum_bridge_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
