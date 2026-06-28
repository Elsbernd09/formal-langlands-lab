import FormalLanglandsLab.MathlibIntegration.V90Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v91PrimePowerWindowLengthFour
    (p : Nat) : List Nat :=
  [1, p, p * p, p * p * p]

def v91PrimePowerWindowLengthThree
    (p : Nat) : List Nat :=
  [1, p, p * p]

def v91PrimePowerCoefficientWindowLengthFour
    (f : v33ArithmeticFunction)
    (p : Nat) : List Nat :=
  (v91PrimePowerWindowLengthFour p).map f

def v91PrimePowerCoefficientWindowLengthThree
    (f : v33ArithmeticFunction)
    (p : Nat) : List Nat :=
  (v91PrimePowerWindowLengthThree p).map f

def v91PrimePowerAggregateLengthFour
    (f : v33ArithmeticFunction)
    (p : Nat) : Nat :=
  v51ContributionAggregate
    (v91PrimePowerCoefficientWindowLengthFour f p)

def v91PrimePowerAggregateLengthThree
    (f : v33ArithmeticFunction)
    (p : Nat) : Nat :=
  v51ContributionAggregate
    (v91PrimePowerCoefficientWindowLengthThree f p)

theorem v91_prime_power_window_length_four_value
    (p : Nat) :
    v91PrimePowerWindowLengthFour p =
      [1, p, p * p, p * p * p] := by
  rfl

theorem v91_prime_power_window_length_three_value
    (p : Nat) :
    v91PrimePowerWindowLengthThree p =
      [1, p, p * p] := by
  rfl

theorem v91_prime_power_coefficient_window_length_four_value
    (f : v33ArithmeticFunction)
    (p : Nat) :
    v91PrimePowerCoefficientWindowLengthFour f p =
      [f 1, f p, f (p * p), f (p * p * p)] := by
  rfl

theorem v91_prime_power_coefficient_window_length_three_value
    (f : v33ArithmeticFunction)
    (p : Nat) :
    v91PrimePowerCoefficientWindowLengthThree f p =
      [f 1, f p, f (p * p)] := by
  rfl

theorem v91_prime_power_aggregate_length_four_value
    (f : v33ArithmeticFunction)
    (p : Nat) :
    v91PrimePowerAggregateLengthFour f p =
      f 1 + f p + f (p * p) + f (p * p * p) := by
  simp [
    v91PrimePowerAggregateLengthFour,
    v91PrimePowerCoefficientWindowLengthFour,
    v91PrimePowerWindowLengthFour,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v91_prime_power_aggregate_length_three_value
    (f : v33ArithmeticFunction)
    (p : Nat) :
    v91PrimePowerAggregateLengthThree f p =
      f 1 + f p + f (p * p) := by
  simp [
    v91PrimePowerAggregateLengthThree,
    v91PrimePowerCoefficientWindowLengthThree,
    v91PrimePowerWindowLengthThree,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v91_recover_v73_two_window :
    v91PrimePowerWindowLengthFour 2 =
      v73EulerFactorWindowTwo := by
  rfl

theorem v91_recover_v73_three_window :
    v91PrimePowerWindowLengthFour 3 =
      v73EulerFactorWindowThree := by
  rfl

theorem v91_recover_v73_two_coefficient_window
    (f : v33ArithmeticFunction) :
    v91PrimePowerCoefficientWindowLengthFour f 2 =
      v73EulerFactorCoefficientsTwo f := by
  rfl

theorem v91_recover_v73_three_coefficient_window
    (f : v33ArithmeticFunction) :
    v91PrimePowerCoefficientWindowLengthFour f 3 =
      v73EulerFactorCoefficientsThree f := by
  rfl

theorem v91_recover_v73_two_aggregate
    (f : v33ArithmeticFunction) :
    v91PrimePowerAggregateLengthFour f 2 =
      v73EulerFactorAggregateTwo f := by
  rfl

theorem v91_recover_v73_three_aggregate
    (f : v33ArithmeticFunction) :
    v91PrimePowerAggregateLengthFour f 3 =
      v73EulerFactorAggregateThree f := by
  rfl

theorem v91_one_function_length_four_aggregate_two :
    v91PrimePowerAggregateLengthFour v33OneFunction 2 = 4 := by
  rw [v91_recover_v73_two_aggregate]
  exact v73_one_function_euler_factor_two

theorem v91_one_function_length_four_aggregate_three :
    v91PrimePowerAggregateLengthFour v33OneFunction 3 = 4 := by
  rw [v91_recover_v73_three_aggregate]
  exact v73_one_function_euler_factor_three

theorem v91_identity_function_length_four_aggregate_two :
    v91PrimePowerAggregateLengthFour v33IdentityFunction 2 = 15 := by
  rw [v91_recover_v73_two_aggregate]
  exact v73_identity_function_euler_factor_two

theorem v91_identity_function_length_four_aggregate_three :
    v91PrimePowerAggregateLengthFour v33IdentityFunction 3 = 40 := by
  rw [v91_recover_v73_three_aggregate]
  exact v73_identity_function_euler_factor_three

theorem v91_square_function_length_four_aggregate_two :
    v91PrimePowerAggregateLengthFour v63SquareFunction 2 = 85 := by
  rw [v91_recover_v73_two_aggregate]
  exact v73_square_function_euler_factor_two

theorem v91_square_function_length_four_aggregate_three :
    v91PrimePowerAggregateLengthFour v63SquareFunction 3 = 820 := by
  rw [v91_recover_v73_three_aggregate]
  exact v73_square_function_euler_factor_three

def v91GeneralizedFinitePrimeWindowFrameworkPackage : Prop :=
  (∀ p : Nat,
    v91PrimePowerWindowLengthFour p =
      [1, p, p * p, p * p * p]) ∧
  (∀ p : Nat,
    v91PrimePowerWindowLengthThree p =
      [1, p, p * p]) ∧
  (∀ f : v33ArithmeticFunction,
    v91PrimePowerAggregateLengthFour f 2 =
      v73EulerFactorAggregateTwo f) ∧
  (∀ f : v33ArithmeticFunction,
    v91PrimePowerAggregateLengthFour f 3 =
      v73EulerFactorAggregateThree f) ∧
  (v91PrimePowerAggregateLengthFour v33IdentityFunction 2 = 15) ∧
  (v91PrimePowerAggregateLengthFour v33IdentityFunction 3 = 40) ∧
  (v91PrimePowerAggregateLengthFour v63SquareFunction 2 = 85) ∧
  (v91PrimePowerAggregateLengthFour v63SquareFunction 3 = 820)

theorem v91_generalized_finite_prime_window_framework_package :
    v91GeneralizedFinitePrimeWindowFrameworkPackage := by
  exact ⟨
    v91_prime_power_window_length_four_value,
    ⟨
      v91_prime_power_window_length_three_value,
      ⟨
        v91_recover_v73_two_aggregate,
        ⟨
          v91_recover_v73_three_aggregate,
          ⟨
            v91_identity_function_length_four_aggregate_two,
            ⟨
              v91_identity_function_length_four_aggregate_three,
              ⟨
                v91_square_function_length_four_aggregate_two,
                v91_square_function_length_four_aggregate_three
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v91_generalized_finite_prime_window_framework_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
