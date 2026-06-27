import FormalLanglandsLab.MathlibIntegration.V14GeneralExpectedOutOfRange

namespace FormalLanglandsLab
namespace MathlibIntegration

def v14GeneralOutOfRangeAgreementSix : Prop :=
  ∀ d : Nat,
    6 < d →
      (d ∈ v6DivisorFinset 6 ↔ d ∈ v10ExpectedDivisorsSix)

def v14GeneralOutOfRangeAgreementTwelve : Prop :=
  ∀ d : Nat,
    12 < d →
      (d ∈ v6DivisorFinset 12 ↔ d ∈ v10ExpectedDivisorsTwelve)

theorem v14_general_out_of_range_agreement_six
    (d : Nat)
    (h : 6 < d) :
    d ∈ v6DivisorFinset 6 ↔ d ∈ v10ExpectedDivisorsSix := by
  constructor
  · intro hactual
    have hnot : d ∉ v6DivisorFinset 6 :=
      v12_six_actual_out_of_range_not_mem h
    exact False.elim (hnot hactual)
  · intro hexpected
    have hnot : d ∉ v10ExpectedDivisorsSix :=
      v14_expected_six_out_of_range_by_bound h
    exact False.elim (hnot hexpected)

theorem v14_general_out_of_range_agreement_twelve
    (d : Nat)
    (h : 12 < d) :
    d ∈ v6DivisorFinset 12 ↔ d ∈ v10ExpectedDivisorsTwelve := by
  constructor
  · intro hactual
    have hnot : d ∉ v6DivisorFinset 12 :=
      v12_twelve_actual_out_of_range_not_mem h
    exact False.elim (hnot hactual)
  · intro hexpected
    have hnot : d ∉ v10ExpectedDivisorsTwelve :=
      v14_expected_twelve_out_of_range_by_bound h
    exact False.elim (hnot hexpected)

theorem v14_general_out_of_range_agreement_six_rule :
    v14GeneralOutOfRangeAgreementSix := by
  intro d h
  exact v14_general_out_of_range_agreement_six d h

theorem v14_general_out_of_range_agreement_twelve_rule :
    v14GeneralOutOfRangeAgreementTwelve := by
  intro d h
  exact v14_general_out_of_range_agreement_twelve d h

theorem v14_general_out_of_range_agreement_six_gives_seven :
    7 ∈ v6DivisorFinset 6 ↔ 7 ∈ v10ExpectedDivisorsSix := by
  exact v14_general_out_of_range_agreement_six 7 (by decide)

theorem v14_general_out_of_range_agreement_six_gives_ten :
    10 ∈ v6DivisorFinset 6 ↔ 10 ∈ v10ExpectedDivisorsSix := by
  exact v14_general_out_of_range_agreement_six 10 (by decide)

theorem v14_general_out_of_range_agreement_twelve_gives_thirteen :
    13 ∈ v6DivisorFinset 12 ↔ 13 ∈ v10ExpectedDivisorsTwelve := by
  exact v14_general_out_of_range_agreement_twelve 13 (by decide)

theorem v14_general_out_of_range_agreement_twelve_gives_sixteen :
    16 ∈ v6DivisorFinset 12 ↔ 16 ∈ v10ExpectedDivisorsTwelve := by
  exact v14_general_out_of_range_agreement_twelve 16 (by decide)

def v14GeneralOutOfRangeAgreementPackage : Prop :=
  v14GeneralOutOfRangeAgreementSix ∧
  v14GeneralOutOfRangeAgreementTwelve

theorem v14_general_out_of_range_agreement_package :
    v14GeneralOutOfRangeAgreementPackage := by
  exact ⟨
    v14_general_out_of_range_agreement_six_rule,
    v14_general_out_of_range_agreement_twelve_rule
  ⟩

theorem v14_general_out_of_range_agreement_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
