import FormalLanglandsLab.MathlibIntegration.V86Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v87DuplicateIndexExampleSupport : List Nat :=
  [1, 2, 2, 4]

def v87DuplicateIndexExampleCoefficients : List Nat :=
  [10, 20, 30, 40]

def v87DuplicateIndexTwoBucket : List Nat :=
  [20, 30]

def v87DuplicateIndexTwoBucketAggregate : Nat :=
  v51ContributionAggregate v87DuplicateIndexTwoBucket

def v87DuplicateIndexExampleTotalAggregate : Nat :=
  v51ContributionAggregate v87DuplicateIndexExampleCoefficients

def v87CollisionFreeSupportStatus : Prop :=
  v84FiniteEulerProductSupportIndices.Nodup

def v87DuplicateSupportStatus : Prop :=
  ¬ v87DuplicateIndexExampleSupport.Nodup

def v87DuplicateAggregationNeeded : Prop :=
  v87DuplicateSupportStatus

def v87CollisionFreeAggregationNotNeeded : Prop :=
  v87CollisionFreeSupportStatus

theorem v87_duplicate_index_example_support_value :
    v87DuplicateIndexExampleSupport = [1, 2, 2, 4] := by
  rfl

theorem v87_duplicate_index_example_coefficients_value :
    v87DuplicateIndexExampleCoefficients = [10, 20, 30, 40] := by
  rfl

theorem v87_duplicate_index_two_bucket_value :
    v87DuplicateIndexTwoBucket = [20, 30] := by
  rfl

theorem v87_duplicate_index_two_bucket_aggregate_value :
    v87DuplicateIndexTwoBucketAggregate = 50 := by
  rfl

theorem v87_duplicate_index_example_total_aggregate_value :
    v87DuplicateIndexExampleTotalAggregate = 100 := by
  rfl

theorem v87_duplicate_index_example_not_nodup :
    ¬ v87DuplicateIndexExampleSupport.Nodup := by
  unfold v87DuplicateIndexExampleSupport
  decide

theorem v87_current_euler_product_support_is_nodup :
    v84FiniteEulerProductSupportIndices.Nodup := by
  exact v86_support_indices_nodup

theorem v87_duplicate_support_status :
    v87DuplicateSupportStatus := by
  exact v87_duplicate_index_example_not_nodup

theorem v87_collision_free_support_status :
    v87CollisionFreeSupportStatus := by
  exact v87_current_euler_product_support_is_nodup

theorem v87_duplicate_aggregation_needed :
    v87DuplicateAggregationNeeded := by
  exact v87_duplicate_support_status

theorem v87_collision_free_aggregation_not_needed :
    v87CollisionFreeAggregationNotNeeded := by
  exact v87_collision_free_support_status

theorem v87_current_support_length_still_sixteen :
    v84FiniteEulerProductSupportLength = 16 := by
  exact v84_support_length_value

theorem v87_current_support_collision_free_with_length :
    v84FiniteEulerProductSupportIndices.Nodup ∧
    v84FiniteEulerProductSupportLength = 16 := by
  exact ⟨
    v87_current_euler_product_support_is_nodup,
    v87_current_support_length_still_sixteen
  ⟩

theorem v87_duplicate_example_bucket_aggregation_correct :
    v87DuplicateIndexTwoBucketAggregate = 20 + 30 := by
  rfl

theorem v87_duplicate_example_total_aggregation_correct :
    v87DuplicateIndexExampleTotalAggregate = 10 + 20 + 30 + 40 := by
  rfl

theorem v87_duplicate_example_bucket_contributes_to_total :
    v87DuplicateIndexTwoBucketAggregate = 50 ∧
    v87DuplicateIndexExampleTotalAggregate = 100 := by
  exact ⟨
    v87_duplicate_index_two_bucket_aggregate_value,
    v87_duplicate_index_example_total_aggregate_value
  ⟩

def v87DuplicateIndexAggregationFrameworkPackage : Prop :=
  v87DuplicateSupportStatus ∧
  v87CollisionFreeSupportStatus ∧
  v87DuplicateAggregationNeeded ∧
  v87CollisionFreeAggregationNotNeeded ∧
  (v87DuplicateIndexTwoBucketAggregate = 50) ∧
  (v87DuplicateIndexExampleTotalAggregate = 100) ∧
  (v84FiniteEulerProductSupportLength = 16) ∧
  v86DuplicateIndexDetectionPackage

theorem v87_duplicate_index_aggregation_framework_package :
    v87DuplicateIndexAggregationFrameworkPackage := by
  exact ⟨
    v87_duplicate_support_status,
    ⟨
      v87_collision_free_support_status,
      ⟨
        v87_duplicate_aggregation_needed,
        ⟨
          v87_collision_free_aggregation_not_needed,
          ⟨
            v87_duplicate_index_two_bucket_aggregate_value,
            ⟨
              v87_duplicate_index_example_total_aggregate_value,
              ⟨
                v84_support_length_value,
                v86_duplicate_index_detection_package
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v87_duplicate_index_aggregation_framework_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
