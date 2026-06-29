import FormalLanglandsLab.MathlibIntegration.V75Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v76EulerProductLocalTerm
    (f : v33ArithmeticFunction)
    (a b : Nat) : Nat :=
  f a * f b

def v76EulerProductCombinedIndex
    (a b : Nat) : Nat :=
  a * b

theorem v76_local_term_value
    (f : v33ArithmeticFunction)
    (a b : Nat) :
    v76EulerProductLocalTerm f a b = f a * f b := by
  rfl

theorem v76_combined_index_value
    (a b : Nat) :
    v76EulerProductCombinedIndex a b = a * b := by
  rfl

theorem v76_complete_multiplicative_local_term
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f)
    (a b : Nat) :
    v76EulerProductLocalTerm f a b =
      f (v76EulerProductCombinedIndex a b) := by
  unfold v76EulerProductLocalTerm
  unfold v76EulerProductCombinedIndex
  exact (hf a b).symm

theorem v76_multiplicative_local_term
    {f : v33ArithmeticFunction}
    (hf : v61Multiplicative f)
    {a b : Nat}
    (ha : a ≠ 0)
    (hb : b ≠ 0)
    (hcop : Nat.Coprime a b) :
    v76EulerProductLocalTerm f a b =
      f (v76EulerProductCombinedIndex a b) := by
  unfold v76EulerProductLocalTerm
  unfold v76EulerProductCombinedIndex
  exact (hf a b ha hb hcop).symm

def v76TwoThreeCombinedIndexWindow : List Nat :=
  [
    1, 3, 9, 27,
    2, 6, 18, 54,
    4, 12, 36, 108,
    8, 24, 72, 216
  ]

def v76TwoThreeExpandedLocalTerms
    (f : v33ArithmeticFunction) : List Nat :=
  [
    f 1 * f 1, f 1 * f 3, f 1 * f 9, f 1 * f 27,
    f 2 * f 1, f 2 * f 3, f 2 * f 9, f 2 * f 27,
    f 4 * f 1, f 4 * f 3, f 4 * f 9, f 4 * f 27,
    f 8 * f 1, f 8 * f 3, f 8 * f 9, f 8 * f 27
  ]

def v76TwoThreeCombinedCoefficientTerms
    (f : v33ArithmeticFunction) : List Nat :=
  [
    f 1, f 3, f 9, f 27,
    f 2, f 6, f 18, f 54,
    f 4, f 12, f 36, f 108,
    f 8, f 24, f 72, f 216
  ]

theorem v76_two_three_combined_index_window_value :
    v76TwoThreeCombinedIndexWindow =
      [
        1, 3, 9, 27,
        2, 6, 18, 54,
        4, 12, 36, 108,
        8, 24, 72, 216
      ] := by
  rfl

theorem v76_two_three_expanded_local_terms_value
    (f : v33ArithmeticFunction) :
    v76TwoThreeExpandedLocalTerms f =
      [
        f 1 * f 1, f 1 * f 3, f 1 * f 9, f 1 * f 27,
        f 2 * f 1, f 2 * f 3, f 2 * f 9, f 2 * f 27,
        f 4 * f 1, f 4 * f 3, f 4 * f 9, f 4 * f 27,
        f 8 * f 1, f 8 * f 3, f 8 * f 9, f 8 * f 27
      ] := by
  rfl

theorem v76_two_three_combined_coefficient_terms_value
    (f : v33ArithmeticFunction) :
    v76TwoThreeCombinedCoefficientTerms f =
      [
        f 1, f 3, f 9, f 27,
        f 2, f 6, f 18, f 54,
        f 4, f 12, f 36, f 108,
        f 8, f 24, f 72, f 216
      ] := by
  rfl

theorem v76_identity_local_term_two_three :
    v76EulerProductLocalTerm v33IdentityFunction 2 3 =
      v33IdentityFunction 6 := by
  exact v76_complete_multiplicative_local_term
    v61_identity_function_completely_multiplicative
    2 3

theorem v76_square_local_term_two_three :
    v76EulerProductLocalTerm v63SquareFunction 2 3 =
      v63SquareFunction 6 := by
  exact v76_complete_multiplicative_local_term
    v63_square_function_completely_multiplicative
    2 3

theorem v76_cube_local_term_two_three :
    v76EulerProductLocalTerm v63CubeFunction 2 3 =
      v63CubeFunction 6 := by
  exact v76_complete_multiplicative_local_term
    v63_cube_function_completely_multiplicative
    2 3

theorem v76_fourth_power_local_term_two_three :
    v76EulerProductLocalTerm v63FourthPowerFunction 2 3 =
      v63FourthPowerFunction 6 := by
  exact v76_complete_multiplicative_local_term
    v63_fourth_power_function_completely_multiplicative
    2 3

theorem v76_identity_local_term_four_nine :
    v76EulerProductLocalTerm v33IdentityFunction 4 9 =
      v33IdentityFunction 36 := by
  exact v76_complete_multiplicative_local_term
    v61_identity_function_completely_multiplicative
    4 9

theorem v76_square_local_term_four_nine :
    v76EulerProductLocalTerm v63SquareFunction 4 9 =
      v63SquareFunction 36 := by
  exact v76_complete_multiplicative_local_term
    v63_square_function_completely_multiplicative
    4 9

def v76EulerProductMultiplicativityInteractionPackage : Prop :=
  (∀ f : v33ArithmeticFunction,
    v61CompletelyMultiplicative f →
    ∀ a b : Nat,
      v76EulerProductLocalTerm f a b =
        f (v76EulerProductCombinedIndex a b)) ∧
  (v76EulerProductLocalTerm v33IdentityFunction 2 3 =
    v33IdentityFunction 6) ∧
  (v76EulerProductLocalTerm v63SquareFunction 2 3 =
    v63SquareFunction 6) ∧
  (v76EulerProductLocalTerm v63CubeFunction 2 3 =
    v63CubeFunction 6) ∧
  (v76EulerProductLocalTerm v63FourthPowerFunction 2 3 =
    v63FourthPowerFunction 6)

theorem v76_euler_product_multiplicativity_interaction_package :
    v76EulerProductMultiplicativityInteractionPackage := by
  exact ⟨
    fun f hf a b =>
      v76_complete_multiplicative_local_term hf a b,
    ⟨
      v76_identity_local_term_two_three,
      ⟨
        v76_square_local_term_two_three,
        ⟨
          v76_cube_local_term_two_three,
          v76_fourth_power_local_term_two_three
        ⟩
      ⟩
    ⟩
  ⟩

theorem v76_euler_product_multiplicativity_interaction_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
