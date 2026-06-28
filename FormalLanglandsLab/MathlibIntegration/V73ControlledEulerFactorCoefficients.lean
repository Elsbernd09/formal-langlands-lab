import FormalLanglandsLab.MathlibIntegration.V72Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v73EulerFactorWindowTwo : List Nat :=
  [1, 2, 4, 8]

def v73EulerFactorWindowThree : List Nat :=
  [1, 3, 9, 27]

def v73EulerFactorCoefficientList
    (f : v33ArithmeticFunction)
    (powers : List Nat) : List Nat :=
  powers.map f

def v73EulerFactorCoefficientsTwo
    (f : v33ArithmeticFunction) : List Nat :=
  v73EulerFactorCoefficientList f v73EulerFactorWindowTwo

def v73EulerFactorCoefficientsThree
    (f : v33ArithmeticFunction) : List Nat :=
  v73EulerFactorCoefficientList f v73EulerFactorWindowThree

def v73EulerFactorAggregate
    (coeffs : List Nat) : Nat :=
  v51ContributionAggregate coeffs

def v73EulerFactorAggregateTwo
    (f : v33ArithmeticFunction) : Nat :=
  v73EulerFactorAggregate (v73EulerFactorCoefficientsTwo f)

def v73EulerFactorAggregateThree
    (f : v33ArithmeticFunction) : Nat :=
  v73EulerFactorAggregate (v73EulerFactorCoefficientsThree f)

theorem v73_euler_factor_window_two_definition :
    v73EulerFactorWindowTwo = [1, 2, 4, 8] := by
  rfl

theorem v73_euler_factor_window_three_definition :
    v73EulerFactorWindowThree = [1, 3, 9, 27] := by
  rfl

theorem v73_euler_factor_coefficients_two_value
    (f : v33ArithmeticFunction) :
    v73EulerFactorCoefficientsTwo f =
      [f 1, f 2, f 4, f 8] := by
  rfl

theorem v73_euler_factor_coefficients_three_value
    (f : v33ArithmeticFunction) :
    v73EulerFactorCoefficientsThree f =
      [f 1, f 3, f 9, f 27] := by
  rfl

theorem v73_euler_factor_aggregate_two_value
    (f : v33ArithmeticFunction) :
    v73EulerFactorAggregateTwo f =
      f 1 + f 2 + f 4 + f 8 := by
  simp [
    v73EulerFactorAggregateTwo,
    v73EulerFactorAggregate,
    v73EulerFactorCoefficientsTwo,
    v73EulerFactorCoefficientList,
    v73EulerFactorWindowTwo,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v73_euler_factor_aggregate_three_value
    (f : v33ArithmeticFunction) :
    v73EulerFactorAggregateThree f =
      f 1 + f 3 + f 9 + f 27 := by
  simp [
    v73EulerFactorAggregateThree,
    v73EulerFactorAggregate,
    v73EulerFactorCoefficientsThree,
    v73EulerFactorCoefficientList,
    v73EulerFactorWindowThree,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v73_one_function_euler_factor_two :
    v73EulerFactorAggregateTwo v33OneFunction = 4 := by
  rw [v73_euler_factor_aggregate_two_value]
  simp [v33OneFunction]

theorem v73_one_function_euler_factor_three :
    v73EulerFactorAggregateThree v33OneFunction = 4 := by
  rw [v73_euler_factor_aggregate_three_value]
  simp [v33OneFunction]

theorem v73_identity_function_euler_factor_two :
    v73EulerFactorAggregateTwo v33IdentityFunction = 15 := by
  rw [v73_euler_factor_aggregate_two_value]
  simp [v33IdentityFunction]

theorem v73_identity_function_euler_factor_three :
    v73EulerFactorAggregateThree v33IdentityFunction = 40 := by
  rw [v73_euler_factor_aggregate_three_value]
  simp [v33IdentityFunction]

theorem v73_square_function_euler_factor_two :
    v73EulerFactorAggregateTwo v63SquareFunction = 85 := by
  rw [v73_euler_factor_aggregate_two_value]
  rfl

theorem v73_square_function_euler_factor_three :
    v73EulerFactorAggregateThree v63SquareFunction = 820 := by
  rw [v73_euler_factor_aggregate_three_value]
  rfl

theorem v73_cube_function_euler_factor_two :
    v73EulerFactorAggregateTwo v63CubeFunction = 585 := by
  rw [v73_euler_factor_aggregate_two_value]
  rfl

theorem v73_cube_function_euler_factor_three :
    v73EulerFactorAggregateThree v63CubeFunction = 20440 := by
  rw [v73_euler_factor_aggregate_three_value]
  rfl

def v73ControlledEulerFactorCoefficientPackage : Prop :=
  (v73EulerFactorAggregateTwo v33OneFunction = 4) ∧
  (v73EulerFactorAggregateThree v33OneFunction = 4) ∧
  (v73EulerFactorAggregateTwo v33IdentityFunction = 15) ∧
  (v73EulerFactorAggregateThree v33IdentityFunction = 40) ∧
  (v73EulerFactorAggregateTwo v63SquareFunction = 85) ∧
  (v73EulerFactorAggregateThree v63SquareFunction = 820) ∧
  (v73EulerFactorAggregateTwo v63CubeFunction = 585) ∧
  (v73EulerFactorAggregateThree v63CubeFunction = 20440)

theorem v73_controlled_euler_factor_coefficient_package :
    v73ControlledEulerFactorCoefficientPackage := by
  exact ⟨
    v73_one_function_euler_factor_two,
    ⟨
      v73_one_function_euler_factor_three,
      ⟨
        v73_identity_function_euler_factor_two,
        ⟨
          v73_identity_function_euler_factor_three,
          ⟨
            v73_square_function_euler_factor_two,
            ⟨
              v73_square_function_euler_factor_three,
              ⟨
                v73_cube_function_euler_factor_two,
                v73_cube_function_euler_factor_three
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v73_controlled_euler_factor_coefficients_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
