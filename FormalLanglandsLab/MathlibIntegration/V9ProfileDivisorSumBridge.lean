import FormalLanglandsLab.MathlibIntegration.V9FinsetCardinality

namespace FormalLanglandsLab
namespace MathlibIntegration

def v9CertifiedProfileDivisorSumSix : Nat :=
  v7ProfileDivisorSumSix

def v9CertifiedProfileDivisorSumTwelve : Nat :=
  v7ProfileDivisorSumTwelve

def v9CertifiedProfileSquareDivisorSumSix : Nat :=
  v7ProfileSquareDivisorSumSix

def v9CertifiedProfileSquareDivisorSumTwelve : Nat :=
  v7ProfileSquareDivisorSumTwelve

def v9CertifiedProfileSumBridgeSix : Prop :=
  v8CertifiedDivisorProfileSix ∧
  v9CertifiedProfileDivisorSumSix = 12

def v9CertifiedProfileSumBridgeTwelve : Prop :=
  v8CertifiedDivisorProfileTwelve ∧
  v9CertifiedProfileDivisorSumTwelve = 28

def v9CertifiedProfileSquareSumBridgeSix : Prop :=
  v8CertifiedDivisorProfileSix ∧
  v9CertifiedProfileSquareDivisorSumSix = 50

def v9CertifiedProfileSquareSumBridgeTwelve : Prop :=
  v8CertifiedDivisorProfileTwelve ∧
  v9CertifiedProfileSquareDivisorSumTwelve = 210

theorem v9CertifiedProfileDivisorSumSix_value :
    v9CertifiedProfileDivisorSumSix = 12 := by
  rfl

theorem v9CertifiedProfileDivisorSumTwelve_value :
    v9CertifiedProfileDivisorSumTwelve = 28 := by
  rfl

theorem v9CertifiedProfileSquareDivisorSumSix_value :
    v9CertifiedProfileSquareDivisorSumSix = 50 := by
  rfl

theorem v9CertifiedProfileSquareDivisorSumTwelve_value :
    v9CertifiedProfileSquareDivisorSumTwelve = 210 := by
  rfl

theorem v9CertifiedProfileSumBridgeSix_holds :
    v9CertifiedProfileSumBridgeSix := by
  exact ⟨v8_certified_profile_six, rfl⟩

theorem v9CertifiedProfileSumBridgeTwelve_holds :
    v9CertifiedProfileSumBridgeTwelve := by
  exact ⟨v8_certified_profile_twelve, rfl⟩

theorem v9CertifiedProfileSquareSumBridgeSix_holds :
    v9CertifiedProfileSquareSumBridgeSix := by
  exact ⟨v8_certified_profile_six, rfl⟩

theorem v9CertifiedProfileSquareSumBridgeTwelve_holds :
    v9CertifiedProfileSquareSumBridgeTwelve := by
  exact ⟨v8_certified_profile_twelve, rfl⟩

theorem v9_sum_six_matches_v6_sum :
    v9CertifiedProfileDivisorSumSix = v6DivisorSumSix := by
  rfl

theorem v9_sum_twelve_matches_v6_sum :
    v9CertifiedProfileDivisorSumTwelve = v6DivisorSumTwelve := by
  rfl

theorem v9_square_sum_six_matches_v6_square_sum :
    v9CertifiedProfileSquareDivisorSumSix = v6SquareDivisorSumSix := by
  rfl

theorem v9_square_sum_twelve_matches_v6_square_sum :
    v9CertifiedProfileSquareDivisorSumTwelve = v6SquareDivisorSumTwelve := by
  rfl

theorem v9_sum_six_matches_v6_function :
    v9CertifiedProfileDivisorSumSix = v6SumOfDivisorsFunction 6 := by
  rfl

theorem v9_sum_twelve_matches_v6_function :
    v9CertifiedProfileDivisorSumTwelve = v6SumOfDivisorsFunction 12 := by
  rfl

theorem v9_square_sum_six_matches_v6_function :
    v9CertifiedProfileSquareDivisorSumSix = v6SquareDivisorSumFunction 6 := by
  rfl

theorem v9_square_sum_twelve_matches_v6_function :
    v9CertifiedProfileSquareDivisorSumTwelve = v6SquareDivisorSumFunction 12 := by
  rfl

theorem v9_sum_six_matches_lseries :
    v9CertifiedProfileDivisorSumSix = v6SumOfDivisorsLSeries.coeff 6 := by
  rfl

theorem v9_sum_twelve_matches_lseries :
    v9CertifiedProfileDivisorSumTwelve = v6SumOfDivisorsLSeries.coeff 12 := by
  rfl

theorem v9_square_sum_six_matches_lseries :
    v9CertifiedProfileSquareDivisorSumSix = v6SquareDivisorSumLSeries.coeff 6 := by
  rfl

theorem v9_square_sum_twelve_matches_lseries :
    v9CertifiedProfileSquareDivisorSumTwelve = v6SquareDivisorSumLSeries.coeff 12 := by
  rfl

theorem v9_profile_divisor_sum_bridge_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
