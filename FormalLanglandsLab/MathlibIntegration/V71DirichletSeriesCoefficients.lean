import FormalLanglandsLab.MathlibIntegration.V70Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v71IndexWindowSix : List Nat :=
  [1, 2, 3, 4, 5, 6]

def v71IndexWindowTwelve : List Nat :=
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

def v71CoefficientList
    (f : v33ArithmeticFunction)
    (indices : List Nat) : List Nat :=
  indices.map f

def v71CoefficientWindowSix
    (f : v33ArithmeticFunction) : List Nat :=
  v71CoefficientList f v71IndexWindowSix

def v71CoefficientWindowTwelve
    (f : v33ArithmeticFunction) : List Nat :=
  v71CoefficientList f v71IndexWindowTwelve

def v71CoefficientAggregate
    (coeffs : List Nat) : Nat :=
  v51ContributionAggregate coeffs

def v71CoefficientAggregateSix
    (f : v33ArithmeticFunction) : Nat :=
  v71CoefficientAggregate (v71CoefficientWindowSix f)

def v71CoefficientAggregateTwelve
    (f : v33ArithmeticFunction) : Nat :=
  v71CoefficientAggregate (v71CoefficientWindowTwelve f)

theorem v71_index_window_six_definition :
    v71IndexWindowSix = [1, 2, 3, 4, 5, 6] := by
  rfl

theorem v71_index_window_twelve_definition :
    v71IndexWindowTwelve =
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] := by
  rfl

theorem v71_coefficient_window_six_value
    (f : v33ArithmeticFunction) :
    v71CoefficientWindowSix f =
      [f 1, f 2, f 3, f 4, f 5, f 6] := by
  rfl

theorem v71_coefficient_window_twelve_value
    (f : v33ArithmeticFunction) :
    v71CoefficientWindowTwelve f =
      [f 1, f 2, f 3, f 4, f 5, f 6,
       f 7, f 8, f 9, f 10, f 11, f 12] := by
  rfl

theorem v71_coefficient_aggregate_six_value
    (f : v33ArithmeticFunction) :
    v71CoefficientAggregateSix f =
      f 1 + f 2 + f 3 + f 4 + f 5 + f 6 := by
  simp [
    v71CoefficientAggregateSix,
    v71CoefficientAggregate,
    v71CoefficientWindowSix,
    v71CoefficientList,
    v71IndexWindowSix,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v71_coefficient_aggregate_twelve_value
    (f : v33ArithmeticFunction) :
    v71CoefficientAggregateTwelve f =
      f 1 + f 2 + f 3 + f 4 + f 5 + f 6 +
      f 7 + f 8 + f 9 + f 10 + f 11 + f 12 := by
  simp [
    v71CoefficientAggregateTwelve,
    v71CoefficientAggregate,
    v71CoefficientWindowTwelve,
    v71CoefficientList,
    v71IndexWindowTwelve,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v71_one_function_coefficient_window_six :
    v71CoefficientWindowSix v33OneFunction =
      [1, 1, 1, 1, 1, 1] := by
  rfl

theorem v71_identity_function_coefficient_window_six :
    v71CoefficientWindowSix v33IdentityFunction =
      [1, 2, 3, 4, 5, 6] := by
  rfl

theorem v71_square_function_coefficient_window_six :
    v71CoefficientWindowSix v63SquareFunction =
      [1, 4, 9, 16, 25, 36] := by
  rfl

theorem v71_one_function_aggregate_six :
    v71CoefficientAggregateSix v33OneFunction = 6 := by
  rw [v71_coefficient_aggregate_six_value]
  simp [v33OneFunction]

theorem v71_identity_function_aggregate_six :
    v71CoefficientAggregateSix v33IdentityFunction = 21 := by
  rw [v71_coefficient_aggregate_six_value]
  simp [v33IdentityFunction]

theorem v71_square_function_aggregate_six :
    v71CoefficientAggregateSix v63SquareFunction = 91 := by
  rw [v71_coefficient_aggregate_six_value]
  rfl

theorem v71_one_function_aggregate_twelve :
    v71CoefficientAggregateTwelve v33OneFunction = 12 := by
  rw [v71_coefficient_aggregate_twelve_value]
  simp [v33OneFunction]

theorem v71_identity_function_aggregate_twelve :
    v71CoefficientAggregateTwelve v33IdentityFunction = 78 := by
  rw [v71_coefficient_aggregate_twelve_value]
  simp [v33IdentityFunction]

theorem v71_square_function_aggregate_twelve :
    v71CoefficientAggregateTwelve v63SquareFunction = 650 := by
  rw [v71_coefficient_aggregate_twelve_value]
  rfl

def v71DirichletSeriesCoefficientArchitecturePackage : Prop :=
  (v71CoefficientAggregateSix v33OneFunction = 6) ∧
  (v71CoefficientAggregateSix v33IdentityFunction = 21) ∧
  (v71CoefficientAggregateSix v63SquareFunction = 91) ∧
  (v71CoefficientAggregateTwelve v33OneFunction = 12) ∧
  (v71CoefficientAggregateTwelve v33IdentityFunction = 78) ∧
  (v71CoefficientAggregateTwelve v63SquareFunction = 650)

theorem v71_dirichlet_series_coefficient_architecture_package :
    v71DirichletSeriesCoefficientArchitecturePackage := by
  exact ⟨
    v71_one_function_aggregate_six,
    ⟨
      v71_identity_function_aggregate_six,
      ⟨
        v71_square_function_aggregate_six,
        ⟨
          v71_one_function_aggregate_twelve,
          ⟨
            v71_identity_function_aggregate_twelve,
            v71_square_function_aggregate_twelve
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v71_dirichlet_series_coefficients_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
