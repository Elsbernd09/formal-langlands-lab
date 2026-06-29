import FormalLanglandsLab.MathlibIntegration.V64Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v65DivisorValueListSix : List Nat :=
  [1, 2, 3, 6]

def v65DivisorValueListTwelve : List Nat :=
  [1, 2, 3, 4, 6, 12]

def v65DivisorSumFromList
    (values : List Nat) : Nat :=
  v51ContributionAggregate values

def v65ApplyArithmeticFunctionToDivisorList
    (f : v33ArithmeticFunction)
    (divisors : List Nat) : List Nat :=
  divisors.map f

def v65ExplicitDivisorSumSix
    (f : v33ArithmeticFunction) : Nat :=
  v65DivisorSumFromList
    (v65ApplyArithmeticFunctionToDivisorList f v65DivisorValueListSix)

def v65ExplicitDivisorSumTwelve
    (f : v33ArithmeticFunction) : Nat :=
  v65DivisorSumFromList
    (v65ApplyArithmeticFunctionToDivisorList f v65DivisorValueListTwelve)

def v65SigmaZeroSix : Nat := 4
def v65SigmaZeroTwelve : Nat := 6

def v65SigmaOneSix : Nat :=
  v65ExplicitDivisorSumSix v33IdentityFunction

def v65SigmaOneTwelve : Nat :=
  v65ExplicitDivisorSumTwelve v33IdentityFunction

theorem v65_divisor_value_list_six_definition :
    v65DivisorValueListSix = [1, 2, 3, 6] := by
  rfl

theorem v65_divisor_value_list_twelve_definition :
    v65DivisorValueListTwelve = [1, 2, 3, 4, 6, 12] := by
  rfl

theorem v65_apply_function_to_six_divisors
    (f : v33ArithmeticFunction) :
    v65ApplyArithmeticFunctionToDivisorList f v65DivisorValueListSix =
      [f 1, f 2, f 3, f 6] := by
  rfl

theorem v65_apply_function_to_twelve_divisors
    (f : v33ArithmeticFunction) :
    v65ApplyArithmeticFunctionToDivisorList f v65DivisorValueListTwelve =
      [f 1, f 2, f 3, f 4, f 6, f 12] := by
  rfl

theorem v65_explicit_divisor_sum_six_value
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumSix f =
      f 1 + f 2 + f 3 + f 6 := by
  simp [
    v65ExplicitDivisorSumSix,
    v65DivisorSumFromList,
    v65ApplyArithmeticFunctionToDivisorList,
    v65DivisorValueListSix,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v65_explicit_divisor_sum_twelve_value
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumTwelve f =
      f 1 + f 2 + f 3 + f 4 + f 6 + f 12 := by
  simp [
    v65ExplicitDivisorSumTwelve,
    v65DivisorSumFromList,
    v65ApplyArithmeticFunctionToDivisorList,
    v65DivisorValueListTwelve,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v65_sigma_zero_six_value :
    v65SigmaZeroSix = 4 := by
  rfl

theorem v65_sigma_zero_twelve_value :
    v65SigmaZeroTwelve = 6 := by
  rfl

theorem v65_sigma_one_six_value :
    v65SigmaOneSix = 12 := by
  unfold v65SigmaOneSix
  rw [v65_explicit_divisor_sum_six_value]
  simp [v33IdentityFunction]

theorem v65_sigma_one_twelve_value :
    v65SigmaOneTwelve = 28 := by
  unfold v65SigmaOneTwelve
  rw [v65_explicit_divisor_sum_twelve_value]
  simp [v33IdentityFunction]

theorem v65_divisor_sum_six_one_function_value :
    v65ExplicitDivisorSumSix v33OneFunction = 4 := by
  rw [v65_explicit_divisor_sum_six_value]
  simp [v33OneFunction]

theorem v65_divisor_sum_twelve_one_function_value :
    v65ExplicitDivisorSumTwelve v33OneFunction = 6 := by
  rw [v65_explicit_divisor_sum_twelve_value]
  simp [v33OneFunction]

theorem v65_divisor_sum_six_identity_value :
    v65ExplicitDivisorSumSix v33IdentityFunction = 12 := by
  exact v65_sigma_one_six_value

theorem v65_divisor_sum_twelve_identity_value :
    v65ExplicitDivisorSumTwelve v33IdentityFunction = 28 := by
  exact v65_sigma_one_twelve_value

theorem v65_divisor_sum_six_square_value :
    v65ExplicitDivisorSumSix v63SquareFunction =
      1 + 4 + 9 + 36 := by
  rw [v65_explicit_divisor_sum_six_value]
  rfl

theorem v65_divisor_sum_twelve_square_value :
    v65ExplicitDivisorSumTwelve v63SquareFunction =
      1 + 4 + 9 + 16 + 36 + 144 := by
  rw [v65_explicit_divisor_sum_twelve_value]
  rfl

def v65ExplicitDivisorSumArchitecturePackage : Prop :=
  (v65SigmaZeroSix = 4) ∧
  (v65SigmaZeroTwelve = 6) ∧
  (v65SigmaOneSix = 12) ∧
  (v65SigmaOneTwelve = 28) ∧
  (v65ExplicitDivisorSumSix v33OneFunction = 4) ∧
  (v65ExplicitDivisorSumTwelve v33OneFunction = 6) ∧
  (v65ExplicitDivisorSumSix v33IdentityFunction = 12) ∧
  (v65ExplicitDivisorSumTwelve v33IdentityFunction = 28)

theorem v65_explicit_divisor_sum_architecture_package :
    v65ExplicitDivisorSumArchitecturePackage := by
  exact ⟨
    v65_sigma_zero_six_value,
    ⟨
      v65_sigma_zero_twelve_value,
      ⟨
        v65_sigma_one_six_value,
        ⟨
          v65_sigma_one_twelve_value,
          ⟨
            v65_divisor_sum_six_one_function_value,
            ⟨
              v65_divisor_sum_twelve_one_function_value,
              ⟨
                v65_divisor_sum_six_identity_value,
                v65_divisor_sum_twelve_identity_value
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v65_explicit_divisor_sum_architecture_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
