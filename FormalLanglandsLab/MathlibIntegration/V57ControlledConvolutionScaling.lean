import FormalLanglandsLab.MathlibIntegration.V56Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v57SixControlledConvolutionLeftScaling : Prop :=
  ∀ c : Nat,
  ∀ f g : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype (v34PointwiseScale c f) g =
      c * v52SixControlledConvolutionPrototype f g

def v57SixControlledConvolutionRightScaling : Prop :=
  ∀ c : Nat,
  ∀ f g : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype f (v34PointwiseScale c g) =
      c * v52SixControlledConvolutionPrototype f g

def v57TwelveControlledConvolutionLeftScaling : Prop :=
  ∀ c : Nat,
  ∀ f g : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype (v34PointwiseScale c f) g =
      c * v53TwelveControlledConvolutionPrototype f g

def v57TwelveControlledConvolutionRightScaling : Prop :=
  ∀ c : Nat,
  ∀ f g : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype f (v34PointwiseScale c g) =
      c * v53TwelveControlledConvolutionPrototype f g

theorem v57_six_controlled_convolution_left_scaling
    (c : Nat)
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype (v34PointwiseScale c f) g =
      c * v52SixControlledConvolutionPrototype f g := by
  rw [
    v52_six_controlled_convolution_prototype_value,
    v52_six_controlled_convolution_prototype_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v57_six_controlled_convolution_right_scaling
    (c : Nat)
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype f (v34PointwiseScale c g) =
      c * v52SixControlledConvolutionPrototype f g := by
  rw [
    v52_six_controlled_convolution_prototype_value,
    v52_six_controlled_convolution_prototype_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.mul_comm,
    Nat.mul_left_comm,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v57_twelve_controlled_convolution_left_scaling
    (c : Nat)
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype (v34PointwiseScale c f) g =
      c * v53TwelveControlledConvolutionPrototype f g := by
  rw [
    v53_twelve_controlled_convolution_prototype_value,
    v53_twelve_controlled_convolution_prototype_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v57_twelve_controlled_convolution_right_scaling
    (c : Nat)
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype f (v34PointwiseScale c g) =
      c * v53TwelveControlledConvolutionPrototype f g := by
  rw [
    v53_twelve_controlled_convolution_prototype_value,
    v53_twelve_controlled_convolution_prototype_value
  ]
  simp [
    v34PointwiseScale,
    Nat.mul_add,
    Nat.mul_assoc,
    Nat.mul_comm,
    Nat.mul_left_comm,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v57_six_controlled_convolution_left_scaling_all :
    v57SixControlledConvolutionLeftScaling := by
  intro c f g
  exact v57_six_controlled_convolution_left_scaling c f g

theorem v57_six_controlled_convolution_right_scaling_all :
    v57SixControlledConvolutionRightScaling := by
  intro c f g
  exact v57_six_controlled_convolution_right_scaling c f g

theorem v57_twelve_controlled_convolution_left_scaling_all :
    v57TwelveControlledConvolutionLeftScaling := by
  intro c f g
  exact v57_twelve_controlled_convolution_left_scaling c f g

theorem v57_twelve_controlled_convolution_right_scaling_all :
    v57TwelveControlledConvolutionRightScaling := by
  intro c f g
  exact v57_twelve_controlled_convolution_right_scaling c f g

theorem v57_six_zero_scale_left
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype (v34PointwiseScale 0 f) g = 0 := by
  rw [v57_six_controlled_convolution_left_scaling]
  simp

theorem v57_six_zero_scale_right
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype f (v34PointwiseScale 0 g) = 0 := by
  rw [v57_six_controlled_convolution_right_scaling]
  simp

theorem v57_twelve_zero_scale_left
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype (v34PointwiseScale 0 f) g = 0 := by
  rw [v57_twelve_controlled_convolution_left_scaling]
  simp

theorem v57_twelve_zero_scale_right
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype f (v34PointwiseScale 0 g) = 0 := by
  rw [v57_twelve_controlled_convolution_right_scaling]
  simp

theorem v57_six_one_scale_left
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype (v34PointwiseScale 1 f) g =
      v52SixControlledConvolutionPrototype f g := by
  rw [v57_six_controlled_convolution_left_scaling]
  simp

theorem v57_six_one_scale_right
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype f (v34PointwiseScale 1 g) =
      v52SixControlledConvolutionPrototype f g := by
  rw [v57_six_controlled_convolution_right_scaling]
  simp

theorem v57_twelve_one_scale_left
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype (v34PointwiseScale 1 f) g =
      v53TwelveControlledConvolutionPrototype f g := by
  rw [v57_twelve_controlled_convolution_left_scaling]
  simp

theorem v57_twelve_one_scale_right
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype f (v34PointwiseScale 1 g) =
      v53TwelveControlledConvolutionPrototype f g := by
  rw [v57_twelve_controlled_convolution_right_scaling]
  simp

def v57ControlledConvolutionScalingPackage : Prop :=
  v57SixControlledConvolutionLeftScaling ∧
  v57SixControlledConvolutionRightScaling ∧
  v57TwelveControlledConvolutionLeftScaling ∧
  v57TwelveControlledConvolutionRightScaling ∧
  (∀ f g : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype (v34PointwiseScale 0 f) g = 0) ∧
  (∀ f g : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype (v34PointwiseScale 0 f) g = 0)

theorem v57_controlled_convolution_scaling_package :
    v57ControlledConvolutionScalingPackage := by
  exact ⟨
    v57_six_controlled_convolution_left_scaling_all,
    ⟨
      v57_six_controlled_convolution_right_scaling_all,
      ⟨
        v57_twelve_controlled_convolution_left_scaling_all,
        ⟨
          v57_twelve_controlled_convolution_right_scaling_all,
          ⟨
            v57_six_zero_scale_left,
            v57_twelve_zero_scale_left
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v57_controlled_convolution_scaling_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
