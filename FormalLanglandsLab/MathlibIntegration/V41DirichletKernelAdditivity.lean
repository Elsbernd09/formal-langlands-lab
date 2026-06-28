import FormalLanglandsLab.MathlibIntegration.V40DirichletSupportKernelEvaluation

namespace FormalLanglandsLab
namespace MathlibIntegration

def v41KernelLeftAdditivity : Prop :=
  ∀ f₁ f₂ g : v33ArithmeticFunction,
  ∀ a b : Nat,
    v35DirichletKernelTerm (v34PointwiseAdd f₁ f₂) g a b =
      v35DirichletKernelTerm f₁ g a b +
      v35DirichletKernelTerm f₂ g a b

def v41KernelRightAdditivity : Prop :=
  ∀ f g₁ g₂ : v33ArithmeticFunction,
  ∀ a b : Nat,
    v35DirichletKernelTerm f (v34PointwiseAdd g₁ g₂) a b =
      v35DirichletKernelTerm f g₁ a b +
      v35DirichletKernelTerm f g₂ a b

theorem v41_kernel_left_additivity
    (f₁ f₂ g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm (v34PointwiseAdd f₁ f₂) g a b =
      v35DirichletKernelTerm f₁ g a b +
      v35DirichletKernelTerm f₂ g a b := by
  unfold v35DirichletKernelTerm
  unfold v34PointwiseAdd
  rw [Nat.add_mul]

theorem v41_kernel_right_additivity
    (f g₁ g₂ : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm f (v34PointwiseAdd g₁ g₂) a b =
      v35DirichletKernelTerm f g₁ a b +
      v35DirichletKernelTerm f g₂ a b := by
  unfold v35DirichletKernelTerm
  unfold v34PointwiseAdd
  rw [Nat.mul_add]

theorem v41_supported_kernel_left_additivity_actual
    (f₁ f₂ g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm (v34PointwiseAdd f₁ f₂) g a b =
      v35DirichletKernelTerm f₁ g a b +
      v35DirichletKernelTerm f₂ g a b := by
  exact v41_kernel_left_additivity f₁ f₂ g a b

theorem v41_supported_kernel_right_additivity_actual
    (f g₁ g₂ : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm f (v34PointwiseAdd g₁ g₂) a b =
      v35DirichletKernelTerm f g₁ a b +
      v35DirichletKernelTerm f g₂ a b := by
  exact v41_kernel_right_additivity f g₁ g₂ a b

theorem v41_supported_kernel_left_additivity_expected
    (f₁ f₂ g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ExpectedDirichletSupport n a b) :
    v35DirichletKernelTerm (v34PointwiseAdd f₁ f₂) g a b =
      v35DirichletKernelTerm f₁ g a b +
      v35DirichletKernelTerm f₂ g a b := by
  exact v41_kernel_left_additivity f₁ f₂ g a b

theorem v41_supported_kernel_right_additivity_expected
    (f g₁ g₂ : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ExpectedDirichletSupport n a b) :
    v35DirichletKernelTerm f (v34PointwiseAdd g₁ g₂) a b =
      v35DirichletKernelTerm f g₁ a b +
      v35DirichletKernelTerm f g₂ a b := by
  exact v41_kernel_right_additivity f g₁ g₂ a b

theorem v41_kernel_left_additivity_all :
    v41KernelLeftAdditivity := by
  intro f₁ f₂ g a b
  exact v41_kernel_left_additivity f₁ f₂ g a b

theorem v41_kernel_right_additivity_all :
    v41KernelRightAdditivity := by
  intro f g₁ g₂ a b
  exact v41_kernel_right_additivity f g₁ g₂ a b

def v41DirichletKernelAdditivityPackage : Prop :=
  v41KernelLeftAdditivity ∧
  v41KernelRightAdditivity ∧
  (∀ f₁ f₂ g : v33ArithmeticFunction,
    ∀ n a b : Nat,
      v39ActualDirichletSupport n a b →
        v35DirichletKernelTerm (v34PointwiseAdd f₁ f₂) g a b =
          v35DirichletKernelTerm f₁ g a b +
          v35DirichletKernelTerm f₂ g a b) ∧
  (∀ f g₁ g₂ : v33ArithmeticFunction,
    ∀ n a b : Nat,
      v39ActualDirichletSupport n a b →
        v35DirichletKernelTerm f (v34PointwiseAdd g₁ g₂) a b =
          v35DirichletKernelTerm f g₁ a b +
          v35DirichletKernelTerm f g₂ a b)

theorem v41_dirichlet_kernel_additivity_package :
    v41DirichletKernelAdditivityPackage := by
  exact ⟨
    v41_kernel_left_additivity_all,
    ⟨
      v41_kernel_right_additivity_all,
      ⟨
        fun f₁ f₂ g n a b h =>
          v41_supported_kernel_left_additivity_actual f₁ f₂ g h,
        fun f g₁ g₂ n a b h =>
          v41_supported_kernel_right_additivity_actual f g₁ g₂ h
      ⟩
    ⟩
  ⟩

theorem v41_dirichlet_kernel_additivity_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
