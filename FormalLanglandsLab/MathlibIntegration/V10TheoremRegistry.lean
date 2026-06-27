import FormalLanglandsLab.MathlibIntegration.V10ExpectedArithmeticBridge

namespace FormalLanglandsLab
namespace MathlibIntegration

def v10ExpectedFinsetResultCount : Nat := 22
def v10MembershipAgreementResultCount : Nat := 22
def v10ExpectedArithmeticBridgeResultCount : Nat := 25

def v10TrackedResultCount : Nat :=
  v10ExpectedFinsetResultCount +
  v10MembershipAgreementResultCount +
  v10ExpectedArithmeticBridgeResultCount

theorem v10ExpectedFinsetResultCount_value :
    v10ExpectedFinsetResultCount = 22 := by
  rfl

theorem v10MembershipAgreementResultCount_value :
    v10MembershipAgreementResultCount = 22 := by
  rfl

theorem v10ExpectedArithmeticBridgeResultCount_value :
    v10ExpectedArithmeticBridgeResultCount = 25 := by
  rfl

theorem v10TrackedResultCount_value :
    v10TrackedResultCount = 69 := by
  rfl

theorem registry_v10_expected_six_profile :
    1 ∈ v10ExpectedDivisorsSix ∧
    2 ∈ v10ExpectedDivisorsSix ∧
    3 ∈ v10ExpectedDivisorsSix ∧
    6 ∈ v10ExpectedDivisorsSix ∧
    0 ∉ v10ExpectedDivisorsSix ∧
    4 ∉ v10ExpectedDivisorsSix := by
  exact v10_expected_six_profile

theorem registry_v10_expected_twelve_profile :
    1 ∈ v10ExpectedDivisorsTwelve ∧
    2 ∈ v10ExpectedDivisorsTwelve ∧
    3 ∈ v10ExpectedDivisorsTwelve ∧
    4 ∈ v10ExpectedDivisorsTwelve ∧
    6 ∈ v10ExpectedDivisorsTwelve ∧
    12 ∈ v10ExpectedDivisorsTwelve ∧
    0 ∉ v10ExpectedDivisorsTwelve ∧
    5 ∉ v10ExpectedDivisorsTwelve ∧
    7 ∉ v10ExpectedDivisorsTwelve ∧
    8 ∉ v10ExpectedDivisorsTwelve ∧
    9 ∉ v10ExpectedDivisorsTwelve ∧
    10 ∉ v10ExpectedDivisorsTwelve ∧
    11 ∉ v10ExpectedDivisorsTwelve := by
  exact v10_expected_twelve_profile

theorem registry_v10_agreement_six_two :
    v10MembershipAgreement 6 2 v10ExpectedDivisorsSix := by
  exact v10_membership_agreement_six_two

theorem registry_v10_agreement_six_four :
    v10MembershipAgreement 6 4 v10ExpectedDivisorsSix := by
  exact v10_membership_agreement_six_four

theorem registry_v10_agreement_twelve_four :
    v10MembershipAgreement 12 4 v10ExpectedDivisorsTwelve := by
  exact v10_membership_agreement_twelve_four

theorem registry_v10_agreement_twelve_five :
    v10MembershipAgreement 12 5 v10ExpectedDivisorsTwelve := by
  exact v10_membership_agreement_twelve_five

theorem registry_v10_actual_expected_six_profile_agreement :
    v10MembershipAgreement 6 1 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 2 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 3 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 6 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 0 v10ExpectedDivisorsSix ∧
    v10MembershipAgreement 6 4 v10ExpectedDivisorsSix := by
  exact v10_actual_expected_six_profile_agreement

theorem registry_v10_actual_expected_twelve_profile_agreement :
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
  exact v10_actual_expected_twelve_profile_agreement

theorem registry_v10_expected_card_six :
    v10ExpectedCardSix = 4 := by
  exact v10ExpectedCardSix_value

theorem registry_v10_expected_card_twelve :
    v10ExpectedCardTwelve = 6 := by
  exact v10ExpectedCardTwelve_value

theorem registry_v10_expected_sum_six :
    v10ExpectedDivisorSumSix = 12 := by
  exact v10ExpectedDivisorSumSix_value

theorem registry_v10_expected_sum_twelve :
    v10ExpectedDivisorSumTwelve = 28 := by
  exact v10ExpectedDivisorSumTwelve_value

theorem registry_v10_expected_square_sum_six :
    v10ExpectedSquareDivisorSumSix = 50 := by
  exact v10ExpectedSquareDivisorSumSix_value

theorem registry_v10_expected_square_sum_twelve :
    v10ExpectedSquareDivisorSumTwelve = 210 := by
  exact v10ExpectedSquareDivisorSumTwelve_value

theorem registry_v10_expected_card_twelve_matches_v6_function :
    v10ExpectedCardTwelve = v6DivisorCountFunction 12 := by
  exact v10_expected_card_twelve_matches_v6_function

theorem registry_v10_expected_sum_twelve_matches_v6_function :
    v10ExpectedDivisorSumTwelve = v6SumOfDivisorsFunction 12 := by
  exact v10_expected_sum_twelve_matches_v6_function

theorem registry_v10_expected_square_sum_twelve_matches_v6_function :
    v10ExpectedSquareDivisorSumTwelve = v6SquareDivisorSumFunction 12 := by
  exact v10_expected_square_sum_twelve_matches_v6_function

theorem registry_v10_expected_card_twelve_matches_lseries :
    v10ExpectedCardTwelve = v6DivisorCountLSeries.coeff 12 := by
  exact v10_expected_card_twelve_matches_lseries

theorem registry_v10_expected_sum_twelve_matches_lseries :
    v10ExpectedDivisorSumTwelve = v6SumOfDivisorsLSeries.coeff 12 := by
  exact v10_expected_sum_twelve_matches_lseries

theorem registry_v10_expected_square_sum_twelve_matches_lseries :
    v10ExpectedSquareDivisorSumTwelve = v6SquareDivisorSumLSeries.coeff 12 := by
  exact v10_expected_square_sum_twelve_matches_lseries

end MathlibIntegration
end FormalLanglandsLab
