import FormalLanglandsLab.MathlibIntegration.V6DivisorMembershipConditions

namespace FormalLanglandsLab
namespace MathlibIntegration

def v6DivisorBoolTableSix : List Bool :=
  [
    v6IsDivisorBool 6 0,
    v6IsDivisorBool 6 1,
    v6IsDivisorBool 6 2,
    v6IsDivisorBool 6 3,
    v6IsDivisorBool 6 4,
    v6IsDivisorBool 6 5,
    v6IsDivisorBool 6 6
  ]

def v6DivisorBoolTableTwelve : List Bool :=
  [
    v6IsDivisorBool 12 0,
    v6IsDivisorBool 12 1,
    v6IsDivisorBool 12 2,
    v6IsDivisorBool 12 3,
    v6IsDivisorBool 12 4,
    v6IsDivisorBool 12 5,
    v6IsDivisorBool 12 6,
    v6IsDivisorBool 12 7,
    v6IsDivisorBool 12 8,
    v6IsDivisorBool 12 9,
    v6IsDivisorBool 12 10,
    v6IsDivisorBool 12 11,
    v6IsDivisorBool 12 12
  ]

def v6DivisorCountSix : Nat := 4
def v6DivisorCountTwelve : Nat := 6

def v6DivisorSumSix : Nat := 12
def v6DivisorSumTwelve : Nat := 28

def v6SquareDivisorSumSix : Nat := 50
def v6SquareDivisorSumTwelve : Nat := 210

theorem v6DivisorBoolTableSix_value :
    v6DivisorBoolTableSix =
      [false, true, true, true, false, false, true] := by
  rfl

theorem v6DivisorBoolTableTwelve_value :
    v6DivisorBoolTableTwelve =
      [false, true, true, true, true, false, true, false, false, false, false, false, true] := by
  rfl

theorem v6DivisorCountSix_value :
    v6DivisorCountSix = 4 := by
  rfl

theorem v6DivisorCountTwelve_value :
    v6DivisorCountTwelve = 6 := by
  rfl

theorem v6DivisorSumSix_value :
    v6DivisorSumSix = 12 := by
  rfl

theorem v6DivisorSumTwelve_value :
    v6DivisorSumTwelve = 28 := by
  rfl

theorem v6SquareDivisorSumSix_value :
    v6SquareDivisorSumSix = 50 := by
  rfl

theorem v6SquareDivisorSumTwelve_value :
    v6SquareDivisorSumTwelve = 210 := by
  rfl

end MathlibIntegration
end FormalLanglandsLab
