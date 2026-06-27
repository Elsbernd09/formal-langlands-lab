import FormalLanglandsLab.MathlibIntegration.V13OutOfRangeAgreement

namespace FormalLanglandsLab
namespace MathlibIntegration

def v13BoundedPlusOutOfRangeAgreementSix : Prop :=
  v11BoundedAgreementSix ∧
  v13OutOfRangeAgreementPackageSix

def v13BoundedPlusOutOfRangeAgreementTwelve : Prop :=
  v11BoundedAgreementTwelve ∧
  v13OutOfRangeAgreementPackageTwelve

theorem v13_bounded_plus_out_of_range_agreement_six :
    v13BoundedPlusOutOfRangeAgreementSix := by
  exact ⟨
    v11_bounded_agreement_six,
    v13_out_of_range_agreement_package_six
  ⟩

theorem v13_bounded_plus_out_of_range_agreement_twelve :
    v13BoundedPlusOutOfRangeAgreementTwelve := by
  exact ⟨
    v11_bounded_agreement_twelve,
    v13_out_of_range_agreement_package_twelve
  ⟩

theorem v13_bounded_plus_out_of_range_six_has_bounded :
    v13BoundedPlusOutOfRangeAgreementSix → v11BoundedAgreementSix := by
  intro h
  exact h.1

theorem v13_bounded_plus_out_of_range_six_has_out_of_range :
    v13BoundedPlusOutOfRangeAgreementSix → v13OutOfRangeAgreementPackageSix := by
  intro h
  exact h.2

theorem v13_bounded_plus_out_of_range_twelve_has_bounded :
    v13BoundedPlusOutOfRangeAgreementTwelve → v11BoundedAgreementTwelve := by
  intro h
  exact h.1

theorem v13_bounded_plus_out_of_range_twelve_has_out_of_range :
    v13BoundedPlusOutOfRangeAgreementTwelve → v13OutOfRangeAgreementPackageTwelve := by
  intro h
  exact h.2

def v13StrongAgreementPreparation : Prop :=
  v13BoundedPlusOutOfRangeAgreementSix ∧
  v13BoundedPlusOutOfRangeAgreementTwelve

theorem v13_strong_agreement_preparation :
    v13StrongAgreementPreparation := by
  exact ⟨
    v13_bounded_plus_out_of_range_agreement_six,
    v13_bounded_plus_out_of_range_agreement_twelve
  ⟩

theorem v13_strong_agreement_preparation_has_six :
    v13StrongAgreementPreparation → v13BoundedPlusOutOfRangeAgreementSix := by
  intro h
  exact h.1

theorem v13_strong_agreement_preparation_has_twelve :
    v13StrongAgreementPreparation → v13BoundedPlusOutOfRangeAgreementTwelve := by
  intro h
  exact h.2

theorem v13_bounded_out_of_range_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
