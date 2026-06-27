import FormalLanglandsLab.MathlibIntegration.V7ExactFinsetEquality

namespace FormalLanglandsLab
namespace MathlibIntegration

def v7ProfileDivisorSumSix : Nat :=
  1 + 2 + 3 + 6

def v7ProfileDivisorSumTwelve : Nat :=
  1 + 2 + 3 + 4 + 6 + 12

def v7ProfileSquareDivisorSumSix : Nat :=
  1 * 1 + 2 * 2 + 3 * 3 + 6 * 6

def v7ProfileSquareDivisorSumTwelve : Nat :=
  1 * 1 + 2 * 2 + 3 * 3 + 4 * 4 + 6 * 6 + 12 * 12

theorem v7ProfileDivisorSumSix_value :
    v7ProfileDivisorSumSix = 12 := by
  rfl

theorem v7ProfileDivisorSumTwelve_value :
    v7ProfileDivisorSumTwelve = 28 := by
  rfl

theorem v7ProfileSquareDivisorSumSix_value :
    v7ProfileSquareDivisorSumSix = 50 := by
  rfl

theorem v7ProfileSquareDivisorSumTwelve_value :
    v7ProfileSquareDivisorSumTwelve = 210 := by
  rfl

theorem v7ProfileDivisorSumSix_matches_expected :
    v7ProfileDivisorSumSix = v7ExpectedDivisorSumSix := by
  rfl

theorem v7ProfileDivisorSumTwelve_matches_expected :
    v7ProfileDivisorSumTwelve = v7ExpectedDivisorSumTwelve := by
  rfl

theorem v7ProfileSquareDivisorSumSix_matches_expected :
    v7ProfileSquareDivisorSumSix = v7ExpectedSquareDivisorSumSix := by
  rfl

theorem v7ProfileSquareDivisorSumTwelve_matches_expected :
    v7ProfileSquareDivisorSumTwelve = v7ExpectedSquareDivisorSumTwelve := by
  rfl

theorem v7ProfileDivisorSumSix_matches_v6 :
    v7ProfileDivisorSumSix = v6DivisorSumSix := by
  rfl

theorem v7ProfileDivisorSumTwelve_matches_v6 :
    v7ProfileDivisorSumTwelve = v6DivisorSumTwelve := by
  rfl

theorem v7ProfileSquareDivisorSumSix_matches_v6 :
    v7ProfileSquareDivisorSumSix = v6SquareDivisorSumSix := by
  rfl

theorem v7ProfileSquareDivisorSumTwelve_matches_v6 :
    v7ProfileSquareDivisorSumTwelve = v6SquareDivisorSumTwelve := by
  rfl

theorem v7ProfileDivisorSumSix_matches_v6_function :
    v7ProfileDivisorSumSix = v6SumOfDivisorsFunction 6 := by
  rfl

theorem v7ProfileDivisorSumTwelve_matches_v6_function :
    v7ProfileDivisorSumTwelve = v6SumOfDivisorsFunction 12 := by
  rfl

theorem v7ProfileSquareDivisorSumSix_matches_v6_function :
    v7ProfileSquareDivisorSumSix = v6SquareDivisorSumFunction 6 := by
  rfl

theorem v7ProfileSquareDivisorSumTwelve_matches_v6_function :
    v7ProfileSquareDivisorSumTwelve = v6SquareDivisorSumFunction 12 := by
  rfl

theorem v7ProfileDivisorSumSix_matches_lseries :
    v7ProfileDivisorSumSix = v6SumOfDivisorsLSeries.coeff 6 := by
  rfl

theorem v7ProfileDivisorSumTwelve_matches_lseries :
    v7ProfileDivisorSumTwelve = v6SumOfDivisorsLSeries.coeff 12 := by
  rfl

theorem v7ProfileSquareDivisorSumSix_matches_lseries :
    v7ProfileSquareDivisorSumSix = v6SquareDivisorSumLSeries.coeff 6 := by
  rfl

theorem v7ProfileSquareDivisorSumTwelve_matches_lseries :
    v7ProfileSquareDivisorSumTwelve = v6SquareDivisorSumLSeries.coeff 12 := by
  rfl

theorem v7_profile_divisor_sum_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
