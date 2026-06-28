import FormalLanglandsLab.MathlibIntegration.V71Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option linter.unusedSimpArgs false
set_option maxHeartbeats 2000000

def v72CoefficientAggregateSixAdditivity : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v71CoefficientAggregateSix (v34PointwiseAdd f g) =
      v71CoefficientAggregateSix f + v71CoefficientAggregateSix g

def v72CoefficientAggregateTwelveAdditivity : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v71CoefficientAggregateTwelve (v34PointwiseAdd f g) =
      v71CoefficientAggregateTwelve f + v71CoefficientAggregateTwelve g

def v72CoefficientAggregateSixScaling : Prop :=
  ∀ c : Nat,
  ∀ f : v33ArithmeticFunction,
    v71CoefficientAggregateSix (v34PointwiseScale c f) =
      c * v71CoefficientAggregateSix f

def v72CoefficientAggregateTwelveScaling : Prop :=
  ∀ c : Nat,
  ∀ f : v33ArithmeticFunction,
    v71CoefficientAggregateTwelve (v34PointwiseScale c f) =
      c * v71CoefficientAggregateTwelve f

theorem v72_coefficient_aggregate_six_additivity
    (f g : v33ArithmeticFunction) :
    v71CoefficientAggregateSix (v34PointwiseAdd f g) =
      v71CoefficientAggregateSix f + v71CoefficientAggregateSix g := by
  rw [
    v71_coefficient_aggregate_six_value,
    v71_coefficient_aggregate_six_value,
    v71_coefficient_aggregate_six_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v72_coefficient_aggregate_twelve_additivity
    (f g : v33ArithmeticFunction) :
    v71CoefficientAggregateTwelve (v34PointwiseAdd f g) =
      v71CoefficientAggregateTwelve f + v71CoefficientAggregateTwelve g := by
  rw [
    v71_coefficient_aggregate_twelve_value,
    v71_coefficient_aggregate_twelve_value,
    v71_coefficient_aggregate_twelve_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v72_coefficient_aggregate_six_scaling
    (c : Nat)
    (f : v33ArithmeticFunction) :
    v71CoefficientAggregateSix (v34PointwiseScale c f) =
      c * v71CoefficientAggregateSix f := by
  rw [
    v71_coefficient_aggregate_six_value,
    v71_coefficient_aggregate_six_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v72_coefficient_aggregate_twelve_scaling
    (c : Nat)
    (f : v33ArithmeticFunction) :
    v71CoefficientAggregateTwelve (v34PointwiseScale c f) =
      c * v71CoefficientAggregateTwelve f := by
  rw [
    v71_coefficient_aggregate_twelve_value,
    v71_coefficient_aggregate_twelve_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v72_coefficient_aggregate_six_additivity_all :
    v72CoefficientAggregateSixAdditivity := by
  intro f g
  exact v72_coefficient_aggregate_six_additivity f g

theorem v72_coefficient_aggregate_twelve_additivity_all :
    v72CoefficientAggregateTwelveAdditivity := by
  intro f g
  exact v72_coefficient_aggregate_twelve_additivity f g

theorem v72_coefficient_aggregate_six_scaling_all :
    v72CoefficientAggregateSixScaling := by
  intro c f
  exact v72_coefficient_aggregate_six_scaling c f

theorem v72_coefficient_aggregate_twelve_scaling_all :
    v72CoefficientAggregateTwelveScaling := by
  intro c f
  exact v72_coefficient_aggregate_twelve_scaling c f

theorem v72_coefficient_aggregate_six_zero_scale
    (f : v33ArithmeticFunction) :
    v71CoefficientAggregateSix (v34PointwiseScale 0 f) = 0 := by
  calc
    v71CoefficientAggregateSix (v34PointwiseScale 0 f)
        = 0 * v71CoefficientAggregateSix f := by
          exact v72_coefficient_aggregate_six_scaling 0 f
    _ = 0 := by
          simp

theorem v72_coefficient_aggregate_twelve_zero_scale
    (f : v33ArithmeticFunction) :
    v71CoefficientAggregateTwelve (v34PointwiseScale 0 f) = 0 := by
  calc
    v71CoefficientAggregateTwelve (v34PointwiseScale 0 f)
        = 0 * v71CoefficientAggregateTwelve f := by
          exact v72_coefficient_aggregate_twelve_scaling 0 f
    _ = 0 := by
          simp

theorem v72_coefficient_aggregate_six_one_scale
    (f : v33ArithmeticFunction) :
    v71CoefficientAggregateSix (v34PointwiseScale 1 f) =
      v71CoefficientAggregateSix f := by
  calc
    v71CoefficientAggregateSix (v34PointwiseScale 1 f)
        = 1 * v71CoefficientAggregateSix f := by
          exact v72_coefficient_aggregate_six_scaling 1 f
    _ = v71CoefficientAggregateSix f := by
          simp

theorem v72_coefficient_aggregate_twelve_one_scale
    (f : v33ArithmeticFunction) :
    v71CoefficientAggregateTwelve (v34PointwiseScale 1 f) =
      v71CoefficientAggregateTwelve f := by
  calc
    v71CoefficientAggregateTwelve (v34PointwiseScale 1 f)
        = 1 * v71CoefficientAggregateTwelve f := by
          exact v72_coefficient_aggregate_twelve_scaling 1 f
    _ = v71CoefficientAggregateTwelve f := by
          simp

def v72CoefficientWindowLinearityPackage : Prop :=
  v72CoefficientAggregateSixAdditivity ∧
  v72CoefficientAggregateTwelveAdditivity ∧
  v72CoefficientAggregateSixScaling ∧
  v72CoefficientAggregateTwelveScaling ∧
  (∀ f : v33ArithmeticFunction,
    v71CoefficientAggregateSix (v34PointwiseScale 0 f) = 0) ∧
  (∀ f : v33ArithmeticFunction,
    v71CoefficientAggregateTwelve (v34PointwiseScale 0 f) = 0)

theorem v72_coefficient_window_linearity_package :
    v72CoefficientWindowLinearityPackage := by
  exact ⟨
    v72_coefficient_aggregate_six_additivity_all,
    ⟨
      v72_coefficient_aggregate_twelve_additivity_all,
      ⟨
        v72_coefficient_aggregate_six_scaling_all,
        ⟨
          v72_coefficient_aggregate_twelve_scaling_all,
          ⟨
            v72_coefficient_aggregate_six_zero_scale,
            v72_coefficient_aggregate_twelve_zero_scale
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v72_coefficient_window_linearity_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
