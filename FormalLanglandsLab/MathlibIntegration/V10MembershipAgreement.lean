import FormalLanglandsLab.MathlibIntegration.V10ExpectedFinsets

namespace FormalLanglandsLab
namespace MathlibIntegration

def v10MembershipAgreement
    (n d : Nat)
    (expected : Finset Nat) : Prop :=
  d ∈ v6DivisorFinset n ↔ d ∈ expected

theorem v10_membership_agreement_six_one :
    v10MembershipAgreement 6 1 v10ExpectedDivisorsSix := by
  constructor
  · intro _
    exact v10_one_mem_expected_six
  · intro _
    exact v7_one_mem_divisorFinset_six

theorem v10_membership_agreement_six_two :
    v10MembershipAgreement 6 2 v10ExpectedDivisorsSix := by
  constructor
  · intro _
    exact v10_two_mem_expected_six
  · intro _
    exact v7_two_mem_divisorFinset_six

theorem v10_membership_agreement_six_three :
    v10MembershipAgreement 6 3 v10ExpectedDivisorsSix := by
  constructor
  · intro _
    exact v10_three_mem_expected_six
  · intro _
    exact v7_three_mem_divisorFinset_six

theorem v10_membership_agreement_six_six :
    v10MembershipAgreement 6 6 v10ExpectedDivisorsSix := by
  constructor
  · intro _
    exact v10_six_mem_expected_six
  · intro _
    exact v7_six_mem_divisorFinset_six

theorem v10_membership_agreement_six_zero :
    v10MembershipAgreement 6 0 v10ExpectedDivisorsSix := by
  constructor
  · intro h
    exact False.elim (v7_zero_not_mem_divisorFinset_six h)
  · intro h
    exact False.elim (v10_zero_not_mem_expected_six h)

theorem v10_membership_agreement_six_four :
    v10MembershipAgreement 6 4 v10ExpectedDivisorsSix := by
  constructor
  · intro h
    exact False.elim (v7_four_not_mem_divisorFinset_six h)
  · intro h
    exact False.elim (v10_four_not_mem_expected_six h)

theorem v10_membership_agreement_twelve_one :
    v10MembershipAgreement 12 1 v10ExpectedDivisorsTwelve := by
  constructor
  · intro _
    exact v10_one_mem_expected_twelve
  · intro _
    exact v7_one_mem_divisorFinset_twelve

theorem v10_membership_agreement_twelve_two :
    v10MembershipAgreement 12 2 v10ExpectedDivisorsTwelve := by
  constructor
  · intro _
    exact v10_two_mem_expected_twelve
  · intro _
    exact v7_two_mem_divisorFinset_twelve

theorem v10_membership_agreement_twelve_three :
    v10MembershipAgreement 12 3 v10ExpectedDivisorsTwelve := by
  constructor
  · intro _
    exact v10_three_mem_expected_twelve
  · intro _
    exact v7_three_mem_divisorFinset_twelve

theorem v10_membership_agreement_twelve_four :
    v10MembershipAgreement 12 4 v10ExpectedDivisorsTwelve := by
  constructor
  · intro _
    exact v10_four_mem_expected_twelve
  · intro _
    exact v7_four_mem_divisorFinset_twelve

theorem v10_membership_agreement_twelve_six :
    v10MembershipAgreement 12 6 v10ExpectedDivisorsTwelve := by
  constructor
  · intro _
    exact v10_six_mem_expected_twelve
  · intro _
    exact v7_six_mem_divisorFinset_twelve

theorem v10_membership_agreement_twelve_twelve :
    v10MembershipAgreement 12 12 v10ExpectedDivisorsTwelve := by
  constructor
  · intro _
    exact v10_twelve_mem_expected_twelve
  · intro _
    exact v7_twelve_mem_divisorFinset_twelve

theorem v10_membership_agreement_twelve_zero :
    v10MembershipAgreement 12 0 v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v7_zero_not_mem_divisorFinset_twelve h)
  · intro h
    exact False.elim (v10_zero_not_mem_expected_twelve h)

theorem v10_membership_agreement_twelve_five :
    v10MembershipAgreement 12 5 v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v7_five_not_mem_divisorFinset_twelve h)
  · intro h
    exact False.elim (v10_five_not_mem_expected_twelve h)

theorem v10_membership_agreement_twelve_seven :
    v10MembershipAgreement 12 7 v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v7_seven_not_mem_divisorFinset_twelve h)
  · intro h
    exact False.elim (v10_seven_not_mem_expected_twelve h)

theorem v10_membership_agreement_twelve_eight :
    v10MembershipAgreement 12 8 v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v7_eight_not_mem_divisorFinset_twelve h)
  · intro h
    exact False.elim (v10_eight_not_mem_expected_twelve h)

theorem v10_membership_agreement_twelve_nine :
    v10MembershipAgreement 12 9 v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v7_nine_not_mem_divisorFinset_twelve h)
  · intro h
    exact False.elim (v10_nine_not_mem_expected_twelve h)

theorem v10_membership_agreement_twelve_ten :
    v10MembershipAgreement 12 10 v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v7_ten_not_mem_divisorFinset_twelve h)
  · intro h
    exact False.elim (v10_ten_not_mem_expected_twelve h)

theorem v10_membership_agreement_twelve_eleven :
    v10MembershipAgreement 12 11 v10ExpectedDivisorsTwelve := by
  constructor
  · intro h
    exact False.elim (v7_eleven_not_mem_divisorFinset_twelve h)
  · intro h
    exact False.elim (v10_eleven_not_mem_expected_twelve h)

theorem v10_actual_expected_six_profile_agreement :
    v10MembershipAgreement 6 1 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 2 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 3 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 6 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 0 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 4 v10ExpectedDivisorsSix := by
  exact ⟨
    v10_membership_agreement_six_one,
    v10_membership_agreement_six_two,
    v10_membership_agreement_six_three,
    v10_membership_agreement_six_six,
    v10_membership_agreement_six_zero,
    v10_membership_agreement_six_four
  ⟩

theorem v10_actual_expected_twelve_profile_agreement :
    v10MembershipAgreement 12 1 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 2 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 3 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 4 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 6 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 12 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 0 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 5 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 7 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 8 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 9 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 10 v10ExpectedDivisorsTwelve ∧
    v10MembershipAgreement 12 11 v10ExpectedDivisorsTwelve := by
  exact ⟨
    v10_membership_agreement_twelve_one,
    v10_membership_agreement_twelve_two,
    v10_membership_agreement_twelve_three,
    v10_membership_agreement_twelve_four,
    v10_membership_agreement_twelve_six,
    v10_membership_agreement_twelve_twelve,
    v10_membership_agreement_twelve_zero,
    v10_membership_agreement_twelve_five,
    v10_membership_agreement_twelve_seven,
    v10_membership_agreement_twelve_eight,
    v10_membership_agreement_twelve_nine,
    v10_membership_agreement_twelve_ten,
    v10_membership_agreement_twelve_eleven
  ⟩

theorem v10_membership_agreement_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
