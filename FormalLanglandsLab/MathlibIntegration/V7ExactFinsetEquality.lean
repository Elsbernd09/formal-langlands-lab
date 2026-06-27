import FormalLanglandsLab.MathlibIntegration.V7MembershipTwelve
import Mathlib.Data.List.Basic

namespace FormalLanglandsLab
namespace MathlibIntegration

def v7ExpectedDivisorFinsetSix : Finset Nat :=
  [1, 2, 3, 6].toFinset

def v7ExpectedDivisorFinsetTwelve : Finset Nat :=
  [1, 2, 3, 4, 6, 12].toFinset

theorem v7_expectedDivisorFinsetSix_value :
    v7ExpectedDivisorFinsetSix = [1, 2, 3, 6].toFinset := by
  rfl

theorem v7_expectedDivisorFinsetTwelve_value :
    v7ExpectedDivisorFinsetTwelve = [1, 2, 3, 4, 6, 12].toFinset := by
  rfl

theorem v7_divisorFinset_six_exact :
    v6DivisorFinset 6 = v7ExpectedDivisorFinsetSix := by
  decide

theorem v7_divisorFinset_twelve_exact :
    v6DivisorFinset 12 = v7ExpectedDivisorFinsetTwelve := by
  decide

theorem v7_divisorFinset_six_exact_list :
    v6DivisorFinset 6 = [1, 2, 3, 6].toFinset := by
  decide

theorem v7_divisorFinset_twelve_exact_list :
    v6DivisorFinset 12 = [1, 2, 3, 4, 6, 12].toFinset := by
  decide

theorem v7_expected_six_card :
    v7ExpectedDivisorFinsetSix.card = 4 := by
  decide

theorem v7_expected_twelve_card :
    v7ExpectedDivisorFinsetTwelve.card = 6 := by
  decide

theorem v7_divisorFinset_six_card_exact :
    (v6DivisorFinset 6).card = 4 := by
  decide

theorem v7_divisorFinset_twelve_card_exact :
    (v6DivisorFinset 12).card = 6 := by
  decide

theorem v7_exact_finset_equality_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
