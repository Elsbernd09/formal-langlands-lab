import FormalLanglandsLab.MathlibIntegration.V66Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option linter.unusedSimpArgs false

def v67DivisorSumSixScaling : Prop :=
  ∀ c : Nat,
  ∀ f : v33ArithmeticFunction,
    v65ExplicitDivisorSumSix (v34PointwiseScale c f) =
      c * v65ExplicitDivisorSumSix f

def v67DivisorSumTwelveScaling : Prop :=
  ∀ c : Nat,
  ∀ f : v33ArithmeticFunction,
    v65ExplicitDivisorSumTwelve (v34PointwiseScale c f) =
      c * v65ExplicitDivisorSumTwelve f

theorem v67_divisor_sum_six_scaling
    (c : Nat)
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumSix (v34PointwiseScale c f) =
      c * v65ExplicitDivisorSumSix f := by
  rw [
    v65_explicit_divisor_sum_six_value,
    v65_explicit_divisor_sum_six_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v67_divisor_sum_twelve_scaling
    (c : Nat)
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumTwelve (v34PointwiseScale c f) =
      c * v65ExplicitDivisorSumTwelve f := by
  rw [
    v65_explicit_divisor_sum_twelve_value,
    v65_explicit_divisor_sum_twelve_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v67_divisor_sum_six_scaling_all :
    v67DivisorSumSixScaling := by
  intro c f
  exact v67_divisor_sum_six_scaling c f

theorem v67_divisor_sum_twelve_scaling_all :
    v67DivisorSumTwelveScaling := by
  intro c f
  exact v67_divisor_sum_twelve_scaling c f

theorem v67_divisor_sum_six_zero_scale
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumSix (v34PointwiseScale 0 f) = 0 := by
  calc
    v65ExplicitDivisorSumSix (v34PointwiseScale 0 f)
        = 0 * v65ExplicitDivisorSumSix f := by
          exact v67_divisor_sum_six_scaling 0 f
    _ = 0 := by
          simp

theorem v67_divisor_sum_twelve_zero_scale
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumTwelve (v34PointwiseScale 0 f) = 0 := by
  calc
    v65ExplicitDivisorSumTwelve (v34PointwiseScale 0 f)
        = 0 * v65ExplicitDivisorSumTwelve f := by
          exact v67_divisor_sum_twelve_scaling 0 f
    _ = 0 := by
          simp

theorem v67_divisor_sum_six_one_scale
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumSix (v34PointwiseScale 1 f) =
      v65ExplicitDivisorSumSix f := by
  calc
    v65ExplicitDivisorSumSix (v34PointwiseScale 1 f)
        = 1 * v65ExplicitDivisorSumSix f := by
          exact v67_divisor_sum_six_scaling 1 f
    _ = v65ExplicitDivisorSumSix f := by
          simp

theorem v67_divisor_sum_twelve_one_scale
    (f : v33ArithmeticFunction) :
    v65ExplicitDivisorSumTwelve (v34PointwiseScale 1 f) =
      v65ExplicitDivisorSumTwelve f := by
  calc
    v65ExplicitDivisorSumTwelve (v34PointwiseScale 1 f)
        = 1 * v65ExplicitDivisorSumTwelve f := by
          exact v67_divisor_sum_twelve_scaling 1 f
    _ = v65ExplicitDivisorSumTwelve f := by
          simp

def v67DivisorSumScalingPackage : Prop :=
  v67DivisorSumSixScaling ∧
  v67DivisorSumTwelveScaling ∧
  (∀ f : v33ArithmeticFunction,
    v65ExplicitDivisorSumSix (v34PointwiseScale 0 f) = 0) ∧
  (∀ f : v33ArithmeticFunction,
    v65ExplicitDivisorSumTwelve (v34PointwiseScale 0 f) = 0) ∧
  (∀ f : v33ArithmeticFunction,
    v65ExplicitDivisorSumSix (v34PointwiseScale 1 f) =
      v65ExplicitDivisorSumSix f) ∧
  (∀ f : v33ArithmeticFunction,
    v65ExplicitDivisorSumTwelve (v34PointwiseScale 1 f) =
      v65ExplicitDivisorSumTwelve f)

theorem v67_divisor_sum_scaling_package :
    v67DivisorSumScalingPackage := by
  exact ⟨
    v67_divisor_sum_six_scaling_all,
    ⟨
      v67_divisor_sum_twelve_scaling_all,
      ⟨
        v67_divisor_sum_six_zero_scale,
        ⟨
          v67_divisor_sum_twelve_zero_scale,
          ⟨
            v67_divisor_sum_six_one_scale,
            v67_divisor_sum_twelve_one_scale
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v67_divisor_sum_scaling_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
