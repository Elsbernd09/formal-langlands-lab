import FormalLanglandsLab.MathlibIntegration.V81Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

theorem v82_complete_multiplicative_expanded_terms_match_combined_terms
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f) :
    v81ExpandedEulerProductTermList f =
      v81CombinedEulerProductCoefficientList f := by
  unfold v81ExpandedEulerProductTermList
  unfold v81CombinedEulerProductCoefficientList
  unfold v76TwoThreeExpandedLocalTerms
  unfold v76TwoThreeCombinedCoefficientTerms
  rw [
    ← hf 1 1,
    ← hf 1 3,
    ← hf 1 9,
    ← hf 1 27,
    ← hf 2 1,
    ← hf 2 3,
    ← hf 2 9,
    ← hf 2 27,
    ← hf 4 1,
    ← hf 4 3,
    ← hf 4 9,
    ← hf 4 27,
    ← hf 8 1,
    ← hf 8 3,
    ← hf 8 9,
    ← hf 8 27
  ]
  rfl

theorem v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f) :
    v81ExpandedEulerProductAggregate f =
      v81CombinedEulerProductCoefficientAggregate f := by
  unfold v81ExpandedEulerProductAggregate
  unfold v81CombinedEulerProductCoefficientAggregate
  rw [v82_complete_multiplicative_expanded_terms_match_combined_terms hf]

theorem v82_identity_expanded_terms_match_combined_terms :
    v81ExpandedEulerProductTermList v33IdentityFunction =
      v81CombinedEulerProductCoefficientList v33IdentityFunction := by
  exact v82_complete_multiplicative_expanded_terms_match_combined_terms
    v61_identity_function_completely_multiplicative

theorem v82_square_expanded_terms_match_combined_terms :
    v81ExpandedEulerProductTermList v63SquareFunction =
      v81CombinedEulerProductCoefficientList v63SquareFunction := by
  exact v82_complete_multiplicative_expanded_terms_match_combined_terms
    v63_square_function_completely_multiplicative

theorem v82_cube_expanded_terms_match_combined_terms :
    v81ExpandedEulerProductTermList v63CubeFunction =
      v81CombinedEulerProductCoefficientList v63CubeFunction := by
  exact v82_complete_multiplicative_expanded_terms_match_combined_terms
    v63_cube_function_completely_multiplicative

theorem v82_fourth_power_expanded_terms_match_combined_terms :
    v81ExpandedEulerProductTermList v63FourthPowerFunction =
      v81CombinedEulerProductCoefficientList v63FourthPowerFunction := by
  exact v82_complete_multiplicative_expanded_terms_match_combined_terms
    v63_fourth_power_function_completely_multiplicative

theorem v82_identity_expanded_aggregate_matches_combined_aggregate :
    v81ExpandedEulerProductAggregate v33IdentityFunction =
      v81CombinedEulerProductCoefficientAggregate v33IdentityFunction := by
  exact v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate
    v61_identity_function_completely_multiplicative

theorem v82_square_expanded_aggregate_matches_combined_aggregate :
    v81ExpandedEulerProductAggregate v63SquareFunction =
      v81CombinedEulerProductCoefficientAggregate v63SquareFunction := by
  exact v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate
    v63_square_function_completely_multiplicative

theorem v82_cube_expanded_aggregate_matches_combined_aggregate :
    v81ExpandedEulerProductAggregate v63CubeFunction =
      v81CombinedEulerProductCoefficientAggregate v63CubeFunction := by
  exact v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate
    v63_cube_function_completely_multiplicative

theorem v82_fourth_power_expanded_aggregate_matches_combined_aggregate :
    v81ExpandedEulerProductAggregate v63FourthPowerFunction =
      v81CombinedEulerProductCoefficientAggregate v63FourthPowerFunction := by
  exact v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate
    v63_fourth_power_function_completely_multiplicative

def v82CompleteMultiplicativityCoefficientMatchingPackage : Prop :=
  (∀ f : v33ArithmeticFunction,
    v61CompletelyMultiplicative f →
      v81ExpandedEulerProductTermList f =
        v81CombinedEulerProductCoefficientList f) ∧
  (∀ f : v33ArithmeticFunction,
    v61CompletelyMultiplicative f →
      v81ExpandedEulerProductAggregate f =
        v81CombinedEulerProductCoefficientAggregate f) ∧
  (v81ExpandedEulerProductTermList v33IdentityFunction =
    v81CombinedEulerProductCoefficientList v33IdentityFunction) ∧
  (v81ExpandedEulerProductTermList v63SquareFunction =
    v81CombinedEulerProductCoefficientList v63SquareFunction) ∧
  (v81ExpandedEulerProductTermList v63CubeFunction =
    v81CombinedEulerProductCoefficientList v63CubeFunction) ∧
  (v81ExpandedEulerProductTermList v63FourthPowerFunction =
    v81CombinedEulerProductCoefficientList v63FourthPowerFunction)

theorem v82_complete_multiplicativity_coefficient_matching_package :
    v82CompleteMultiplicativityCoefficientMatchingPackage := by
  exact ⟨
    fun f hf =>
      v82_complete_multiplicative_expanded_terms_match_combined_terms hf,
    ⟨
      fun f hf =>
        v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate hf,
      ⟨
        v82_identity_expanded_terms_match_combined_terms,
        ⟨
          v82_square_expanded_terms_match_combined_terms,
          ⟨
            v82_cube_expanded_terms_match_combined_terms,
            v82_fourth_power_expanded_terms_match_combined_terms
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v82_complete_multiplicativity_coefficient_matching_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
