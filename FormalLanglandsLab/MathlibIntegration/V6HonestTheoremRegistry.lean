import FormalLanglandsLab.MathlibIntegration.V6ArithmeticSummary

namespace FormalLanglandsLab
namespace MathlibIntegration

def v6AuditResultCount : Nat := 3
def v6RealDivisorPredicateResultCount : Nat := 11
def v6MembershipConditionResultCount : Nat := 17
def v6DivisorTableResultCount : Nat := 8
def v6CountBridgeResultCount : Nat := 12
def v6ArithmeticFunctionBridgeResultCount : Nat := 21

def v6HonestTrackedResultCount : Nat :=
  v6AuditResultCount +
  v6RealDivisorPredicateResultCount +
  v6MembershipConditionResultCount +
  v6DivisorTableResultCount +
  v6CountBridgeResultCount +
  v6ArithmeticFunctionBridgeResultCount

theorem v6AuditResultCount_value :
    v6AuditResultCount = 3 := by
  rfl

theorem v6RealDivisorPredicateResultCount_value :
    v6RealDivisorPredicateResultCount = 11 := by
  rfl

theorem v6MembershipConditionResultCount_value :
    v6MembershipConditionResultCount = 17 := by
  rfl

theorem v6DivisorTableResultCount_value :
    v6DivisorTableResultCount = 8 := by
  rfl

theorem v6CountBridgeResultCount_value :
    v6CountBridgeResultCount = 12 := by
  rfl

theorem v6ArithmeticFunctionBridgeResultCount_value :
    v6ArithmeticFunctionBridgeResultCount = 21 := by
  rfl

theorem v6HonestTrackedResultCount_value :
    v6HonestTrackedResultCount = 72 := by
  rfl

theorem registry_v6_audit_needs_rebuild_count :
    v6NeedsRebuildCount = 5 := by
  rfl

theorem registry_v6_divisor_bool_two_six :
    v6IsDivisorBool 6 2 = true := by
  rfl

theorem registry_v6_divisor_bool_four_six :
    v6IsDivisorBool 6 4 = false := by
  rfl

theorem registry_v6_divisor_bool_twelve_twelve :
    v6IsDivisorBool 12 12 = true := by
  rfl

theorem registry_v6_isDivisor_two_six :
    v6IsDivisor 6 2 := by
  exact v6_isDivisor_two_six

theorem registry_v6_zero_not_isDivisor :
    ¬ v6IsDivisor 6 0 := by
  exact v6_zero_not_isDivisor 6

theorem registry_v6_membershipCondition_two_six :
    v6DivisorMembershipCondition 6 2 := by
  exact v6_membershipCondition_two_six

theorem registry_v6_membershipCondition_twelve_twelve :
    v6DivisorMembershipCondition 12 12 := by
  exact v6_membershipCondition_twelve_twelve

theorem registry_v6_nonMembershipCondition_five_twelve :
    v6NonDivisorMembershipCondition 12 5 := by
  exact v6_nonMembershipCondition_five_twelve

theorem registry_v6_divisorBoolTableSix :
    v6DivisorBoolTableSix =
      [false, true, true, true, false, false, true] := by
  rfl

theorem registry_v6_divisorBoolTableTwelve :
    v6DivisorBoolTableTwelve =
      [false, true, true, true, true, false, true, false, false, false, false, false, true] := by
  rfl

theorem registry_v6_count_six :
    v6DivisorCountSix = 4 := by
  rfl

theorem registry_v6_count_twelve :
    v6DivisorCountTwelve = 6 := by
  rfl

theorem registry_v6_sum_six :
    v6DivisorSumSix = 12 := by
  rfl

theorem registry_v6_sum_twelve :
    v6DivisorSumTwelve = 28 := by
  rfl

theorem registry_v6_square_sum_six :
    v6SquareDivisorSumSix = 50 := by
  rfl

theorem registry_v6_square_sum_twelve :
    v6SquareDivisorSumTwelve = 210 := by
  rfl

theorem registry_v6_count_bridge_six :
    v6CountBridgeToV4 6 v6DivisorCountSix := by
  exact v6CountBridge_six

theorem registry_v6_sum_bridge_twelve :
    v6SumBridgeToV4 12 v6DivisorSumTwelve := by
  exact v6SumBridge_twelve

theorem registry_v6_square_bridge_twelve :
    v6SquareSumBridgeToV4 12 v6SquareDivisorSumTwelve := by
  exact v6SquareSumBridge_twelve

theorem registry_v6_arithmetic_count_twelve :
    v6DivisorCountFunction 12 = 6 := by
  rfl

theorem registry_v6_arithmetic_sum_twelve :
    v6SumOfDivisorsFunction 12 = 28 := by
  rfl

theorem registry_v6_arithmetic_square_sum_twelve :
    v6SquareDivisorSumFunction 12 = 210 := by
  rfl

theorem registry_v6_lseries_count_twelve :
    v6DivisorCountLSeries.coeff 12 = 6 := by
  rfl

theorem registry_v6_lseries_sum_twelve :
    v6SumOfDivisorsLSeries.coeff 12 = 28 := by
  rfl

theorem registry_v6_lseries_square_sum_twelve :
    v6SquareDivisorSumLSeries.coeff 12 = 210 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
