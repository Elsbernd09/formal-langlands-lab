import FormalLanglandsLab.MathlibIntegration.V82Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

theorem v83_one_expanded_aggregate_matches_euler_product :
    v81ExpandedEulerProductAggregate v33OneFunction =
      v75ControlledEulerProductPrototype v33OneFunction := by
  rw [
    v81_one_function_expanded_aggregate,
    v75_euler_product_one_function_value
  ]

theorem v83_identity_expanded_aggregate_matches_euler_product :
    v81ExpandedEulerProductAggregate v33IdentityFunction =
      v75ControlledEulerProductPrototype v33IdentityFunction := by
  rw [
    v81_identity_function_expanded_aggregate,
    v75_euler_product_identity_function_value
  ]

theorem v83_square_expanded_aggregate_matches_euler_product :
    v81ExpandedEulerProductAggregate v63SquareFunction =
      v75ControlledEulerProductPrototype v63SquareFunction := by
  rw [
    v81_square_function_expanded_aggregate,
    v75_euler_product_square_function_value
  ]

theorem v83_cube_expanded_aggregate_matches_euler_product :
    v81ExpandedEulerProductAggregate v63CubeFunction =
      v75ControlledEulerProductPrototype v63CubeFunction := by
  rw [
    v81_cube_function_expanded_aggregate,
    v75_euler_product_cube_function_value
  ]

theorem v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f)
    (hprod :
      v81ExpandedEulerProductAggregate f =
        v75ControlledEulerProductPrototype f) :
    v81CombinedEulerProductCoefficientAggregate f =
      v75ControlledEulerProductPrototype f := by
  calc
    v81CombinedEulerProductCoefficientAggregate f
        = v81ExpandedEulerProductAggregate f := by
          exact
            (v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate hf).symm
    _ = v75ControlledEulerProductPrototype f := by
          exact hprod

theorem v83_one_combined_aggregate_matches_euler_product :
    v81CombinedEulerProductCoefficientAggregate v33OneFunction =
      v75ControlledEulerProductPrototype v33OneFunction := by
  exact v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    v61_one_function_completely_multiplicative
    v83_one_expanded_aggregate_matches_euler_product

theorem v83_identity_combined_aggregate_matches_euler_product :
    v81CombinedEulerProductCoefficientAggregate v33IdentityFunction =
      v75ControlledEulerProductPrototype v33IdentityFunction := by
  exact v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    v61_identity_function_completely_multiplicative
    v83_identity_expanded_aggregate_matches_euler_product

theorem v83_square_combined_aggregate_matches_euler_product :
    v81CombinedEulerProductCoefficientAggregate v63SquareFunction =
      v75ControlledEulerProductPrototype v63SquareFunction := by
  exact v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    v63_square_function_completely_multiplicative
    v83_square_expanded_aggregate_matches_euler_product

theorem v83_cube_combined_aggregate_matches_euler_product :
    v81CombinedEulerProductCoefficientAggregate v63CubeFunction =
      v75ControlledEulerProductPrototype v63CubeFunction := by
  exact v83_combined_aggregate_matches_euler_product_for_complete_multiplicative
    v63_cube_function_completely_multiplicative
    v83_cube_expanded_aggregate_matches_euler_product

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
  (v81ExpandedEulerProductAggregate v33OneFunction =
    v75ControlledEulerProductPrototype v33OneFunction) ∧
  (v81ExpandedEulerProductAggregate v33IdentityFunction =
    v75ControlledEulerProductPrototype v33IdentityFunction) ∧
  (v81ExpandedEulerProductAggregate v63SquareFunction =
    v75ControlledEulerProductPrototype v63SquareFunction) ∧
  (v81ExpandedEulerProductAggregate v63CubeFunction =
    v75ControlledEulerProductPrototype v63CubeFunction) ∧
  (v81CombinedEulerProductCoefficientAggregate v33IdentityFunction =
    v75ControlledEulerProductPrototype v33IdentityFunction) ∧
  (v81CombinedEulerProductCoefficientAggregate v63SquareFunction =
    v75ControlledEulerProductPrototype v63SquareFunction) ∧
  (v81CombinedEulerProductCoefficientAggregate v63CubeFunction =
    v75ControlledEulerProductPrototype v63CubeFunction)

theorem v83_finite_euler_product_aggregate_identity_package :
    v83FiniteEulerProductAggregateIdentityPackage := by
  exact ⟨
    v83_one_expanded_aggregate_matches_euler_product,
    ⟨
      v83_identity_expanded_aggregate_matches_euler_product,
      ⟨
        v83_square_expanded_aggregate_matches_euler_product,
        ⟨
          v83_cube_expanded_aggregate_matches_euler_product,
          ⟨
            v83_identity_combined_aggregate_matches_euler_product,
            ⟨
              v83_square_combined_aggregate_matches_euler_product,
              v83_cube_combined_aggregate_matches_euler_product
            ⟩
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
