import FormalLanglandsLab.MathlibIntegration.V16FinsetEqualitySix

namespace FormalLanglandsLab
namespace MathlibIntegration

def v17UniversalMembershipAgreementTwelve : Prop :=
  ∀ d : Nat,
    d ∈ v6DivisorFinset 12 ↔ d ∈ v10ExpectedDivisorsTwelve

theorem v17_universal_membership_agreement_twelve :
    v17UniversalMembershipAgreementTwelve := by
  intro d
  cases d with
  | zero =>
      exact v12_twelve_universal_agreement_case_zero
  | succ d1 =>
      cases d1 with
      | zero =>
          exact v12_twelve_universal_agreement_case_one
      | succ d2 =>
          cases d2 with
          | zero =>
              exact v12_twelve_universal_agreement_case_two
          | succ d3 =>
              cases d3 with
              | zero =>
                  exact v12_twelve_universal_agreement_case_three
              | succ d4 =>
                  cases d4 with
                  | zero =>
                      exact v12_twelve_universal_agreement_case_four
                  | succ d5 =>
                      cases d5 with
                      | zero =>
                          exact v12_twelve_universal_agreement_case_five
                      | succ d6 =>
                          cases d6 with
                          | zero =>
                              exact v12_twelve_universal_agreement_case_six
                          | succ d7 =>
                              cases d7 with
                              | zero =>
                                  exact v12_twelve_universal_agreement_case_seven
                              | succ d8 =>
                                  cases d8 with
                                  | zero =>
                                      exact v12_twelve_universal_agreement_case_eight
                                  | succ d9 =>
                                      cases d9 with
                                      | zero =>
                                          exact v12_twelve_universal_agreement_case_nine
                                      | succ d10 =>
                                          cases d10 with
                                          | zero =>
                                              exact v12_twelve_universal_agreement_case_ten
                                          | succ d11 =>
                                              cases d11 with
                                              | zero =>
                                                  exact v12_twelve_universal_agreement_case_eleven
                                              | succ d12 =>
                                                  cases d12 with
                                                  | zero =>
                                                      exact v12_twelve_universal_agreement_case_twelve
                                                  | succ d13 =>
                                                      exact v14_general_out_of_range_agreement_twelve _ (by simp)

theorem v17_universal_twelve_gives_zero :
    0 ∈ v6DivisorFinset 12 ↔ 0 ∈ v10ExpectedDivisorsTwelve := by
  exact v17_universal_membership_agreement_twelve 0

theorem v17_universal_twelve_gives_four :
    4 ∈ v6DivisorFinset 12 ↔ 4 ∈ v10ExpectedDivisorsTwelve := by
  exact v17_universal_membership_agreement_twelve 4

theorem v17_universal_twelve_gives_six :
    6 ∈ v6DivisorFinset 12 ↔ 6 ∈ v10ExpectedDivisorsTwelve := by
  exact v17_universal_membership_agreement_twelve 6

theorem v17_universal_twelve_gives_twelve :
    12 ∈ v6DivisorFinset 12 ↔ 12 ∈ v10ExpectedDivisorsTwelve := by
  exact v17_universal_membership_agreement_twelve 12

theorem v17_universal_twelve_gives_thirteen :
    13 ∈ v6DivisorFinset 12 ↔ 13 ∈ v10ExpectedDivisorsTwelve := by
  exact v17_universal_membership_agreement_twelve 13

theorem v17_universal_twelve_gives_twenty :
    20 ∈ v6DivisorFinset 12 ↔ 20 ∈ v10ExpectedDivisorsTwelve := by
  exact v17_universal_membership_agreement_twelve 20

def v17UniversalMembershipTwelvePackage : Prop :=
  v17UniversalMembershipAgreementTwelve ∧
  (0 ∈ v6DivisorFinset 12 ↔ 0 ∈ v10ExpectedDivisorsTwelve) ∧
  (12 ∈ v6DivisorFinset 12 ↔ 12 ∈ v10ExpectedDivisorsTwelve) ∧
  (20 ∈ v6DivisorFinset 12 ↔ 20 ∈ v10ExpectedDivisorsTwelve)

theorem v17_universal_membership_twelve_package :
    v17UniversalMembershipTwelvePackage := by
  exact ⟨
    v17_universal_membership_agreement_twelve,
    v17_universal_twelve_gives_zero,
    v17_universal_twelve_gives_twelve,
    v17_universal_twelve_gives_twenty
  ⟩

theorem v17_universal_membership_twelve_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
