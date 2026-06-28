import FormalLanglandsLab.MathlibIntegration.V80Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v81ExpandedEulerProductTermList
    (f : v33ArithmeticFunction) : List Nat :=
  v76TwoThreeExpandedLocalTerms f

def v81CombinedEulerProductCoefficientList
    (f : v33ArithmeticFunction) : List Nat :=
  v76TwoThreeCombinedCoefficientTerms f

def v81ExpandedEulerProductAggregate
    (f : v33ArithmeticFunction) : Nat :=
  v51ContributionAggregate (v81ExpandedEulerProductTermList f)

def v81CombinedEulerProductCoefficientAggregate
    (f : v33ArithmeticFunction) : Nat :=
  v51ContributionAggregate (v81CombinedEulerProductCoefficientList f)

theorem v81_expanded_term_list_value
    (f : v33ArithmeticFunction) :
    v81ExpandedEulerProductTermList f =
      [
        f 1 * f 1, f 1 * f 3, f 1 * f 9, f 1 * f 27,
        f 2 * f 1, f 2 * f 3, f 2 * f 9, f 2 * f 27,
        f 4 * f 1, f 4 * f 3, f 4 * f 9, f 4 * f 27,
        f 8 * f 1, f 8 * f 3, f 8 * f 9, f 8 * f 27
      ] := by
  rfl

theorem v81_combined_coefficient_list_value
    (f : v33ArithmeticFunction) :
    v81CombinedEulerProductCoefficientList f =
      [
        f 1, f 3, f 9, f 27,
        f 2, f 6, f 18, f 54,
        f 4, f 12, f 36, f 108,
        f 8, f 24, f 72, f 216
      ] := by
  rfl

theorem v81_one_function_expanded_aggregate :
    v81ExpandedEulerProductAggregate v33OneFunction = 16 := by
  rfl

theorem v81_one_function_combined_aggregate :
    v81CombinedEulerProductCoefficientAggregate v33OneFunction = 16 := by
  rfl

theorem v81_identity_function_expanded_aggregate :
    v81ExpandedEulerProductAggregate v33IdentityFunction = 600 := by
  rfl

theorem v81_identity_function_combined_aggregate :
    v81CombinedEulerProductCoefficientAggregate v33IdentityFunction = 600 := by
  rfl

theorem v81_square_function_expanded_aggregate :
    v81ExpandedEulerProductAggregate v63SquareFunction = 69700 := by
  rfl

theorem v81_square_function_combined_aggregate :
    v81CombinedEulerProductCoefficientAggregate v63SquareFunction = 69700 := by
  rfl

theorem v81_cube_function_expanded_aggregate :
    v81ExpandedEulerProductAggregate v63CubeFunction = 11957400 := by
  rfl

theorem v81_cube_function_combined_aggregate :
    v81CombinedEulerProductCoefficientAggregate v63CubeFunction = 11957400 := by
  rfl

theorem v81_one_function_expanded_matches_combined :
    v81ExpandedEulerProductAggregate v33OneFunction =
      v81CombinedEulerProductCoefficientAggregate v33OneFunction := by
  rw [
    v81_one_function_expanded_aggregate,
    v81_one_function_combined_aggregate
  ]

theorem v81_identity_function_expanded_matches_combined :
    v81ExpandedEulerProductAggregate v33IdentityFunction =
      v81CombinedEulerProductCoefficientAggregate v33IdentityFunction := by
  rw [
    v81_identity_function_expanded_aggregate,
    v81_identity_function_combined_aggregate
  ]

theorem v81_square_function_expanded_matches_combined :
    v81ExpandedEulerProductAggregate v63SquareFunction =
      v81CombinedEulerProductCoefficientAggregate v63SquareFunction := by
  rw [
    v81_square_function_expanded_aggregate,
    v81_square_function_combined_aggregate
  ]

theorem v81_cube_function_expanded_matches_combined :
    v81ExpandedEulerProductAggregate v63CubeFunction =
      v81CombinedEulerProductCoefficientAggregate v63CubeFunction := by
  rw [
    v81_cube_function_expanded_aggregate,
    v81_cube_function_combined_aggregate
  ]

theorem v81_identity_expanded_matches_euler_product :
    v81ExpandedEulerProductAggregate v33IdentityFunction =
      v75ControlledEulerProductPrototype v33IdentityFunction := by
  rw [
    v81_identity_function_expanded_aggregate,
    v75_euler_product_identity_function_value
  ]

theorem v81_square_expanded_matches_euler_product :
    v81ExpandedEulerProductAggregate v63SquareFunction =
      v75ControlledEulerProductPrototype v63SquareFunction := by
  rw [
    v81_square_function_expanded_aggregate,
    v75_euler_product_square_function_value
  ]

theorem v81_cube_expanded_matches_euler_product :
    v81ExpandedEulerProductAggregate v63CubeFunction =
      v75ControlledEulerProductPrototype v63CubeFunction := by
  rw [
    v81_cube_function_expanded_aggregate,
    v75_euler_product_cube_function_value
  ]

def v81ControlledEulerProductExpandedTermMatchingPackage : Prop :=
  (v81ExpandedEulerProductAggregate v33OneFunction =
    v81CombinedEulerProductCoefficientAggregate v33OneFunction) ∧
  (v81ExpandedEulerProductAggregate v33IdentityFunction =
    v81CombinedEulerProductCoefficientAggregate v33IdentityFunction) ∧
  (v81ExpandedEulerProductAggregate v63SquareFunction =
    v81CombinedEulerProductCoefficientAggregate v63SquareFunction) ∧
  (v81ExpandedEulerProductAggregate v63CubeFunction =
    v81CombinedEulerProductCoefficientAggregate v63CubeFunction) ∧
  (v81ExpandedEulerProductAggregate v33IdentityFunction =
    v75ControlledEulerProductPrototype v33IdentityFunction) ∧
  (v81ExpandedEulerProductAggregate v63SquareFunction =
    v75ControlledEulerProductPrototype v63SquareFunction) ∧
  (v81ExpandedEulerProductAggregate v63CubeFunction =
    v75ControlledEulerProductPrototype v63CubeFunction)

theorem v81_controlled_euler_product_expanded_term_matching_package :
    v81ControlledEulerProductExpandedTermMatchingPackage := by
  exact ⟨
    v81_one_function_expanded_matches_combined,
    ⟨
      v81_identity_function_expanded_matches_combined,
      ⟨
        v81_square_function_expanded_matches_combined,
        ⟨
          v81_cube_function_expanded_matches_combined,
          ⟨
            v81_identity_expanded_matches_euler_product,
            ⟨
              v81_square_expanded_matches_euler_product,
              v81_cube_expanded_matches_euler_product
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v81_euler_product_expanded_term_matching_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
