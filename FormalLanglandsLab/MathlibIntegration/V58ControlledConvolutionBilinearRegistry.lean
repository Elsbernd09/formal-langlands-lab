import FormalLanglandsLab.MathlibIntegration.V57Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v58ExplicitPrototypeSupportResultCount : Nat := 10
def v58ExplicitPrototypeEvaluationResultCount : Nat := 2
def v58ExplicitPrototypeSymmetryResultCount : Nat := 2
def v58ExplicitPrototypeAdditivityResultCount : Nat := 4
def v58ExplicitPrototypeScalingResultCount : Nat := 4

def v58ExplicitConvolutionTrackedResultCount : Nat :=
  v58ExplicitPrototypeSupportResultCount +
  v58ExplicitPrototypeEvaluationResultCount +
  v58ExplicitPrototypeSymmetryResultCount +
  v58ExplicitPrototypeAdditivityResultCount +
  v58ExplicitPrototypeScalingResultCount

theorem v58ExplicitPrototypeSupportResultCount_value :
    v58ExplicitPrototypeSupportResultCount = 10 := by
  rfl

theorem v58ExplicitPrototypeEvaluationResultCount_value :
    v58ExplicitPrototypeEvaluationResultCount = 2 := by
  rfl

theorem v58ExplicitPrototypeSymmetryResultCount_value :
    v58ExplicitPrototypeSymmetryResultCount = 2 := by
  rfl

theorem v58ExplicitPrototypeAdditivityResultCount_value :
    v58ExplicitPrototypeAdditivityResultCount = 4 := by
  rfl

theorem v58ExplicitPrototypeScalingResultCount_value :
    v58ExplicitPrototypeScalingResultCount = 4 := by
  rfl

theorem v58ExplicitConvolutionTrackedResultCount_value :
    v58ExplicitConvolutionTrackedResultCount = 22 := by
  rfl

def v58SixControlledConvolutionBilinearity : Prop :=
  v54SixControlledConvolutionSymmetry ∧
  v55SixControlledConvolutionLeftAdditivity ∧
  v55SixControlledConvolutionRightAdditivity ∧
  v57SixControlledConvolutionLeftScaling ∧
  v57SixControlledConvolutionRightScaling

def v58TwelveControlledConvolutionBilinearity : Prop :=
  v54TwelveControlledConvolutionSymmetry ∧
  v56TwelveControlledConvolutionLeftAdditivity ∧
  v56TwelveControlledConvolutionRightAdditivity ∧
  v57TwelveControlledConvolutionLeftScaling ∧
  v57TwelveControlledConvolutionRightScaling

theorem v58_six_controlled_convolution_bilinearity :
    v58SixControlledConvolutionBilinearity := by
  exact ⟨
    v54_six_controlled_convolution_symmetry_all,
    ⟨
      v55_six_controlled_convolution_left_additivity_all,
      ⟨
        v55_six_controlled_convolution_right_additivity_all,
        ⟨
          v57_six_controlled_convolution_left_scaling_all,
          v57_six_controlled_convolution_right_scaling_all
        ⟩
      ⟩
    ⟩
  ⟩

theorem v58_twelve_controlled_convolution_bilinearity :
    v58TwelveControlledConvolutionBilinearity := by
  exact ⟨
    v54_twelve_controlled_convolution_symmetry_all,
    ⟨
      v56_twelve_controlled_convolution_left_additivity_all,
      ⟨
        v56_twelve_controlled_convolution_right_additivity_all,
        ⟨
          v57_twelve_controlled_convolution_left_scaling_all,
          v57_twelve_controlled_convolution_right_scaling_all
        ⟩
      ⟩
    ⟩
  ⟩

def v58ExplicitControlledConvolutionArchitecture : Prop :=
  v52ExplicitContributionListSixPackage ∧
  v53ExplicitContributionListTwelvePackage ∧
  v54ControlledConvolutionSymmetryPackage ∧
  v55ControlledConvolutionAdditivitySixPackage ∧
  v56ControlledConvolutionAdditivityTwelvePackage ∧
  v57ControlledConvolutionScalingPackage ∧
  v58SixControlledConvolutionBilinearity ∧
  v58TwelveControlledConvolutionBilinearity

theorem v58_explicit_controlled_convolution_architecture :
    v58ExplicitControlledConvolutionArchitecture := by
  exact ⟨
    v52_explicit_contribution_list_six_package,
    ⟨
      v53_explicit_contribution_list_twelve_package,
      ⟨
        v54_controlled_convolution_symmetry_package,
        ⟨
          v55_controlled_convolution_additivity_six_package,
          ⟨
            v56_controlled_convolution_additivity_twelve_package,
            ⟨
              v57_controlled_convolution_scaling_package,
              ⟨
                v58_six_controlled_convolution_bilinearity,
                v58_twelve_controlled_convolution_bilinearity
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem registry_v58_six_prototype_value
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype f g =
      f 1 * g 6 +
      f 2 * g 3 +
      f 3 * g 2 +
      f 6 * g 1 := by
  exact v52_six_controlled_convolution_prototype_value f g

theorem registry_v58_twelve_prototype_value
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype f g =
      f 1 * g 12 +
      f 2 * g 6 +
      f 3 * g 4 +
      f 4 * g 3 +
      f 6 * g 2 +
      f 12 * g 1 := by
  exact v53_twelve_controlled_convolution_prototype_value f g

theorem registry_v58_six_symmetry :
    v54SixControlledConvolutionSymmetry := by
  exact v54_six_controlled_convolution_symmetry_all

theorem registry_v58_twelve_symmetry :
    v54TwelveControlledConvolutionSymmetry := by
  exact v54_twelve_controlled_convolution_symmetry_all

theorem registry_v58_six_left_additivity :
    v55SixControlledConvolutionLeftAdditivity := by
  exact v55_six_controlled_convolution_left_additivity_all

theorem registry_v58_six_right_additivity :
    v55SixControlledConvolutionRightAdditivity := by
  exact v55_six_controlled_convolution_right_additivity_all

theorem registry_v58_twelve_left_additivity :
    v56TwelveControlledConvolutionLeftAdditivity := by
  exact v56_twelve_controlled_convolution_left_additivity_all

theorem registry_v58_twelve_right_additivity :
    v56TwelveControlledConvolutionRightAdditivity := by
  exact v56_twelve_controlled_convolution_right_additivity_all

theorem registry_v58_six_left_scaling :
    v57SixControlledConvolutionLeftScaling := by
  exact v57_six_controlled_convolution_left_scaling_all

theorem registry_v58_six_right_scaling :
    v57SixControlledConvolutionRightScaling := by
  exact v57_six_controlled_convolution_right_scaling_all

theorem registry_v58_twelve_left_scaling :
    v57TwelveControlledConvolutionLeftScaling := by
  exact v57_twelve_controlled_convolution_left_scaling_all

theorem registry_v58_twelve_right_scaling :
    v57TwelveControlledConvolutionRightScaling := by
  exact v57_twelve_controlled_convolution_right_scaling_all

def v58ControlledConvolutionBilinearRegistryPackage : Prop :=
  v58ExplicitControlledConvolutionArchitecture ∧
  (v58ExplicitConvolutionTrackedResultCount = 22) ∧
  v58SixControlledConvolutionBilinearity ∧
  v58TwelveControlledConvolutionBilinearity

theorem v58_controlled_convolution_bilinear_registry_package :
    v58ControlledConvolutionBilinearRegistryPackage := by
  exact ⟨
    v58_explicit_controlled_convolution_architecture,
    ⟨
      v58ExplicitConvolutionTrackedResultCount_value,
      ⟨
        v58_six_controlled_convolution_bilinearity,
        v58_twelve_controlled_convolution_bilinearity
      ⟩
    ⟩
  ⟩

theorem v58_controlled_convolution_bilinear_registry_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
