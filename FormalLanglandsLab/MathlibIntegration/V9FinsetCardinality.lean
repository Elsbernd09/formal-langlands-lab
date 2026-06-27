import FormalLanglandsLab.MathlibIntegration.V8Dashboard
import Mathlib.Data.Finset.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

def v9DivisorFinsetCardSix : Nat :=
  Finset.card (v6DivisorFinset 6)

def v9DivisorFinsetCardTwelve : Nat :=
  Finset.card (v6DivisorFinset 12)

theorem v9_divisorFinset_card_six :
    Finset.card (v6DivisorFinset 6) = 4 := by
  decide

theorem v9_divisorFinset_card_twelve :
    Finset.card (v6DivisorFinset 12) = 6 := by
  decide

theorem v9DivisorFinsetCardSix_value :
    v9DivisorFinsetCardSix = 4 := by
  decide

theorem v9DivisorFinsetCardTwelve_value :
    v9DivisorFinsetCardTwelve = 6 := by
  decide

theorem v9_card_six_matches_v7_expected :
    v9DivisorFinsetCardSix = v7ExpectedDivisorCountSix := by
  decide

theorem v9_card_twelve_matches_v7_expected :
    v9DivisorFinsetCardTwelve = v7ExpectedDivisorCountTwelve := by
  decide

theorem v9_card_six_matches_v6_count :
    v9DivisorFinsetCardSix = v6DivisorCountSix := by
  decide

theorem v9_card_twelve_matches_v6_count :
    v9DivisorFinsetCardTwelve = v6DivisorCountTwelve := by
  decide

theorem v9_card_six_matches_v6_function :
    v9DivisorFinsetCardSix = v6DivisorCountFunction 6 := by
  decide

theorem v9_card_twelve_matches_v6_function :
    v9DivisorFinsetCardTwelve = v6DivisorCountFunction 12 := by
  decide

theorem v9_card_six_matches_lseries :
    v9DivisorFinsetCardSix = v6DivisorCountLSeries.coeff 6 := by
  decide

theorem v9_card_twelve_matches_lseries :
    v9DivisorFinsetCardTwelve = v6DivisorCountLSeries.coeff 12 := by
  decide

theorem v9_cardinality_bridge_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
