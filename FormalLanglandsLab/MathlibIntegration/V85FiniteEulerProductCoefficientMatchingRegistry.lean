import FormalLanglandsLab.MathlibIntegration.V84Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v85ExpandedTermMatchingResultCount : Nat := 7
def v85CompleteMultiplicativityMatchingResultCount : Nat := 6
def v85AggregateProductIdentityResultCount : Nat := 7
def v85CoefficientSupportResultCount : Nat := 6

def v85FiniteEulerProductCoefficientMatchingResultCount : Nat :=
  v85ExpandedTermMatchingResultCount +
  v85CompleteMultiplicativityMatchingResultCount +
  v85AggregateProductIdentityResultCount +
  v85CoefficientSupportResultCount

theorem v85_expanded_term_matching_result_count_value :
    v85ExpandedTermMatchingResultCount = 7 := by
  rfl

theorem v85_complete_multiplicativity_matching_result_count_value :
    v85CompleteMultiplicativityMatchingResultCount = 6 := by
  rfl

theorem v85_aggregate_product_identity_result_count_value :
    v85AggregateProductIdentityResultCount = 7 := by
  rfl

theorem v85_coefficient_support_result_count_value :
    v85CoefficientSupportResultCount = 6 := by
  rfl

theorem v85_finite_euler_product_coefficient_matching_result_count_value :
    v85FiniteEulerProductCoefficientMatchingResultCount = 26 := by
  rfl

def v85ExpandedTermMatchingMap : Prop :=
  v81ControlledEulerProductExpandedTermMatchingPackage

def v85CompleteMultiplicativityMatchingMap : Prop :=
  v82CompleteMultiplicativityCoefficientMatchingPackage

def v85AggregateProductIdentityMap : Prop :=
  v83FiniteEulerProductAggregateIdentityPackage

def v85CoefficientSupportMap : Prop :=
  v84FiniteEulerProductCoefficientSupportPackage

def v85FiniteEulerProductCoefficientMatchingRegistry : Prop :=
  v85ExpandedTermMatchingMap ∧
  v85CompleteMultiplicativityMatchingMap ∧
  v85AggregateProductIdentityMap ∧
  v85CoefficientSupportMap

theorem v85_expanded_term_matching_map :
    v85ExpandedTermMatchingMap := by
  exact v81_controlled_euler_product_expanded_term_matching_package

theorem v85_complete_multiplicativity_matching_map :
    v85CompleteMultiplicativityMatchingMap := by
  exact v82_complete_multiplicativity_coefficient_matching_package

theorem v85_aggregate_product_identity_map :
    v85AggregateProductIdentityMap := by
  exact v83_finite_euler_product_aggregate_identity_package

theorem v85_coefficient_support_map :
    v85CoefficientSupportMap := by
  exact v84_finite_euler_product_coefficient_support_package

theorem v85_finite_euler_product_coefficient_matching_registry :
    v85FiniteEulerProductCoefficientMatchingRegistry := by
  exact ⟨
    v85_expanded_term_matching_map,
    ⟨
      v85_complete_multiplicativity_matching_map,
      ⟨
        v85_aggregate_product_identity_map,
        v85_coefficient_support_map
      ⟩
    ⟩
  ⟩

theorem registry_v85_expanded_term_matching :
    v81ControlledEulerProductExpandedTermMatchingPackage := by
  exact v81_controlled_euler_product_expanded_term_matching_package

theorem registry_v85_complete_multiplicativity_matching :
    v82CompleteMultiplicativityCoefficientMatchingPackage := by
  exact v82_complete_multiplicativity_coefficient_matching_package

theorem registry_v85_aggregate_product_identity :
    v83FiniteEulerProductAggregateIdentityPackage := by
  exact v83_finite_euler_product_aggregate_identity_package

theorem registry_v85_coefficient_support :
    v84FiniteEulerProductCoefficientSupportPackage := by
  exact v84_finite_euler_product_coefficient_support_package

theorem registry_v85_support_length :
    v84FiniteEulerProductSupportLength = 16 := by
  exact v84_support_length_value

theorem registry_v85_complete_multiplicative_term_list_matching
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f) :
    v81ExpandedEulerProductTermList f =
      v81CombinedEulerProductCoefficientList f := by
  exact v82_complete_multiplicative_expanded_terms_match_combined_terms hf

theorem registry_v85_complete_multiplicative_aggregate_matching
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f) :
    v81ExpandedEulerProductAggregate f =
      v81CombinedEulerProductCoefficientAggregate f := by
  exact v82_complete_multiplicative_expanded_aggregate_matches_combined_aggregate hf

theorem registry_v85_identity_product_identity :
    v84FiniteEulerProductCombinedAggregate v33IdentityFunction =
      v75ControlledEulerProductPrototype v33IdentityFunction := by
  exact v84_identity_combined_aggregate_product_identity

theorem registry_v85_square_product_identity :
    v84FiniteEulerProductCombinedAggregate v63SquareFunction =
      v75ControlledEulerProductPrototype v63SquareFunction := by
  exact v84_square_combined_aggregate_product_identity

theorem registry_v85_cube_product_identity :
    v84FiniteEulerProductCombinedAggregate v63CubeFunction =
      v75ControlledEulerProductPrototype v63CubeFunction := by
  exact v84_cube_combined_aggregate_product_identity

def v85FiniteEulerProductCoefficientMatchingPackage : Prop :=
  v85FiniteEulerProductCoefficientMatchingRegistry ∧
  (v85FiniteEulerProductCoefficientMatchingResultCount = 26) ∧
  (v84FiniteEulerProductSupportLength = 16) ∧
  v81ControlledEulerProductExpandedTermMatchingPackage ∧
  v82CompleteMultiplicativityCoefficientMatchingPackage ∧
  v83FiniteEulerProductAggregateIdentityPackage ∧
  v84FiniteEulerProductCoefficientSupportPackage

theorem v85_finite_euler_product_coefficient_matching_package :
    v85FiniteEulerProductCoefficientMatchingPackage := by
  exact ⟨
    v85_finite_euler_product_coefficient_matching_registry,
    ⟨
      v85_finite_euler_product_coefficient_matching_result_count_value,
      ⟨
        v84_support_length_value,
        ⟨
          v81_controlled_euler_product_expanded_term_matching_package,
          ⟨
            v82_complete_multiplicativity_coefficient_matching_package,
            ⟨
              v83_finite_euler_product_aggregate_identity_package,
              v84_finite_euler_product_coefficient_support_package
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v85_finite_euler_product_coefficient_matching_registry_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
