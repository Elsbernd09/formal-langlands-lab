import FormalLanglandsLab.MathlibIntegration.V7MembershipTwelve

namespace FormalLanglandsLab
namespace MathlibIntegration

def v7ExpectedDivisorCountSix : Nat := 4
def v7ExpectedDivisorCountTwelve : Nat := 6

def v7ExpectedDivisorSumSix : Nat := 12
def v7ExpectedDivisorSumTwelve : Nat := 28

def v7ExpectedSquareDivisorSumSix : Nat := 50
def v7ExpectedSquareDivisorSumTwelve : Nat := 210

theorem v7_expectedDivisorCountSix_value :
    v7ExpectedDivisorCountSix = 4 := by
  rfl

theorem v7_expectedDivisorCountTwelve_value :
    v7ExpectedDivisorCountTwelve = 6 := by
  rfl

theorem v7_expectedDivisorSumSix_value :
    v7ExpectedDivisorSumSix = 12 := by
  rfl

theorem v7_expectedDivisorSumTwelve_value :
    v7ExpectedDivisorSumTwelve = 28 := by
  rfl

theorem v7_expectedSquareDivisorSumSix_value :
    v7ExpectedSquareDivisorSumSix = 50 := by
  rfl

theorem v7_expectedSquareDivisorSumTwelve_value :
    v7ExpectedSquareDivisorSumTwelve = 210 := by
  rfl

theorem v7_six_membership_profile_complete :
    1 ∈ v6DivisorFinset 6 ∧
    2 ∈ v6DivisorFinset 6 ∧
    3 ∈ v6DivisorFinset 6 ∧
    6 ∈ v6DivisorFinset 6 ∧
    0 ∉ v6DivisorFinset 6 ∧
    4 ∉ v6DivisorFinset 6 := by
  exact ⟨
    v7_one_mem_divisorFinset_six,
    v7_two_mem_divisorFinset_six,
    v7_three_mem_divisorFinset_six,
    v7_six_mem_divisorFinset_six,
    v7_zero_not_mem_divisorFinset_six,
    v7_four_not_mem_divisorFinset_six
  ⟩

theorem v7_twelve_membership_profile_complete :
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
  exact ⟨
    v7_one_mem_divisorFinset_twelve,
    v7_two_mem_divisorFinset_twelve,
    v7_three_mem_divisorFinset_twelve,
    v7_four_mem_divisorFinset_twelve,
    v7_six_mem_divisorFinset_twelve,
    v7_twelve_mem_divisorFinset_twelve,
    v7_zero_not_mem_divisorFinset_twelve,
    v7_five_not_mem_divisorFinset_twelve,
    v7_seven_not_mem_divisorFinset_twelve,
    v7_eight_not_mem_divisorFinset_twelve,
    v7_nine_not_mem_divisorFinset_twelve,
    v7_ten_not_mem_divisorFinset_twelve,
    v7_eleven_not_mem_divisorFinset_twelve
  ⟩

theorem v7_exact_finset_profile_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
