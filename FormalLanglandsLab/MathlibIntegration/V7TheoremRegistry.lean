import FormalLanglandsLab.MathlibIntegration.V7ProfileDivisorSums

namespace FormalLanglandsLab
namespace MathlibIntegration

def v7DirectMembershipResultCount : Nat := 10
def v7TwelveMembershipResultCount : Nat := 14
def v7ProfileResultCount : Nat := 9
def v7ProfileDivisorSumResultCount : Nat := 21

def v7TrackedResultCount : Nat :=
  v7DirectMembershipResultCount +
  v7TwelveMembershipResultCount +
  v7ProfileResultCount +
  v7ProfileDivisorSumResultCount

theorem v7DirectMembershipResultCount_value :
    v7DirectMembershipResultCount = 10 := by
  rfl

theorem v7TwelveMembershipResultCount_value :
    v7TwelveMembershipResultCount = 14 := by
  rfl

theorem v7ProfileResultCount_value :
    v7ProfileResultCount = 9 := by
  rfl

theorem v7ProfileDivisorSumResultCount_value :
    v7ProfileDivisorSumResultCount = 21 := by
  rfl

theorem v7TrackedResultCount_value :
    v7TrackedResultCount = 54 := by
  rfl

theorem registry_v7_direct_membership_iff
    {n d : Nat} :
    d ∈ v6DivisorFinset n ↔
      d ∈ Finset.range (n + 1) ∧ v6IsDivisorBool n d = true := by
  exact v7_mem_v6DivisorFinset_iff

theorem registry_v7_two_mem_six :
    2 ∈ v6DivisorFinset 6 := by
  exact v7_two_mem_divisorFinset_six

theorem registry_v7_four_not_mem_six :
    4 ∉ v6DivisorFinset 6 := by
  exact v7_four_not_mem_divisorFinset_six

theorem registry_v7_four_mem_twelve :
    4 ∈ v6DivisorFinset 12 := by
  exact v7_four_mem_divisorFinset_twelve

theorem registry_v7_five_not_mem_twelve :
    5 ∉ v6DivisorFinset 12 := by
  exact v7_five_not_mem_divisorFinset_twelve

theorem registry_v7_twelve_mem_twelve :
    12 ∈ v6DivisorFinset 12 := by
  exact v7_twelve_mem_divisorFinset_twelve

theorem registry_v7_six_profile_complete :
    1 ∈ v6DivisorFinset 6 ∧
    2 ∈ v6DivisorFinset 6 ∧
    3 ∈ v6DivisorFinset 6 ∧
    6 ∈ v6DivisorFinset 6 ∧
    0 ∉ v6DivisorFinset 6 ∧
    4 ∉ v6DivisorFinset 6 := by
  exact v7_six_membership_profile_complete

theorem registry_v7_twelve_profile_complete :
    1 ∈ v6DivisorFinset 12 ∧
    2 ∈ v6DivisorFinset 12 ∧
    3 ∈ v6DivisorFinset 12 ∧
    4 ∈ v6DivisorFinset 12 ∧
    6 ∈ v6DivisorFinset 12 ∧
    12 ∈ v6DivisorFinset 12 ∧
    0 ∉ v6DivisorFinset 12 ∧
    5 ∉ v6DivisorFinset 12 ∧
    7 ∉ v6DivisorFinset 12 ∧
    8 ∉ v6DivisorFinset 12 ∧
    9 ∉ v6DivisorFinset 12 ∧
    10 ∉ v6DivisorFinset 12 ∧
    11 ∉ v6DivisorFinset 12 := by
  exact v7_twelve_membership_profile_complete

theorem registry_v7_profile_sum_six :
    v7ProfileDivisorSumSix = 12 := by
  exact v7ProfileDivisorSumSix_value

theorem registry_v7_profile_sum_twelve :
    v7ProfileDivisorSumTwelve = 28 := by
  exact v7ProfileDivisorSumTwelve_value

theorem registry_v7_profile_square_sum_six :
    v7ProfileSquareDivisorSumSix = 50 := by
  exact v7ProfileSquareDivisorSumSix_value

theorem registry_v7_profile_square_sum_twelve :
    v7ProfileSquareDivisorSumTwelve = 210 := by
  exact v7ProfileSquareDivisorSumTwelve_value

theorem registry_v7_profile_sum_twelve_matches_v6_function :
    v7ProfileDivisorSumTwelve = v6SumOfDivisorsFunction 12 := by
  exact v7ProfileDivisorSumTwelve_matches_v6_function

theorem registry_v7_profile_square_sum_twelve_matches_v6_function :
    v7ProfileSquareDivisorSumTwelve = v6SquareDivisorSumFunction 12 := by
  exact v7ProfileSquareDivisorSumTwelve_matches_v6_function

theorem registry_v7_profile_sum_twelve_matches_lseries :
    v7ProfileDivisorSumTwelve = v6SumOfDivisorsLSeries.coeff 12 := by
  exact v7ProfileDivisorSumTwelve_matches_lseries

theorem registry_v7_profile_square_sum_twelve_matches_lseries :
    v7ProfileSquareDivisorSumTwelve = v6SquareDivisorSumLSeries.coeff 12 := by
  exact v7ProfileSquareDivisorSumTwelve_matches_lseries

end MathlibIntegration
end FormalLanglandsLab
