import FormalLanglandsLab.MathlibIntegration.V95Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v96ExpandedAggregateProductIdentity
    (f : v33ArithmeticFunction)
    (p q : Nat) : Prop :=
  v92TwoPrimeExpandedAggregate f p q =
    v95GeneralizedTwoLocalFactorProduct f p q

def v96CombinedAggregateProductIdentity
    (f : v33ArithmeticFunction)
    (p q : Nat) : Prop :=
  v92TwoPrimeCombinedAggregate f p q =
    v95GeneralizedTwoLocalFactorProduct f p q

theorem v96_expanded_aggregate_product_identity_definition
    (f : v33ArithmeticFunction)
    (p q : Nat) :
    v96ExpandedAggregateProductIdentity f p q =
      (v92TwoPrimeExpandedAggregate f p q =
        v95GeneralizedTwoLocalFactorProduct f p q) := by
  rfl

theorem v96_combined_aggregate_product_identity_definition
    (f : v33ArithmeticFunction)
    (p q : Nat) :
    v96CombinedAggregateProductIdentity f p q =
      (v92TwoPrimeCombinedAggregate f p q =
        v95GeneralizedTwoLocalFactorProduct f p q) := by
  rfl

theorem v96_combined_product_identity_of_complete_multiplicative
    {f : v33ArithmeticFunction}
    {p q : Nat}
    (hf : v61CompletelyMultiplicative f)
    (hexp : v96ExpandedAggregateProductIdentity f p q) :
    v96CombinedAggregateProductIdentity f p q := by
  unfold v96ExpandedAggregateProductIdentity at hexp
  unfold v96CombinedAggregateProductIdentity
  calc
    v92TwoPrimeCombinedAggregate f p q
        = v92TwoPrimeExpandedAggregate f p q := by
          exact
            (v92_complete_multiplicative_expanded_aggregate_matches_combined_aggregate hf p q).symm
    _ = v95GeneralizedTwoLocalFactorProduct f p q := by
          exact hexp

theorem v96_two_three_identity_expanded_product_identity :
    v96ExpandedAggregateProductIdentity v33IdentityFunction 2 3 := by
  unfold v96ExpandedAggregateProductIdentity
  exact v95_two_three_expanded_aggregate_matches_generalized_product_identity

theorem v96_two_three_square_expanded_product_identity :
    v96ExpandedAggregateProductIdentity v63SquareFunction 2 3 := by
  unfold v96ExpandedAggregateProductIdentity
  exact v95_two_three_square_expanded_aggregate_matches_generalized_product

theorem v96_two_three_cube_expanded_product_identity :
    v96ExpandedAggregateProductIdentity v63CubeFunction 2 3 := by
  unfold v96ExpandedAggregateProductIdentity
  exact v95_two_three_cube_expanded_aggregate_matches_generalized_product

theorem v96_two_three_identity_combined_product_identity :
    v96CombinedAggregateProductIdentity v33IdentityFunction 2 3 := by
  exact v96_combined_product_identity_of_complete_multiplicative
    v61_identity_function_completely_multiplicative
    v96_two_three_identity_expanded_product_identity

theorem v96_two_three_square_combined_product_identity :
    v96CombinedAggregateProductIdentity v63SquareFunction 2 3 := by
  exact v96_combined_product_identity_of_complete_multiplicative
    v63_square_function_completely_multiplicative
    v96_two_three_square_expanded_product_identity

theorem v96_two_three_cube_combined_product_identity :
    v96CombinedAggregateProductIdentity v63CubeFunction 2 3 := by
  exact v96_combined_product_identity_of_complete_multiplicative
    v63_cube_function_completely_multiplicative
    v96_two_three_cube_expanded_product_identity

theorem v96_two_three_identity_combined_product_value :
    v92TwoPrimeCombinedAggregate v33IdentityFunction 2 3 =
      v95GeneralizedTwoLocalFactorProduct v33IdentityFunction 2 3 := by
  exact v96_two_three_identity_combined_product_identity

theorem v96_two_three_square_combined_product_value :
    v92TwoPrimeCombinedAggregate v63SquareFunction 2 3 =
      v95GeneralizedTwoLocalFactorProduct v63SquareFunction 2 3 := by
  exact v96_two_three_square_combined_product_identity

theorem v96_two_three_cube_combined_product_value :
    v92TwoPrimeCombinedAggregate v63CubeFunction 2 3 =
      v95GeneralizedTwoLocalFactorProduct v63CubeFunction 2 3 := by
  exact v96_two_three_cube_combined_product_identity

theorem v96_two_three_identity_numeric_product_value :
    v95GeneralizedTwoLocalFactorProduct v33IdentityFunction 2 3 = 600 := by
  exact v95_identity_function_two_three_value

theorem v96_two_three_square_numeric_product_value :
    v95GeneralizedTwoLocalFactorProduct v63SquareFunction 2 3 = 69700 := by
  exact v95_square_function_two_three_value

theorem v96_two_three_cube_numeric_product_value :
    v95GeneralizedTwoLocalFactorProduct v63CubeFunction 2 3 = 11957400 := by
  exact v95_cube_function_two_three_value

theorem v96_two_three_identity_combined_numeric_value :
    v92TwoPrimeCombinedAggregate v33IdentityFunction 2 3 = 600 := by
  calc
    v92TwoPrimeCombinedAggregate v33IdentityFunction 2 3
        = v95GeneralizedTwoLocalFactorProduct v33IdentityFunction 2 3 := by
          exact v96_two_three_identity_combined_product_value
    _ = 600 := by
          exact v96_two_three_identity_numeric_product_value

theorem v96_two_three_square_combined_numeric_value :
    v92TwoPrimeCombinedAggregate v63SquareFunction 2 3 = 69700 := by
  calc
    v92TwoPrimeCombinedAggregate v63SquareFunction 2 3
        = v95GeneralizedTwoLocalFactorProduct v63SquareFunction 2 3 := by
          exact v96_two_three_square_combined_product_value
    _ = 69700 := by
          exact v96_two_three_square_numeric_product_value

theorem v96_two_three_cube_combined_numeric_value :
    v92TwoPrimeCombinedAggregate v63CubeFunction 2 3 = 11957400 := by
  calc
    v92TwoPrimeCombinedAggregate v63CubeFunction 2 3
        = v95GeneralizedTwoLocalFactorProduct v63CubeFunction 2 3 := by
          exact v96_two_three_cube_combined_product_value
    _ = 11957400 := by
          exact v96_two_three_cube_numeric_product_value

def v96GeneralizedLocalFactorProductExpansionPackage : Prop :=
  (∀ f : v33ArithmeticFunction,
    ∀ p q : Nat,
      v61CompletelyMultiplicative f →
      v96ExpandedAggregateProductIdentity f p q →
        v96CombinedAggregateProductIdentity f p q) ∧
  v96ExpandedAggregateProductIdentity v33IdentityFunction 2 3 ∧
  v96ExpandedAggregateProductIdentity v63SquareFunction 2 3 ∧
  v96ExpandedAggregateProductIdentity v63CubeFunction 2 3 ∧
  v96CombinedAggregateProductIdentity v33IdentityFunction 2 3 ∧
  v96CombinedAggregateProductIdentity v63SquareFunction 2 3 ∧
  v96CombinedAggregateProductIdentity v63CubeFunction 2 3 ∧
  (v95GeneralizedTwoLocalFactorProduct v33IdentityFunction 2 3 = 600) ∧
  (v95GeneralizedTwoLocalFactorProduct v63SquareFunction 2 3 = 69700) ∧
  (v95GeneralizedTwoLocalFactorProduct v63CubeFunction 2 3 = 11957400) ∧
  v95GeneralizedLocalFactorProductPrototypePackage

theorem v96_generalized_local_factor_product_expansion_package :
    v96GeneralizedLocalFactorProductExpansionPackage := by
  exact ⟨
    fun f p q hf hexp =>
      v96_combined_product_identity_of_complete_multiplicative hf hexp,
    ⟨
      v96_two_three_identity_expanded_product_identity,
      ⟨
        v96_two_three_square_expanded_product_identity,
        ⟨
          v96_two_three_cube_expanded_product_identity,
          ⟨
            v96_two_three_identity_combined_product_identity,
            ⟨
              v96_two_three_square_combined_product_identity,
              ⟨
                v96_two_three_cube_combined_product_identity,
                ⟨
                  v96_two_three_identity_numeric_product_value,
                  ⟨
                    v96_two_three_square_numeric_product_value,
                    ⟨
                      v96_two_three_cube_numeric_product_value,
                      v95_generalized_local_factor_product_prototype_package
                    ⟩
                  ⟩
                ⟩
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v96_generalized_local_factor_product_expansion_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
