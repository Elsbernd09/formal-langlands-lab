import FormalLanglandsLab.MathlibIntegration.V42DirichletKernelScaling

namespace FormalLanglandsLab
namespace MathlibIntegration

def v43KernelAdditivityResultCount : Nat := 2
def v43KernelScalingResultCount : Nat := 2
def v43KernelSupportCompatibilityResultCount : Nat := 4
def v43KernelSpecialCaseResultCount : Nat := 4

def v43KernelBilinearTrackedResultCount : Nat :=
  v43KernelAdditivityResultCount +
  v43KernelScalingResultCount +
  v43KernelSupportCompatibilityResultCount +
  v43KernelSpecialCaseResultCount

theorem v43KernelAdditivityResultCount_value :
    v43KernelAdditivityResultCount = 2 := by
  rfl

theorem v43KernelScalingResultCount_value :
    v43KernelScalingResultCount = 2 := by
  rfl

theorem v43KernelSupportCompatibilityResultCount_value :
    v43KernelSupportCompatibilityResultCount = 4 := by
  rfl

theorem v43KernelSpecialCaseResultCount_value :
    v43KernelSpecialCaseResultCount = 4 := by
  rfl

theorem v43KernelBilinearTrackedResultCount_value :
    v43KernelBilinearTrackedResultCount = 12 := by
  rfl

def v43DirichletKernelBilinearity : Prop :=
  v41KernelLeftAdditivity ∧
  v41KernelRightAdditivity ∧
  v42KernelLeftScaling ∧
  v42KernelRightScaling

theorem v43_kernel_bilinearity :
    v43DirichletKernelBilinearity := by
  exact ⟨
    v41_kernel_left_additivity_all,
    ⟨
      v41_kernel_right_additivity_all,
      ⟨
        v42_kernel_left_scaling_all,
        v42_kernel_right_scaling_all
      ⟩
    ⟩
  ⟩

theorem registry_v43_kernel_left_additivity :
    v41KernelLeftAdditivity := by
  exact v41_kernel_left_additivity_all

theorem registry_v43_kernel_right_additivity :
    v41KernelRightAdditivity := by
  exact v41_kernel_right_additivity_all

theorem registry_v43_kernel_left_scaling :
    v42KernelLeftScaling := by
  exact v42_kernel_left_scaling_all

theorem registry_v43_kernel_right_scaling :
    v42KernelRightScaling := by
  exact v42_kernel_right_scaling_all

theorem registry_v43_supported_left_additivity_actual
    (f₁ f₂ g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm (v34PointwiseAdd f₁ f₂) g a b =
      v35DirichletKernelTerm f₁ g a b +
      v35DirichletKernelTerm f₂ g a b := by
  exact v41_supported_kernel_left_additivity_actual f₁ f₂ g h

theorem registry_v43_supported_right_additivity_actual
    (f g₁ g₂ : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm f (v34PointwiseAdd g₁ g₂) a b =
      v35DirichletKernelTerm f g₁ a b +
      v35DirichletKernelTerm f g₂ a b := by
  exact v41_supported_kernel_right_additivity_actual f g₁ g₂ h

theorem registry_v43_supported_left_scaling_actual
    (c : Nat)
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm (v34PointwiseScale c f) g a b =
      c * v35DirichletKernelTerm f g a b := by
  exact v42_supported_kernel_left_scaling_actual c f g h

theorem registry_v43_supported_right_scaling_actual
    (c : Nat)
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm f (v34PointwiseScale c g) a b =
      c * v35DirichletKernelTerm f g a b := by
  exact v42_supported_kernel_right_scaling_actual c f g h

theorem registry_v43_kernel_zero_scale_left
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm (v34PointwiseScale 0 f) g a b = 0 := by
  exact v42_kernel_zero_scale_left f g a b

theorem registry_v43_kernel_zero_scale_right
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm f (v34PointwiseScale 0 g) a b = 0 := by
  exact v42_kernel_zero_scale_right f g a b

theorem registry_v43_kernel_one_scale_left
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm (v34PointwiseScale 1 f) g a b =
      v35DirichletKernelTerm f g a b := by
  exact v42_kernel_one_scale_left f g a b

theorem registry_v43_kernel_one_scale_right
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm f (v34PointwiseScale 1 g) a b =
      v35DirichletKernelTerm f g a b := by
  exact v42_kernel_one_scale_right f g a b

def v43DirichletKernelBilinearRegistryPackage : Prop :=
  v43DirichletKernelBilinearity ∧
  v41DirichletKernelAdditivityPackage ∧
  v42DirichletKernelScalingPackage ∧
  (v43KernelBilinearTrackedResultCount = 12)

theorem v43_dirichlet_kernel_bilinear_registry_package :
    v43DirichletKernelBilinearRegistryPackage := by
  exact ⟨
    v43_kernel_bilinearity,
    ⟨
      v41_dirichlet_kernel_additivity_package,
      ⟨
        v42_dirichlet_kernel_scaling_package,
        v43KernelBilinearTrackedResultCount_value
      ⟩
    ⟩
  ⟩

theorem v43_dirichlet_kernel_bilinear_registry_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
