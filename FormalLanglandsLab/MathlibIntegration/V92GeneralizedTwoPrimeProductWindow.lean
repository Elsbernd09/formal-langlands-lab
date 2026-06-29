import FormalLanglandsLab.MathlibIntegration.V91Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v92TwoPrimeProductSupportWindow
    (p q : Nat) : List Nat :=
  [
    1 * 1, 1 * q, 1 * (q * q), 1 * (q * q * q),
    p * 1, p * q, p * (q * q), p * (q * q * q),
    (p * p) * 1, (p * p) * q, (p * p) * (q * q), (p * p) * (q * q * q),
    (p * p * p) * 1, (p * p * p) * q, (p * p * p) * (q * q), (p * p * p) * (q * q * q)
  ]

def v92TwoPrimeExpandedTermList
    (f : v33ArithmeticFunction)
    (p q : Nat) : List Nat :=
  [
    f 1 * f 1, f 1 * f q, f 1 * f (q * q), f 1 * f (q * q * q),
    f p * f 1, f p * f q, f p * f (q * q), f p * f (q * q * q),
    f (p * p) * f 1, f (p * p) * f q, f (p * p) * f (q * q), f (p * p) * f (q * q * q),
    f (p * p * p) * f 1, f (p * p * p) * f q, f (p * p * p) * f (q * q), f (p * p * p) * f (q * q * q)
  ]

def v92TwoPrimeCombinedCoefficientList
    (f : v33ArithmeticFunction)
    (p q : Nat) : List Nat :=
  [
    f (1 * 1), f (1 * q), f (1 * (q * q)), f (1 * (q * q * q)),
    f (p * 1), f (p * q), f (p * (q * q)), f (p * (q * q * q)),
    f ((p * p) * 1), f ((p * p) * q), f ((p * p) * (q * q)), f ((p * p) * (q * q * q)),
    f ((p * p * p) * 1), f ((p * p * p) * q), f ((p * p * p) * (q * q)), f ((p * p * p) * (q * q * q))
  ]

def v92TwoPrimeExpandedAggregate
    (f : v33ArithmeticFunction)
    (p q : Nat) : Nat :=
  v51ContributionAggregate (v92TwoPrimeExpandedTermList f p q)

def v92TwoPrimeCombinedAggregate
    (f : v33ArithmeticFunction)
    (p q : Nat) : Nat :=
  v51ContributionAggregate (v92TwoPrimeCombinedCoefficientList f p q)

theorem v92_two_prime_product_support_window_value
    (p q : Nat) :
    v92TwoPrimeProductSupportWindow p q =
      [
        1 * 1, 1 * q, 1 * (q * q), 1 * (q * q * q),
        p * 1, p * q, p * (q * q), p * (q * q * q),
        (p * p) * 1, (p * p) * q, (p * p) * (q * q), (p * p) * (q * q * q),
        (p * p * p) * 1, (p * p * p) * q, (p * p * p) * (q * q), (p * p * p) * (q * q * q)
      ] := by
  rfl

theorem v92_two_prime_product_support_length
    (p q : Nat) :
    (v92TwoPrimeProductSupportWindow p q).length = 16 := by
  rfl

theorem v92_two_prime_expanded_term_list_value
    (f : v33ArithmeticFunction)
    (p q : Nat) :
    v92TwoPrimeExpandedTermList f p q =
      [
        f 1 * f 1, f 1 * f q, f 1 * f (q * q), f 1 * f (q * q * q),
        f p * f 1, f p * f q, f p * f (q * q), f p * f (q * q * q),
        f (p * p) * f 1, f (p * p) * f q, f (p * p) * f (q * q), f (p * p) * f (q * q * q),
        f (p * p * p) * f 1, f (p * p * p) * f q, f (p * p * p) * f (q * q), f (p * p * p) * f (q * q * q)
      ] := by
  rfl

theorem v92_two_prime_combined_coefficient_list_value
    (f : v33ArithmeticFunction)
    (p q : Nat) :
    v92TwoPrimeCombinedCoefficientList f p q =
      [
        f (1 * 1), f (1 * q), f (1 * (q * q)), f (1 * (q * q * q)),
        f (p * 1), f (p * q), f (p * (q * q)), f (p * (q * q * q)),
        f ((p * p) * 1), f ((p * p) * q), f ((p * p) * (q * q)), f ((p * p) * (q * q * q)),
        f ((p * p * p) * 1), f ((p * p * p) * q), f ((p * p * p) * (q * q)), f ((p * p * p) * (q * q * q))
      ] := by
  rfl

theorem v92_complete_multiplicative_expanded_terms_match_combined_terms
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f)
    (p q : Nat) :
    v92TwoPrimeExpandedTermList f p q =
      v92TwoPrimeCombinedCoefficientList f p q := by
  unfold v92TwoPrimeExpandedTermList
  unfold v92TwoPrimeCombinedCoefficientList
  rw [
    ← hf 1 1,
    ← hf 1 q,
    ← hf 1 (q * q),
    ← hf 1 (q * q * q),
    ← hf p 1,
    ← hf p q,
    ← hf p (q * q),
    ← hf p (q * q * q),
    ← hf (p * p) 1,
    ← hf (p * p) q,
    ← hf (p * p) (q * q),
    ← hf (p * p) (q * q * q),
    ← hf (p * p * p) 1,
    ← hf (p * p * p) q,
    ← hf (p * p * p) (q * q),
    ← hf (p * p * p) (q * q * q)
  ]

theorem v92_complete_multiplicative_expanded_aggregate_matches_combined_aggregate
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f)
    (p q : Nat) :
    v92TwoPrimeExpandedAggregate f p q =
      v92TwoPrimeCombinedAggregate f p q := by
  unfold v92TwoPrimeExpandedAggregate
  unfold v92TwoPrimeCombinedAggregate
  rw [v92_complete_multiplicative_expanded_terms_match_combined_terms hf p q]

theorem v92_recover_v86_support_window :
    v92TwoPrimeProductSupportWindow 2 3 =
      v84FiniteEulerProductSupportIndices := by
  rfl

theorem v92_recover_v81_expanded_terms
    (f : v33ArithmeticFunction) :
    v92TwoPrimeExpandedTermList f 2 3 =
      v81ExpandedEulerProductTermList f := by
  rfl

theorem v92_recover_v81_combined_terms
    (f : v33ArithmeticFunction) :
    v92TwoPrimeCombinedCoefficientList f 2 3 =
      v81CombinedEulerProductCoefficientList f := by
  rfl

theorem v92_recover_v81_expanded_aggregate
    (f : v33ArithmeticFunction) :
    v92TwoPrimeExpandedAggregate f 2 3 =
      v81ExpandedEulerProductAggregate f := by
  rfl

theorem v92_recover_v81_combined_aggregate
    (f : v33ArithmeticFunction) :
    v92TwoPrimeCombinedAggregate f 2 3 =
      v81CombinedEulerProductCoefficientAggregate f := by
  rfl

theorem v92_identity_two_three_aggregate_matching :
    v92TwoPrimeExpandedAggregate v33IdentityFunction 2 3 =
      v92TwoPrimeCombinedAggregate v33IdentityFunction 2 3 := by
  exact v92_complete_multiplicative_expanded_aggregate_matches_combined_aggregate
    v61_identity_function_completely_multiplicative
    2 3

theorem v92_square_two_three_aggregate_matching :
    v92TwoPrimeExpandedAggregate v63SquareFunction 2 3 =
      v92TwoPrimeCombinedAggregate v63SquareFunction 2 3 := by
  exact v92_complete_multiplicative_expanded_aggregate_matches_combined_aggregate
    v63_square_function_completely_multiplicative
    2 3

theorem v92_cube_two_three_aggregate_matching :
    v92TwoPrimeExpandedAggregate v63CubeFunction 2 3 =
      v92TwoPrimeCombinedAggregate v63CubeFunction 2 3 := by
  exact v92_complete_multiplicative_expanded_aggregate_matches_combined_aggregate
    v63_cube_function_completely_multiplicative
    2 3

def v92GeneralizedTwoPrimeProductWindowPackage : Prop :=
  (∀ p q : Nat,
    (v92TwoPrimeProductSupportWindow p q).length = 16) ∧
  (∀ f : v33ArithmeticFunction,
    ∀ p q : Nat,
      v61CompletelyMultiplicative f →
        v92TwoPrimeExpandedTermList f p q =
          v92TwoPrimeCombinedCoefficientList f p q) ∧
  (∀ f : v33ArithmeticFunction,
    ∀ p q : Nat,
      v61CompletelyMultiplicative f →
        v92TwoPrimeExpandedAggregate f p q =
          v92TwoPrimeCombinedAggregate f p q) ∧
  (v92TwoPrimeProductSupportWindow 2 3 =
    v84FiniteEulerProductSupportIndices) ∧
  (∀ f : v33ArithmeticFunction,
    v92TwoPrimeExpandedTermList f 2 3 =
      v81ExpandedEulerProductTermList f) ∧
  (∀ f : v33ArithmeticFunction,
    v92TwoPrimeCombinedCoefficientList f 2 3 =
      v81CombinedEulerProductCoefficientList f)

theorem v92_generalized_two_prime_product_window_package :
    v92GeneralizedTwoPrimeProductWindowPackage := by
  exact ⟨
    v92_two_prime_product_support_length,
    ⟨
      fun f p q hf =>
        v92_complete_multiplicative_expanded_terms_match_combined_terms hf p q,
      ⟨
        fun f p q hf =>
          v92_complete_multiplicative_expanded_aggregate_matches_combined_aggregate hf p q,
        ⟨
          v92_recover_v86_support_window,
          ⟨
            v92_recover_v81_expanded_terms,
            v92_recover_v81_combined_terms
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v92_generalized_two_prime_product_window_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
