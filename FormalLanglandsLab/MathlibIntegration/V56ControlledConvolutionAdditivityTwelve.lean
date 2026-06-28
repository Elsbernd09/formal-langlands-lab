import FormalLanglandsLab.MathlibIntegration.V55Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v56TwelveControlledConvolutionLeftAdditivity : Prop :=
  ∀ f₁ f₂ g : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype (v34PointwiseAdd f₁ f₂) g =
      v53TwelveControlledConvolutionPrototype f₁ g +
      v53TwelveControlledConvolutionPrototype f₂ g

def v56TwelveControlledConvolutionRightAdditivity : Prop :=
  ∀ f g₁ g₂ : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype f (v34PointwiseAdd g₁ g₂) =
      v53TwelveControlledConvolutionPrototype f g₁ +
      v53TwelveControlledConvolutionPrototype f g₂

theorem v56_twelve_controlled_convolution_left_additivity
    (f₁ f₂ g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype (v34PointwiseAdd f₁ f₂) g =
      v53TwelveControlledConvolutionPrototype f₁ g +
      v53TwelveControlledConvolutionPrototype f₂ g := by
  rw [
    v53_twelve_controlled_convolution_prototype_value,
    v53_twelve_controlled_convolution_prototype_value,
    v53_twelve_controlled_convolution_prototype_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.add_mul,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v56_twelve_controlled_convolution_right_additivity
    (f g₁ g₂ : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype f (v34PointwiseAdd g₁ g₂) =
      v53TwelveControlledConvolutionPrototype f g₁ +
      v53TwelveControlledConvolutionPrototype f g₂ := by
  rw [
    v53_twelve_controlled_convolution_prototype_value,
    v53_twelve_controlled_convolution_prototype_value,
    v53_twelve_controlled_convolution_prototype_value
  ]
  simp [
    v34PointwiseAdd,
    Nat.mul_add,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v56_twelve_controlled_convolution_left_additivity_all :
    v56TwelveControlledConvolutionLeftAdditivity := by
  intro f₁ f₂ g
  exact v56_twelve_controlled_convolution_left_additivity f₁ f₂ g

theorem v56_twelve_controlled_convolution_right_additivity_all :
    v56TwelveControlledConvolutionRightAdditivity := by
  intro f g₁ g₂
  exact v56_twelve_controlled_convolution_right_additivity f g₁ g₂

theorem v56_twelve_zero_add_left_special
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype
      (v34PointwiseAdd v33ZeroFunction f) g =
        v53TwelveControlledConvolutionPrototype f g := by
  rw [v56_twelve_controlled_convolution_left_additivity]
  rw [v53_twelve_controlled_convolution_zero_left]
  simp

theorem v56_twelve_zero_add_right_special
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype
      (v34PointwiseAdd f v33ZeroFunction) g =
        v53TwelveControlledConvolutionPrototype f g := by
  rw [v56_twelve_controlled_convolution_left_additivity]
  rw [v53_twelve_controlled_convolution_zero_left]
  simp

theorem v56_twelve_right_zero_add_left_special
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype
      f (v34PointwiseAdd v33ZeroFunction g) =
        v53TwelveControlledConvolutionPrototype f g := by
  rw [v56_twelve_controlled_convolution_right_additivity]
  rw [v53_twelve_controlled_convolution_zero_right]
  simp

theorem v56_twelve_right_zero_add_right_special
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype
      f (v34PointwiseAdd g v33ZeroFunction) =
        v53TwelveControlledConvolutionPrototype f g := by
  rw [v56_twelve_controlled_convolution_right_additivity]
  rw [v53_twelve_controlled_convolution_zero_right]
  simp

def v56ControlledConvolutionAdditivityTwelvePackage : Prop :=
  v56TwelveControlledConvolutionLeftAdditivity ∧
  v56TwelveControlledConvolutionRightAdditivity ∧
  (∀ f g : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype
      (v34PointwiseAdd v33ZeroFunction f) g =
        v53TwelveControlledConvolutionPrototype f g) ∧
  (∀ f g : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype
      f (v34PointwiseAdd v33ZeroFunction g) =
        v53TwelveControlledConvolutionPrototype f g)

theorem v56_controlled_convolution_additivity_twelve_package :
    v56ControlledConvolutionAdditivityTwelvePackage := by
  exact ⟨
    v56_twelve_controlled_convolution_left_additivity_all,
    ⟨
      v56_twelve_controlled_convolution_right_additivity_all,
      ⟨
        v56_twelve_zero_add_left_special,
        v56_twelve_right_zero_add_left_special
      ⟩
    ⟩
  ⟩

theorem v56_controlled_convolution_additivity_twelve_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
