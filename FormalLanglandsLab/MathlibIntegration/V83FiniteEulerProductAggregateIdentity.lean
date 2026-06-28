import FormalLanglandsLab.MathlibIntegration.V82Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option linter.unusedSimpArgs false
set_option maxHeartbeats 2000000

theorem v83_expanded_aggregate_matches_euler_product_prototype
    (f : v33ArithmeticFunction) :
    v81ExpandedEulerProductAggregate f =
      v75ControlledEulerProductPrototype f := by
  unfold v81ExpandedEulerProductAggregate
  unfold v81ExpandedEulerProductTermList
  unfold v76TwoThreeExpandedLocalTerms
  unfold v51ContributionAggregate
  unfold v50NatListSum
  unfold v75ControlledEulerProductPrototype
  rw [
    v73_euler_factor_aggregate_two_value,
    v73_euler_factor_aggregate_three_value
  ]
  simp [
    Nat.mul_add,
    Nat.add_mul,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f) :
    v81CombinedEulerProductCoefficientAggregate f =
      v75ControlledEulerProductPrototype f := by
  calc
    v81CombinedEulerProductCoefficientAggregate f
        = v81ExpandedEulerProductAggregate f := by
          exact
            (v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate hf).symm
    _ = v75ControlledEulerProductPrototype f := by
          exact v83_expanded_aggregate_matches_euler_product_prototype f

theorem v83_identity_combined_aggregate_matches_euler_product :
    v81CombinedEulerProductCoefficientAggregate v33IdentityFunction =
      v75ControlledEulerProductPrototype v33IdentityFunction := by
  exact v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    v61_identity_function_completely_multiplicative

theorem v83_square_combined_aggregate_matches_euler_product :
    v81CombinedEulerProductCoefficientAggregate v63SquareFunction =
      v75ControlledEulerProductPrototype v63SquareFunction := by
  exact v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    v63_square_function_completely_multiplicative

theorem v83_cube_combined_aggregate_matches_euler_product :
    v81CombinedEulerProductCoefficientAggregate v63CubeFunction =
      v75ControlledEulerProductPrototype v63CubeFunction := by
  exact v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    v63_cube_function_completely_multiplicative

theorem v83_fourth_power_combined_aggregate_matches_euler_product :
    v81CombinedEulerProductCoefficientAggregate v63FourthPowerFunction =
      v75ControlledEulerProductPrototype v63FourthPowerFunction := by
  exact v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    v63_fourth_power_function_completely_multiplicative

theorem v83_identity_euler_product_via_combined_coefficients :
    v81CombinedEulerProductCoefficientAggregate v33IdentityFunction = 600 := by
  calc
    v81CombinedEulerProductCoefficientAggregate v33IdentityFunction
        = v75ControlledEulerProductPrototype v33IdentityFunction := by
          exact v83_identity_combined_aggregate_matches_euler_product
    _ = 600 := by
          exact v75_euler_product_identity_function_value

theorem v83_square_euler_product_via_combined_coefficients :
    v81CombinedEulerProductCoefficientAggregate v63SquareFunction = 69700 := by
  calc
    v81CombinedEulerProductCoefficientAggregate v63SquareFunction
        = v75ControlledEulerProductPrototype v63SquareFunction := by
          exact v83_square_combined_aggregate_matches_euler_product
    _ = 69700 := by
          exact v75_euler_product_square_function_value

theorem v83_cube_euler_product_via_combined_coefficients :
    v81CombinedEulerProductCoefficientAggregate v63CubeFunction = 11957400 := by
  calc
    v81CombinedEulerProductCoefficientAggregate v63CubeFunction
        = v75ControlledEulerProductPrototype v63CubeFunction := by
          exact v83_cube_combined_aggregate_matches_euler_product
    _ = 11957400 := by
          exact v75_euler_product_cube_function_value

def v83FiniteEulerProductAggregateIdentityPackage : Prop :=
  (∀ f : v33ArithmeticFunction,
    v81ExpandedEulerProductAggregate f =
      v75ControlledEulerProductPrototype f) ∧
  (∀ f : v33ArithmeticFunction,
    v61CompletelyMultiplicative f →
      v81CombinedEulerProductCoefficientAggregate f =
        v75ControlledEulerProductPrototype f) ∧
  (v81CombinedEulerProductCoefficientAggregate v33IdentityFunction =
    v75ControlledEulerProductPrototype v33IdentityFunction) ∧
  (v81CombinedEulerProductCoefficientAggregate v63SquareFunction =
    v75ControlledEulerProductPrototype v63SquareFunction) ∧
  (v81CombinedEulerProductCoefficientAggregate v63CubeFunction =
    v75ControlledEulerProductPrototype v63CubeFunction) ∧
  (v81CombinedEulerProductCoefficientAggregate v63FourthPowerFunction =
    v75ControlledEulerProductPrototype v63FourthPowerFunction)

theorem v83_finite_euler_product_aggregate_identity_package :
    v83FiniteEulerProductAggregateIdentityPackage := by
  exact ⟨
    v83_expanded_aggregate_matches_euler_product_prototype,
    ⟨
      fun f hf =>
        v83_combined_aggregate_matches_euler_product_for_complete_multiplicative hf,
      ⟨
        v83_identity_combined_aggregate_matches_euler_product,
        ⟨
          v83_square_combined_aggregate_matches_euler_product,
          ⟨
            v83_cube_combined_aggregate_matches_euler_product,
            v83_fourth_power_combined_aggregate_matches_euler_product
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v83_finite_euler_product_aggregate_identity_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
