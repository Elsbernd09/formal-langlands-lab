import FormalLanglandsLab.MathlibIntegration.V53Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v54SixControlledConvolutionSymmetry : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype f g =
      v52SixControlledConvolutionPrototype g f

def v54TwelveControlledConvolutionSymmetry : Prop :=
  ∀ f g : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype f g =
      v53TwelveControlledConvolutionPrototype g f

theorem v54_six_controlled_convolution_symmetry
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype f g =
      v52SixControlledConvolutionPrototype g f := by
  rw [
    v52_six_controlled_convolution_prototype_value,
    v52_six_controlled_convolution_prototype_value
  ]
  simp [Nat.mul_comm, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]

theorem v54_twelve_controlled_convolution_symmetry
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype f g =
      v53TwelveControlledConvolutionPrototype g f := by
  rw [
    v53_twelve_controlled_convolution_prototype_value,
    v53_twelve_controlled_convolution_prototype_value
  ]
  simp [Nat.mul_comm, Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]

theorem v54_six_controlled_convolution_symmetry_all :
    v54SixControlledConvolutionSymmetry := by
  intro f g
  exact v54_six_controlled_convolution_symmetry f g

theorem v54_twelve_controlled_convolution_symmetry_all :
    v54TwelveControlledConvolutionSymmetry := by
  intro f g
  exact v54_twelve_controlled_convolution_symmetry f g

theorem v54_six_zero_left_right_agreement
    (f : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype v33ZeroFunction f =
      v52SixControlledConvolutionPrototype f v33ZeroFunction := by
  rw [
    v52_six_controlled_convolution_zero_left,
    v52_six_controlled_convolution_zero_right
  ]

theorem v54_twelve_zero_left_right_agreement
    (f : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype v33ZeroFunction f =
      v53TwelveControlledConvolutionPrototype f v33ZeroFunction := by
  rw [
    v53_twelve_controlled_convolution_zero_left,
    v53_twelve_controlled_convolution_zero_right
  ]

theorem v54_six_one_symmetry_special_case
    (f : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype v33OneFunction f =
      v52SixControlledConvolutionPrototype f v33OneFunction := by
  exact v54_six_controlled_convolution_symmetry v33OneFunction f

theorem v54_twelve_one_symmetry_special_case
    (f : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype v33OneFunction f =
      v53TwelveControlledConvolutionPrototype f v33OneFunction := by
  exact v54_twelve_controlled_convolution_symmetry v33OneFunction f

def v54ControlledConvolutionSymmetryPackage : Prop :=
  v54SixControlledConvolutionSymmetry ∧
  v54TwelveControlledConvolutionSymmetry ∧
  (∀ f : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype v33ZeroFunction f =
      v52SixControlledConvolutionPrototype f v33ZeroFunction) ∧
  (∀ f : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype v33ZeroFunction f =
      v53TwelveControlledConvolutionPrototype f v33ZeroFunction)

theorem v54_controlled_convolution_symmetry_package :
    v54ControlledConvolutionSymmetryPackage := by
  exact ⟨
    v54_six_controlled_convolution_symmetry_all,
    ⟨
      v54_twelve_controlled_convolution_symmetry_all,
      ⟨
        v54_six_zero_left_right_agreement,
        v54_twelve_zero_left_right_agreement
      ⟩
    ⟩
  ⟩

theorem v54_controlled_convolution_symmetry_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
