import FormalLanglandsLab.MathlibIntegration.V83Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v84FiniteEulerProductSupportIndices : List Nat :=
  v76TwoThreeCombinedIndexWindow

def v84FiniteEulerProductSupportLength : Nat :=
  v84FiniteEulerProductSupportIndices.length

def v84FiniteEulerProductExpandedTermSupport
    (f : v33ArithmeticFunction) : List Nat :=
  v81ExpandedEulerProductTermList f

def v84FiniteEulerProductCombinedCoefficientSupport
    (f : v33ArithmeticFunction) : List Nat :=
  v81CombinedEulerProductCoefficientList f

def v84FiniteEulerProductExpandedAggregate
    (f : v33ArithmeticFunction) : Nat :=
  v81ExpandedEulerProductAggregate f

def v84FiniteEulerProductCombinedAggregate
    (f : v33ArithmeticFunction) : Nat :=
  v81CombinedEulerProductCoefficientAggregate f

theorem v84_support_indices_value :
    v84FiniteEulerProductSupportIndices =
      [
        1, 3, 9, 27,
        2, 6, 18, 54,
        4, 12, 36, 108,
        8, 24, 72, 216
      ] := by
  rfl

theorem v84_support_length_value :
    v84FiniteEulerProductSupportLength = 16 := by
  rfl

theorem v84_expanded_term_support_value
    (f : v33ArithmeticFunction) :
    v84FiniteEulerProductExpandedTermSupport f =
      v81ExpandedEulerProductTermList f := by
  rfl

theorem v84_combined_coefficient_support_value
    (f : v33ArithmeticFunction) :
    v84FiniteEulerProductCombinedCoefficientSupport f =
      v81CombinedEulerProductCoefficientList f := by
  rfl

theorem v84_expanded_aggregate_value
    (f : v33ArithmeticFunction) :
    v84FiniteEulerProductExpandedAggregate f =
      v81ExpandedEulerProductAggregate f := by
  rfl

theorem v84_combined_aggregate_value
    (f : v33ArithmeticFunction) :
    v84FiniteEulerProductCombinedAggregate f =
      v81CombinedEulerProductCoefficientAggregate f := by
  rfl

theorem v84_complete_multiplicative_support_matching
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f) :
    v84FiniteEulerProductExpandedTermSupport f =
      v84FiniteEulerProductCombinedCoefficientSupport f := by
  unfold v84FiniteEulerProductExpandedTermSupport
  unfold v84FiniteEulerProductCombinedCoefficientSupport
  exact v82_complete_multiplicative_expanded_terms_match_combined_terms hf

theorem v84_complete_multiplicative_aggregate_matching
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f) :
    v84FiniteEulerProductExpandedAggregate f =
      v84FiniteEulerProductCombinedAggregate f := by
  unfold v84FiniteEulerProductExpandedAggregate
  unfold v84FiniteEulerProductCombinedAggregate
  exact v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate hf

theorem v84_identity_support_matching :
    v84FiniteEulerProductExpandedTermSupport v33IdentityFunction =
      v84FiniteEulerProductCombinedCoefficientSupport v33IdentityFunction := by
  exact v84_complete_multiplicative_support_matching
    v61_identity_function_completely_multiplicative

theorem v84_square_support_matching :
    v84FiniteEulerProductExpandedTermSupport v63SquareFunction =
      v84FiniteEulerProductCombinedCoefficientSupport v63SquareFunction := by
  exact v84_complete_multiplicative_support_matching
    v63_square_function_completely_multiplicative

theorem v84_cube_support_matching :
    v84FiniteEulerProductExpandedTermSupport v63CubeFunction =
      v84FiniteEulerProductCombinedCoefficientSupport v63CubeFunction := by
  exact v84_complete_multiplicative_support_matching
    v63_cube_function_completely_multiplicative

theorem v84_fourth_power_support_matching :
    v84FiniteEulerProductExpandedTermSupport v63FourthPowerFunction =
      v84FiniteEulerProductCombinedCoefficientSupport v63FourthPowerFunction := by
  exact v84_complete_multiplicative_support_matching
    v63_fourth_power_function_completely_multiplicative

theorem v84_identity_combined_aggregate_product_identity :
    v84FiniteEulerProductCombinedAggregate v33IdentityFunction =
      v75ControlledEulerProductPrototype v33IdentityFunction := by
  unfold v84FiniteEulerProductCombinedAggregate
  exact v83_identity_combined_aggregate_matches_euler_product

theorem v84_square_combined_aggregate_product_identity :
    v84FiniteEulerProductCombinedAggregate v63SquareFunction =
      v75ControlledEulerProductPrototype v63SquareFunction := by
  unfold v84FiniteEulerProductCombinedAggregate
  exact v83_square_combined_aggregate_matches_euler_product

theorem v84_cube_combined_aggregate_product_identity :
    v84FiniteEulerProductCombinedAggregate v63CubeFunction =
      v75ControlledEulerProductPrototype v63CubeFunction := by
  unfold v84FiniteEulerProductCombinedAggregate
  exact v83_cube_combined_aggregate_matches_euler_product

def v84FiniteEulerProductCoefficientSupportPackage : Prop :=
  (v84FiniteEulerProductSupportLength = 16) ∧
  (∀ f : v33ArithmeticFunction,
    v61CompletelyMultiplicative f →
      v84FiniteEulerProductExpandedTermSupport f =
        v84FiniteEulerProductCombinedCoefficientSupport f) ∧
  (∀ f : v33ArithmeticFunction,
    v61CompletelyMultiplicative f →
      v84FiniteEulerProductExpandedAggregate f =
        v84FiniteEulerProductCombinedAggregate f) ∧
  (v84FiniteEulerProductCombinedAggregate v33IdentityFunction =
    v75ControlledEulerProductPrototype v33IdentityFunction) ∧
  (v84FiniteEulerProductCombinedAggregate v63SquareFunction =
    v75ControlledEulerProductPrototype v63SquareFunction) ∧
  (v84FiniteEulerProductCombinedAggregate v63CubeFunction =
    v75ControlledEulerProductPrototype v63CubeFunction)

theorem v84_finite_euler_product_coefficient_support_package :
    v84FiniteEulerProductCoefficientSupportPackage := by
  exact ⟨
    v84_support_length_value,
    ⟨
      fun f hf =>
        v84_complete_multiplicative_support_matching hf,
      ⟨
        fun f hf =>
          v84_complete_multiplicative_aggregate_matching hf,
        ⟨
          v84_identity_combined_aggregate_product_identity,
          ⟨
            v84_square_combined_aggregate_product_identity,
            v84_cube_combined_aggregate_product_identity
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v84_finite_euler_product_coefficient_support_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
