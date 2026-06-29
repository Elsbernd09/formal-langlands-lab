import FormalLanglandsLab.MathlibIntegration.V92Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v93GeneralizedProductSupportCollisionFree
    (p q : Nat) : Prop :=
  (v92TwoPrimeProductSupportWindow p q).Nodup

def v93GeneralizedProductSupportHasCollision
    (p q : Nat) : Prop :=
  ¬ (v92TwoPrimeProductSupportWindow p q).Nodup

def v93KnownTwoThreeCollisionFree : Prop :=
  v93GeneralizedProductSupportCollisionFree 2 3

def v93DegenerateOneOneHasCollision : Prop :=
  v93GeneralizedProductSupportHasCollision 1 1

def v93DegenerateOneTwoHasCollision : Prop :=
  v93GeneralizedProductSupportHasCollision 1 2

def v93DegenerateTwoTwoHasCollision : Prop :=
  v93GeneralizedProductSupportHasCollision 2 2

theorem v93_generalized_collision_free_definition
    (p q : Nat) :
    v93GeneralizedProductSupportCollisionFree p q =
      (v92TwoPrimeProductSupportWindow p q).Nodup := by
  rfl

theorem v93_generalized_collision_definition
    (p q : Nat) :
    v93GeneralizedProductSupportHasCollision p q =
      ¬ (v92TwoPrimeProductSupportWindow p q).Nodup := by
  rfl

theorem v93_two_three_support_collision_free :
    v93GeneralizedProductSupportCollisionFree 2 3 := by
  unfold v93GeneralizedProductSupportCollisionFree
  rw [v92_recover_v86_support_window]
  exact v86_support_indices_nodup

theorem v93_two_three_support_has_length_sixteen :
    (v92TwoPrimeProductSupportWindow 2 3).length = 16 := by
  exact v92_two_prime_product_support_length 2 3

theorem v93_two_three_support_collision_free_with_length :
    v93GeneralizedProductSupportCollisionFree 2 3 ∧
    (v92TwoPrimeProductSupportWindow 2 3).length = 16 := by
  exact ⟨
    v93_two_three_support_collision_free,
    v93_two_three_support_has_length_sixteen
  ⟩

theorem v93_one_one_support_value :
    v92TwoPrimeProductSupportWindow 1 1 =
      [
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1
      ] := by
  rfl

theorem v93_one_one_support_has_collision :
    v93DegenerateOneOneHasCollision := by
  unfold v93DegenerateOneOneHasCollision
  unfold v93GeneralizedProductSupportHasCollision
  unfold v92TwoPrimeProductSupportWindow
  decide

theorem v93_one_two_support_has_collision :
    v93DegenerateOneTwoHasCollision := by
  unfold v93DegenerateOneTwoHasCollision
  unfold v93GeneralizedProductSupportHasCollision
  unfold v92TwoPrimeProductSupportWindow
  decide

theorem v93_two_two_support_has_collision :
    v93DegenerateTwoTwoHasCollision := by
  unfold v93DegenerateTwoTwoHasCollision
  unfold v93GeneralizedProductSupportHasCollision
  unfold v92TwoPrimeProductSupportWindow
  decide

theorem v93_collision_hypotheses_are_nontrivial :
    v93GeneralizedProductSupportCollisionFree 2 3 ∧
    v93GeneralizedProductSupportHasCollision 1 1 ∧
    v93GeneralizedProductSupportHasCollision 1 2 ∧
    v93GeneralizedProductSupportHasCollision 2 2 := by
  exact ⟨
    v93_two_three_support_collision_free,
    ⟨
      v93_one_one_support_has_collision,
      ⟨
        v93_one_two_support_has_collision,
        v93_two_two_support_has_collision
      ⟩
    ⟩
  ⟩

theorem v93_two_three_complete_multiplicative_matching_with_collision_free_support
    {f : v33ArithmeticFunction}
    (hf : v61CompletelyMultiplicative f) :
    v93GeneralizedProductSupportCollisionFree 2 3 ∧
    v92TwoPrimeExpandedAggregate f 2 3 =
      v92TwoPrimeCombinedAggregate f 2 3 := by
  exact ⟨
    v93_two_three_support_collision_free,
    v92_complete_multiplicative_expanded_aggregate_matches_combined_aggregate hf 2 3
  ⟩

theorem v93_identity_two_three_matching_with_collision_free_support :
    v93GeneralizedProductSupportCollisionFree 2 3 ∧
    v92TwoPrimeExpandedAggregate v33IdentityFunction 2 3 =
      v92TwoPrimeCombinedAggregate v33IdentityFunction 2 3 := by
  exact v93_two_three_complete_multiplicative_matching_with_collision_free_support
    v61_identity_function_completely_multiplicative

theorem v93_square_two_three_matching_with_collision_free_support :
    v93GeneralizedProductSupportCollisionFree 2 3 ∧
    v92TwoPrimeExpandedAggregate v63SquareFunction 2 3 =
      v92TwoPrimeCombinedAggregate v63SquareFunction 2 3 := by
  exact v93_two_three_complete_multiplicative_matching_with_collision_free_support
    v63_square_function_completely_multiplicative

theorem v93_cube_two_three_matching_with_collision_free_support :
    v93GeneralizedProductSupportCollisionFree 2 3 ∧
    v92TwoPrimeExpandedAggregate v63CubeFunction 2 3 =
      v92TwoPrimeCombinedAggregate v63CubeFunction 2 3 := by
  exact v93_two_three_complete_multiplicative_matching_with_collision_free_support
    v63_cube_function_completely_multiplicative

def v93GeneralizedProductSupportCollisionAnalysisPackage : Prop :=
  v93GeneralizedProductSupportCollisionFree 2 3 ∧
  (v92TwoPrimeProductSupportWindow 2 3).length = 16 ∧
  v93GeneralizedProductSupportHasCollision 1 1 ∧
  v93GeneralizedProductSupportHasCollision 1 2 ∧
  v93GeneralizedProductSupportHasCollision 2 2 ∧
  (∀ f : v33ArithmeticFunction,
    v61CompletelyMultiplicative f →
      v92TwoPrimeExpandedAggregate f 2 3 =
        v92TwoPrimeCombinedAggregate f 2 3) ∧
  v92GeneralizedTwoPrimeProductWindowPackage

theorem v93_generalized_product_support_collision_analysis_package :
    v93GeneralizedProductSupportCollisionAnalysisPackage := by
  exact ⟨
    v93_two_three_support_collision_free,
    ⟨
      v93_two_three_support_has_length_sixteen,
      ⟨
        v93_one_one_support_has_collision,
        ⟨
          v93_one_two_support_has_collision,
          ⟨
            v93_two_two_support_has_collision,
            ⟨
              fun f hf =>
                v92_complete_multiplicative_expanded_aggregate_matches_combined_aggregate hf 2 3,
              v92_generalized_two_prime_product_window_package
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v93_generalized_product_support_collision_analysis_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
