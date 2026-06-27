import FormalLanglandsLab.MathlibIntegration.V11OutOfRangeFramework

namespace FormalLanglandsLab
namespace MathlibIntegration

def v11RestrictedExtensionalitySix : Prop :=
  v11BoundedAgreementSix ∧
  (∀ d : Nat, 6 < d → d ∉ v6DivisorFinset 6)

def v11RestrictedExtensionalityTwelve : Prop :=
  v11BoundedAgreementTwelve ∧
  (∀ d : Nat, 12 < d → d ∉ v6DivisorFinset 12)

theorem v11_restricted_extensionality_six :
    v11RestrictedExtensionalitySix := by
  constructor
  · exact v11_bounded_agreement_six
  · intro d h
    exact v11_out_of_range_actual_membership_false_six h

theorem v11_restricted_extensionality_twelve :
    v11RestrictedExtensionalityTwelve := by
  constructor
  · exact v11_bounded_agreement_twelve
  · intro d h
    exact v11_out_of_range_actual_membership_false_twelve h

theorem v11_restricted_six_has_bounded_agreement :
    v11RestrictedExtensionalitySix → v11BoundedAgreementSix := by
  intro h
  exact h.1

theorem v11_restricted_twelve_has_bounded_agreement :
    v11RestrictedExtensionalityTwelve → v11BoundedAgreementTwelve := by
  intro h
  exact h.1

theorem v11_restricted_six_has_out_of_range_rule :
    v11RestrictedExtensionalitySix →
      (∀ d : Nat, 6 < d → d ∉ v6DivisorFinset 6) := by
  intro h
  exact h.2

theorem v11_restricted_twelve_has_out_of_range_rule :
    v11RestrictedExtensionalityTwelve →
      (∀ d : Nat, 12 < d → d ∉ v6DivisorFinset 12) := by
  intro h
  exact h.2

theorem v11_restricted_six_example_out_of_range :
    9 ∉ v6DivisorFinset 6 := by
  exact (v11_restricted_extensionality_six.2 9) (by decide)

theorem v11_restricted_twelve_example_out_of_range :
    15 ∉ v6DivisorFinset 12 := by
  exact (v11_restricted_extensionality_twelve.2 15) (by decide)

theorem v11_restricted_six_example_inside_agreement :
    v11PointwiseAgreement (v6DivisorFinset 6) v10ExpectedDivisorsSix 2 := by
  exact v11_pointwise_six_two

theorem v11_restricted_twelve_example_inside_agreement :
    v11PointwiseAgreement (v6DivisorFinset 12) v10ExpectedDivisorsTwelve 4 := by
  exact v11_pointwise_twelve_four

theorem v11_restricted_extensionality_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
