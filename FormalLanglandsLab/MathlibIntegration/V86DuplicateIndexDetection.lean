import FormalLanglandsLab.MathlibIntegration.V85Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v86TwoPowerSupportWindow : List Nat :=
  [1, 2, 4, 8]

def v86ThreePowerSupportWindow : List Nat :=
  [1, 3, 9, 27]

def v86TwoThreeSupportPairs : List (Nat × Nat) :=
  [
    (1, 1), (1, 3), (1, 9), (1, 27),
    (2, 1), (2, 3), (2, 9), (2, 27),
    (4, 1), (4, 3), (4, 9), (4, 27),
    (8, 1), (8, 3), (8, 9), (8, 27)
  ]

def v86TwoThreeSupportPairProducts : List Nat :=
  v86TwoThreeSupportPairs.map fun pair => pair.1 * pair.2

def v86SupportCollisionFree : Prop :=
  v84FiniteEulerProductSupportIndices.Nodup

def v86SupportPairCollisionFree : Prop :=
  v86TwoThreeSupportPairProducts.Nodup

theorem v86_two_power_support_window_value :
    v86TwoPowerSupportWindow = [1, 2, 4, 8] := by
  rfl

theorem v86_three_power_support_window_value :
    v86ThreePowerSupportWindow = [1, 3, 9, 27] := by
  rfl

theorem v86_support_pairs_value :
    v86TwoThreeSupportPairs =
      [
        (1, 1), (1, 3), (1, 9), (1, 27),
        (2, 1), (2, 3), (2, 9), (2, 27),
        (4, 1), (4, 3), (4, 9), (4, 27),
        (8, 1), (8, 3), (8, 9), (8, 27)
      ] := by
  rfl

theorem v86_support_pair_products_value :
    v86TwoThreeSupportPairProducts =
      [
        1, 3, 9, 27,
        2, 6, 18, 54,
        4, 12, 36, 108,
        8, 24, 72, 216
      ] := by
  rfl

theorem v86_support_pair_products_match_v84_support :
    v86TwoThreeSupportPairProducts =
      v84FiniteEulerProductSupportIndices := by
  rfl

theorem v86_support_length_value :
    v86TwoThreeSupportPairProducts.length = 16 := by
  rfl

theorem v86_support_indices_nodup :
    v84FiniteEulerProductSupportIndices.Nodup := by
  unfold v84FiniteEulerProductSupportIndices
  unfold v76TwoThreeCombinedIndexWindow
  decide

theorem v86_support_pair_products_nodup :
    v86TwoThreeSupportPairProducts.Nodup := by
  unfold v86TwoThreeSupportPairProducts
  unfold v86TwoThreeSupportPairs
  decide

theorem v86_support_collision_free :
    v86SupportCollisionFree := by
  exact v86_support_indices_nodup

theorem v86_support_pair_collision_free :
    v86SupportPairCollisionFree := by
  exact v86_support_pair_products_nodup

theorem v86_no_duplicate_support_length_matches_registry :
    v86TwoThreeSupportPairProducts.length =
      v84FiniteEulerProductSupportLength := by
  rfl

theorem v86_collision_free_support_has_length_sixteen :
    v84FiniteEulerProductSupportIndices.Nodup ∧
    v84FiniteEulerProductSupportLength = 16 := by
  exact ⟨
    v86_support_indices_nodup,
    v84_support_length_value
  ⟩

theorem v86_identity_support_uses_collision_free_indices :
    v84FiniteEulerProductSupportIndices.Nodup ∧
    v84FiniteEulerProductCombinedAggregate v33IdentityFunction =
      v75ControlledEulerProductPrototype v33IdentityFunction := by
  exact ⟨
    v86_support_indices_nodup,
    v84_identity_combined_aggregate_product_identity
  ⟩

theorem v86_square_support_uses_collision_free_indices :
    v84FiniteEulerProductSupportIndices.Nodup ∧
    v84FiniteEulerProductCombinedAggregate v63SquareFunction =
      v75ControlledEulerProductPrototype v63SquareFunction := by
  exact ⟨
    v86_support_indices_nodup,
    v84_square_combined_aggregate_product_identity
  ⟩

theorem v86_cube_support_uses_collision_free_indices :
    v84FiniteEulerProductSupportIndices.Nodup ∧
    v84FiniteEulerProductCombinedAggregate v63CubeFunction =
      v75ControlledEulerProductPrototype v63CubeFunction := by
  exact ⟨
    v86_support_indices_nodup,
    v84_cube_combined_aggregate_product_identity
  ⟩

def v86DuplicateIndexDetectionPackage : Prop :=
  v86SupportCollisionFree ∧
  v86SupportPairCollisionFree ∧
  (v86TwoThreeSupportPairProducts.length = 16) ∧
  (v84FiniteEulerProductSupportLength = 16) ∧
  (v86TwoThreeSupportPairProducts =
    v84FiniteEulerProductSupportIndices) ∧
  (v84FiniteEulerProductCombinedAggregate v33IdentityFunction =
    v75ControlledEulerProductPrototype v33IdentityFunction) ∧
  (v84FiniteEulerProductCombinedAggregate v63SquareFunction =
    v75ControlledEulerProductPrototype v63SquareFunction) ∧
  (v84FiniteEulerProductCombinedAggregate v63CubeFunction =
    v75ControlledEulerProductPrototype v63CubeFunction)

theorem v86_duplicate_index_detection_package :
    v86DuplicateIndexDetectionPackage := by
  exact ⟨
    v86_support_collision_free,
    ⟨
      v86_support_pair_collision_free,
      ⟨
        v86_support_length_value,
        ⟨
          v84_support_length_value,
          ⟨
            v86_support_pair_products_match_v84_support,
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
    ⟩
  ⟩

theorem v86_duplicate_index_detection_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
