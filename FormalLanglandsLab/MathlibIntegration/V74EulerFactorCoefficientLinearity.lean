import FormalLanglandsLab.MathlibIntegration.V73Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option linter.unusedSimpArgs false

def v74EulerFactorTwoAdditivity : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v73EulerFactorAggregateTwo (v34PointwiseAdd f g) =
      v73EulerFactorAggregateTwo f + v73EulerFactorAggregateTwo g

def v74EulerFactorThreeAdditivity : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v73EulerFactorAggregateThree (v34PointwiseAdd f g) =
      v73EulerFactorAggregateThree f + v73EulerFactorAggregateThree g

def v74EulerFactorTwoScaling : Prop :=
  ∀ c : Nat,
  ∀ f : v33ArithmeticFunction,
    v73EulerFactorAggregateTwo (v34PointwiseScale c f) =
      c * v73EulerFactorAggregateTwo f

def v74EulerFactorThreeScaling : Prop :=
  ∀ c : Nat,
  ∀ f : v33ArithmeticFunction,
    v73EulerFactorAggregateThree (v34PointwiseScale c f) =
      c * v73EulerFactorAggregateThree f

theorem v74_euler_factor_two_additivity
    (f g : v33ArithmeticFunction) :
    v73EulerFactorAggregateTwo (v34PointwiseAdd f g) =
      v73EulerFactorAggregateTwo f + v73EulerFactorAggregateTwo g := by
  rw [
    v73_euler_factor_aggregate_two_value,
    v73_euler_factor_aggregate_two_value,
    v73_euler_factor_aggregate_two_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v74_euler_factor_three_additivity
    (f g : v33ArithmeticFunction) :
    v73EulerFactorAggregateThree (v34PointwiseAdd f g) =
      v73EulerFactorAggregateThree f + v73EulerFactorAggregateThree g := by
  rw [
    v73_euler_factor_aggregate_three_value,
    v73_euler_factor_aggregate_three_value,
    v73_euler_factor_aggregate_three_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v74_euler_factor_two_scaling
    (c : Nat)
    (f : v33ArithmeticFunction) :
    v73EulerFactorAggregateTwo (v34PointwiseScale c f) =
      c * v73EulerFactorAggregateTwo f := by
  rw [
    v73_euler_factor_aggregate_two_value,
    v73_euler_factor_aggregate_two_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v74_euler_factor_three_scaling
    (c : Nat)
    (f : v33ArithmeticFunction) :
    v73EulerFactorAggregateThree (v34PointwiseScale c f) =
      c * v73EulerFactorAggregateThree f := by
  rw [
    v73_euler_factor_aggregate_three_value,
    v73_euler_factor_aggregate_three_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v74_euler_factor_two_additivity_all :
    v74EulerFactorTwoAdditivity := by
  intro f g
  exact v74_euler_factor_two_additivity f g

theorem v74_euler_factor_three_additivity_all :
    v74EulerFactorThreeAdditivity := by
  intro f g
  exact v74_euler_factor_three_additivity f g

theorem v74_euler_factor_two_scaling_all :
    v74EulerFactorTwoScaling := by
  intro c f
  exact v74_euler_factor_two_scaling c f

theorem v74_euler_factor_three_scaling_all :
    v74EulerFactorThreeScaling := by
  intro c f
  exact v74_euler_factor_three_scaling c f

theorem v74_euler_factor_two_zero_scale
    (f : v33ArithmeticFunction) :
    v73EulerFactorAggregateTwo (v34PointwiseScale 0 f) = 0 := by
  calc
    v73EulerFactorAggregateTwo (v34PointwiseScale 0 f)
        = 0 * v73EulerFactorAggregateTwo f := by
          exact v74_euler_factor_two_scaling 0 f
    _ = 0 := by
          simp

theorem v74_euler_factor_three_zero_scale
    (f : v33ArithmeticFunction) :
    v73EulerFactorAggregateThree (v34PointwiseScale 0 f) = 0 := by
  calc
    v73EulerFactorAggregateThree (v34PointwiseScale 0 f)
        = 0 * v73EulerFactorAggregateThree f := by
          exact v74_euler_factor_three_scaling 0 f
    _ = 0 := by
          simp

theorem v74_euler_factor_two_one_scale
    (f : v33ArithmeticFunction) :
    v73EulerFactorAggregateTwo (v34PointwiseScale 1 f) =
      v73EulerFactorAggregateTwo f := by
  calc
    v73EulerFactorAggregateTwo (v34PointwiseScale 1 f)
        = 1 * v73EulerFactorAggregateTwo f := by
          exact v74_euler_factor_two_scaling 1 f
    _ = v73EulerFactorAggregateTwo f := by
          simp

theorem v74_euler_factor_three_one_scale
    (f : v33ArithmeticFunction) :
    v73EulerFactorAggregateThree (v34PointwiseScale 1 f) =
      v73EulerFactorAggregateThree f := by
  calc
    v73EulerFactorAggregateThree (v34PointwiseScale 1 f)
        = 1 * v73EulerFactorAggregateThree f := by
          exact v74_euler_factor_three_scaling 1 f
    _ = v73EulerFactorAggregateThree f := by
          simp

def v74EulerFactorCoefficientLinearityPackage : Prop :=
  v74EulerFactorTwoAdditivity ∧
  v74EulerFactorThreeAdditivity ∧
  v74EulerFactorTwoScaling ∧
  v74EulerFactorThreeScaling ∧
  (∀ f : v33ArithmeticFunction,
    v73EulerFactorAggregateTwo (v34PointwiseScale 0 f) = 0) ∧
  (∀ f : v33ArithmeticFunction,
    v73EulerFactorAggregateThree (v34PointwiseScale 0 f) = 0)

theorem v74_euler_factor_coefficient_linearity_package :
    v74EulerFactorCoefficientLinearityPackage := by
  exact ⟨
    v74_euler_factor_two_additivity_all,
    ⟨
      v74_euler_factor_three_additivity_all,
      ⟨
        v74_euler_factor_two_scaling_all,
        ⟨
          v74_euler_factor_three_scaling_all,
          ⟨
            v74_euler_factor_two_zero_scale,
            v74_euler_factor_three_zero_scale
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v74_euler_factor_coefficient_linearity_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
