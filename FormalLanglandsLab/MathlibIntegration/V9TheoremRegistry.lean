import FormalLanglandsLab.MathlibIntegration.V9FinsetSumBridge

namespace FormalLanglandsLab
namespace MathlibIntegration

def v9CertifiedProfileCardinalityResultCount : Nat := 13
def v9CertifiedProfileDivisorSumResultCount : Nat := 25
def v9FinsetStyleSumBridgeResultCount : Nat := 25

def v9TrackedResultCount : Nat :=
  v9CertifiedProfileCardinalityResultCount +
  v9CertifiedProfileDivisorSumResultCount +
  v9FinsetStyleSumBridgeResultCount

theorem v9CertifiedProfileCardinalityResultCount_value :
    v9CertifiedProfileCardinalityResultCount = 13 := by
  rfl

theorem v9CertifiedProfileDivisorSumResultCount_value :
    v9CertifiedProfileDivisorSumResultCount = 25 := by
  rfl

theorem v9FinsetStyleSumBridgeResultCount_value :
    v9FinsetStyleSumBridgeResultCount = 25 := by
  rfl

theorem v9TrackedResultCount_value :
    v9TrackedResultCount = 63 := by
  rfl

theorem registry_v9_card_six :
    v9CertifiedProfileCardSix = 4 := by
  exact v9CertifiedProfileCardSix_value

theorem registry_v9_card_twelve :
    v9CertifiedProfileCardTwelve = 6 := by
  exact v9CertifiedProfileCardTwelve_value

theorem registry_v9_card_bridge_six :
    v9CertifiedProfileCardBridgeSix := by
  exact v9CertifiedProfileCardBridgeSix_holds

theorem registry_v9_card_bridge_twelve :
    v9CertifiedProfileCardBridgeTwelve := by
  exact v9CertifiedProfileCardBridgeTwelve_holds

theorem registry_v9_card_six_matches_v6_function :
    v9CertifiedProfileCardSix = v6DivisorCountFunction 6 := by
  exact v9_card_six_matches_v6_function

theorem registry_v9_card_twelve_matches_v6_function :
    v9CertifiedProfileCardTwelve = v6DivisorCountFunction 12 := by
  exact v9_card_twelve_matches_v6_function

theorem registry_v9_card_six_matches_lseries :
    v9CertifiedProfileCardSix = v6DivisorCountLSeries.coeff 6 := by
  exact v9_card_six_matches_lseries

theorem registry_v9_card_twelve_matches_lseries :
    v9CertifiedProfileCardTwelve = v6DivisorCountLSeries.coeff 12 := by
  exact v9_card_twelve_matches_lseries

theorem registry_v9_sum_six :
    v9CertifiedProfileDivisorSumSix = 12 := by
  exact v9CertifiedProfileDivisorSumSix_value

theorem registry_v9_sum_twelve :
    v9CertifiedProfileDivisorSumTwelve = 28 := by
  exact v9CertifiedProfileDivisorSumTwelve_value

theorem registry_v9_square_sum_six :
    v9CertifiedProfileSquareDivisorSumSix = 50 := by
  exact v9CertifiedProfileSquareDivisorSumSix_value

theorem registry_v9_square_sum_twelve :
    v9CertifiedProfileSquareDivisorSumTwelve = 210 := by
  exact v9CertifiedProfileSquareDivisorSumTwelve_value

theorem registry_v9_sum_bridge_six :
    v9CertifiedProfileSumBridgeSix := by
  exact v9CertifiedProfileSumBridgeSix_holds

theorem registry_v9_sum_bridge_twelve :
    v9CertifiedProfileSumBridgeTwelve := by
  exact v9CertifiedProfileSumBridgeTwelve_holds

theorem registry_v9_square_sum_bridge_six :
    v9CertifiedProfileSquareSumBridgeSix := by
  exact v9CertifiedProfileSquareSumBridgeSix_holds

theorem registry_v9_square_sum_bridge_twelve :
    v9CertifiedProfileSquareSumBridgeTwelve := by
  exact v9CertifiedProfileSquareSumBridgeTwelve_holds

theorem registry_v9_sum_twelve_matches_v6_function :
    v9CertifiedProfileDivisorSumTwelve = v6SumOfDivisorsFunction 12 := by
  exact v9_sum_twelve_matches_v6_function

theorem registry_v9_square_sum_twelve_matches_v6_function :
    v9CertifiedProfileSquareDivisorSumTwelve = v6SquareDivisorSumFunction 12 := by
  exact v9_square_sum_twelve_matches_v6_function

theorem registry_v9_sum_twelve_matches_lseries :
    v9CertifiedProfileDivisorSumTwelve = v6SumOfDivisorsLSeries.coeff 12 := by
  exact v9_sum_twelve_matches_lseries

theorem registry_v9_square_sum_twelve_matches_lseries :
    v9CertifiedProfileSquareDivisorSumTwelve = v6SquareDivisorSumLSeries.coeff 12 := by
  exact v9_square_sum_twelve_matches_lseries

theorem registry_v9_finset_style_sum_six :
    v9FinsetStyleDivisorSumSix = 12 := by
  exact v9FinsetStyleDivisorSumSix_value

theorem registry_v9_finset_style_sum_twelve :
    v9FinsetStyleDivisorSumTwelve = 28 := by
  exact v9FinsetStyleDivisorSumTwelve_value

theorem registry_v9_finset_style_square_sum_six :
    v9FinsetStyleSquareDivisorSumSix = 50 := by
  exact v9FinsetStyleSquareDivisorSumSix_value

theorem registry_v9_finset_style_square_sum_twelve :
    v9FinsetStyleSquareDivisorSumTwelve = 210 := by
  exact v9FinsetStyleSquareDivisorSumTwelve_value

theorem registry_v9_finset_style_sum_twelve_matches_profile :
    v9FinsetStyleDivisorSumTwelve = v7ProfileDivisorSumTwelve := by
  exact v9FinsetStyleDivisorSumTwelve_matches_profile

theorem registry_v9_finset_style_square_sum_twelve_matches_profile :
    v9FinsetStyleSquareDivisorSumTwelve = v7ProfileSquareDivisorSumTwelve := by
  exact v9FinsetStyleSquareDivisorSumTwelve_matches_profile

theorem registry_v9_finset_style_sum_twelve_matches_function :
    v9FinsetStyleDivisorSumTwelve = v6SumOfDivisorsFunction 12 := by
  exact v9FinsetStyleDivisorSumTwelve_matches_v6_function

theorem registry_v9_finset_style_square_sum_twelve_matches_function :
    v9FinsetStyleSquareDivisorSumTwelve = v6SquareDivisorSumFunction 12 := by
  exact v9FinsetStyleSquareDivisorSumTwelve_matches_v6_function

theorem registry_v9_finset_style_sum_twelve_matches_lseries :
    v9FinsetStyleDivisorSumTwelve = v6SumOfDivisorsLSeries.coeff 12 := by
  exact v9FinsetStyleDivisorSumTwelve_matches_lseries

theorem registry_v9_finset_style_square_sum_twelve_matches_lseries :
    v9FinsetStyleSquareDivisorSumTwelve = v6SquareDivisorSumLSeries.coeff 12 := by
  exact v9FinsetStyleSquareDivisorSumTwelve_matches_lseries

end MathlibIntegration
end FormalLanglandsLab
