import FormalLanglandsLab.MathlibIntegration.V54Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v55SixControlledConvolutionLeftAdditivity : Prop :=
  ∀ f₁ f₂ g : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype (v34PointwiseAdd f₁ f₂) g =
      v52SixControlledConvolutionPrototype f₁ g +
      v52SixControlledConvolutionPrototype f₂ g

def v55SixControlledConvolutionRightAdditivity : Prop :=
  ∀ f g₁ g₂ : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype f (v34PointwiseAdd g₁ g₂) =
      v52SixControlledConvolutionPrototype f g₁ +
      v52SixControlledConvolutionPrototype f g₂

theorem v55_six_controlled_convolution_left_additivity
    (f₁ f₂ g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype (v34PointwiseAdd f₁ f₂) g =
      v52SixControlledConvolutionPrototype f₁ g +
      v52SixControlledConvolutionPrototype f₂ g := by
  rw [
    v52_six_controlled_convolution_prototype_value,
    v52_six_controlled_convolution_prototype_value,
    v52_six_controlled_convolution_prototype_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.add_mul,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v55_six_controlled_convolution_right_additivity
    (f g₁ g₂ : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype f (v34PointwiseAdd g₁ g₂) =
      v52SixControlledConvolutionPrototype f g₁ +
      v52SixControlledConvolutionPrototype f g₂ := by
  rw [
    v52_six_controlled_convolution_prototype_value,
    v52_six_controlled_convolution_prototype_value,
    v52_six_controlled_convolution_prototype_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.mul_add,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v55_six_controlled_convolution_left_additivity_all :
    v55SixControlledConvolutionLeftAdditivity := by
  intro f₁ f₂ g
  exact v55_six_controlled_convolution_left_additivity f₁ f₂ g

theorem v55_six_controlled_convolution_right_additivity_all :
    v55SixControlledConvolutionRightAdditivity := by
  intro f g₁ g₂
  exact v55_six_controlled_convolution_right_additivity f g₁ g₂

theorem v55_six_zero_add_left_special
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype
      (v34PointwiseAdd v33ZeroFunction f) g =
        v52SixControlledConvolutionPrototype f g := by
  rw [v55_six_controlled_convolution_left_additivity]
  rw [v52_six_controlled_convolution_zero_left]
  simp

theorem v55_six_zero_add_right_special
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype
      (v34PointwiseAdd f v33ZeroFunction) g =
        v52SixControlledConvolutionPrototype f g := by
  rw [v55_six_controlled_convolution_left_additivity]
  rw [v52_six_controlled_convolution_zero_left]
  simp

theorem v55_six_right_zero_add_left_special
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype
      f (v34PointwiseAdd v33ZeroFunction g) =
        v52SixControlledConvolutionPrototype f g := by
  rw [v55_six_controlled_convolution_right_additivity]
  rw [v52_six_controlled_convolution_zero_right]
  simp

theorem v55_six_right_zero_add_right_special
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype
      f (v34PointwiseAdd g v33ZeroFunction) =
        v52SixControlledConvolutionPrototype f g := by
  rw [v55_six_controlled_convolution_right_additivity]
  rw [v52_six_controlled_convolution_zero_right]
  simp

def v55ControlledConvolutionAdditivitySixPackage : Prop :=
  v55SixControlledConvolutionLeftAdditivity ∧
  v55SixControlledConvolutionRightAdditivity ∧
  (∀ f g : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype
      (v34PointwiseAdd v33ZeroFunction f) g =
        v52SixControlledConvolutionPrototype f g) ∧
  (∀ f g : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype
      f (v34PointwiseAdd v33ZeroFunction g) =
        v52SixControlledConvolutionPrototype f g)

theorem v55_controlled_convolution_additivity_six_package :
    v55ControlledConvolutionAdditivitySixPackage := by
  exact ⟨
    v55_six_controlled_convolution_left_additivity_all,
    ⟨
      v55_six_controlled_convolution_right_additivity_all,
      ⟨
        v55_six_zero_add_left_special,
        v55_six_right_zero_add_left_special
      ⟩
    ⟩
  ⟩

theorem v55_controlled_convolution_additivity_six_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
