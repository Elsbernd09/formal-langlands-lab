import FormalLanglandsLab.MathlibIntegration.V14GeneralOutOfRangeAgreement

namespace FormalLanglandsLab
namespace MathlibIntegration

def v15UniversalMembershipAgreementSix : Prop :=
  ∀ d : Nat,
    d ∈ v6DivisorFinset 6 ↔ d ∈ v10ExpectedDivisorsSix

theorem v15_universal_membership_agreement_six :
    v15UniversalMembershipAgreementSix := by
  intro d
  cases d with
  | zero =>
      exact v12_six_universal_agreement_case_zero
  | succ d1 =>
      cases d1 with
      | zero =>
          exact v12_six_universal_agreement_case_one
      | succ d2 =>
          cases d2 with
          | zero =>
              exact v12_six_universal_agreement_case_two
          | succ d3 =>
              cases d3 with
              | zero =>
                  exact v12_six_universal_agreement_case_three
              | succ d4 =>
                  cases d4 with
                  | zero =>
                      exact v12_six_universal_agreement_case_four
                  | succ d5 =>
                      cases d5 with
                      | zero =>
                          exact v12_six_universal_agreement_case_five
                      | succ d6 =>
                          cases d6 with
                          | zero =>
                              exact v12_six_universal_agreement_case_six
                          | succ d7 =>
                              exact v14_general_out_of_range_agreement_six
                                (Nat.succ (Nat.succ (Nat.succ (Nat.succ (Nat.succ (Nat.succ (Nat.succ d7)))))))
                                (by simp)

theorem v15_universal_six_gives_zero :
    0 ∈ v6DivisorFinset 6 ↔ 0 ∈ v10ExpectedDivisorsSix := by
  exact v15_universal_membership_agreement_six 0

theorem v15_universal_six_gives_two :
    2 ∈ v6DivisorFinset 6 ↔ 2 ∈ v10ExpectedDivisorsSix := by
  exact v15_universal_membership_agreement_six 2

theorem v15_universal_six_gives_five :
    5 ∈ v6DivisorFinset 6 ↔ 5 ∈ v10ExpectedDivisorsSix := by
  exact v15_universal_membership_agreement_six 5

theorem v15_universal_six_gives_six :
    6 ∈ v6DivisorFinset 6 ↔ 6 ∈ v10ExpectedDivisorsSix := by
  exact v15_universal_membership_agreement_six 6

theorem v15_universal_six_gives_seven :
    7 ∈ v6DivisorFinset 6 ↔ 7 ∈ v10ExpectedDivisorsSix := by
  exact v15_universal_membership_agreement_six 7

theorem v15_universal_six_gives_twenty :
    20 ∈ v6DivisorFinset 6 ↔ 20 ∈ v10ExpectedDivisorsSix := by
  exact v15_universal_membership_agreement_six 20

def v15UniversalMembershipSixPackage : Prop :=
  v15UniversalMembershipAgreementSix ∧
  (0 ∈ v6DivisorFinset 6 ↔ 0 ∈ v10ExpectedDivisorsSix) ∧
  (6 ∈ v6DivisorFinset 6 ↔ 6 ∈ v10ExpectedDivisorsSix) ∧
  (20 ∈ v6DivisorFinset 6 ↔ 20 ∈ v10ExpectedDivisorsSix)

theorem v15_universal_membership_six_package :
    v15UniversalMembershipSixPackage := by
  exact ⟨
    v15_universal_membership_agreement_six,
    v15_universal_six_gives_zero,
    v15_universal_six_gives_six,
    v15_universal_six_gives_twenty
  ⟩

theorem v15_universal_membership_six_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
