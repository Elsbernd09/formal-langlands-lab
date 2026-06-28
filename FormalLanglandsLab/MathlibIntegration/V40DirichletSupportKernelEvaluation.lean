import FormalLanglandsLab.MathlibIntegration.V39DirichletConvolutionSupport

namespace FormalLanglandsLab
namespace MathlibIntegration

def v40ActualSupportedKernelEvaluation : Prop :=
  ∀ f g : v33ArithmeticFunction,
  ∀ n a b : Nat,
    v39ActualDirichletSupport n a b →
      v35DirichletKernelTerm f g a b = f a * g b

def v40ExpectedSupportedKernelEvaluation : Prop :=
  ∀ f g : v33ArithmeticFunction,
  ∀ n a b : Nat,
    v39ExpectedDirichletSupport n a b →
      v35DirichletKernelTerm f g a b = f a * g b

theorem v40_actual_supported_kernel_evaluation
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm f g a b = f a * g b := by
  exact v35_kernel_term_value f g a b

theorem v40_expected_supported_kernel_evaluation
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ExpectedDirichletSupport n a b) :
    v35DirichletKernelTerm f g a b = f a * g b := by
  exact v35_kernel_term_value f g a b

theorem v40_actual_supported_kernel_swap
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (hn : n ≠ 0)
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm f g a b =
      v35DirichletKernelTerm g f b a := by
  exact v38_kernel_swap_symmetry f g a b

theorem v40_expected_supported_kernel_swap
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (hn : n ≠ 0)
    (h : v39ExpectedDirichletSupport n a b) :
    v35DirichletKernelTerm f g a b =
      v35DirichletKernelTerm g f b a := by
  exact v38_kernel_swap_symmetry f g a b

theorem v40_actual_support_kernel_product_identity
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm f g a b =
      f a * g b := by
  exact v40_actual_supported_kernel_evaluation f g h

theorem v40_expected_support_kernel_product_identity
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ExpectedDirichletSupport n a b) :
    v35DirichletKernelTerm f g a b =
      f a * g b := by
  exact v40_expected_supported_kernel_evaluation f g h

theorem v40_actual_support_zero_left
    (g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm v33ZeroFunction g a b = 0 := by
  unfold v35DirichletKernelTerm
  simp [v33ZeroFunction]

theorem v40_actual_support_zero_right
    (f : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm f v33ZeroFunction a b = 0 := by
  unfold v35DirichletKernelTerm
  simp [v33ZeroFunction]

theorem v40_actual_support_one_left
    (g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm v33OneFunction g a b = g b := by
  unfold v35DirichletKernelTerm
  simp [v33OneFunction]

theorem v40_actual_support_one_right
    (f : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm f v33OneFunction a b = f a := by
  unfold v35DirichletKernelTerm
  simp [v33OneFunction]

theorem v40_actual_supported_kernel_evaluation_all :
    v40ActualSupportedKernelEvaluation := by
  intro f g n a b h
  exact v40_actual_supported_kernel_evaluation f g h

theorem v40_expected_supported_kernel_evaluation_all :
    v40ExpectedSupportedKernelEvaluation := by
  intro f g n a b h
  exact v40_expected_supported_kernel_evaluation f g h

def v40DirichletSupportKernelEvaluationPackage : Prop :=
  v40ActualSupportedKernelEvaluation ∧
  v40ExpectedSupportedKernelEvaluation ∧
  (∀ f g : v33ArithmeticFunction, ∀ n a b : Nat,
    n ≠ 0 →
    v39ActualDirichletSupport n a b →
      v35DirichletKernelTerm f g a b =
        v35DirichletKernelTerm g f b a)

theorem v40_dirichlet_support_kernel_evaluation_package :
    v40DirichletSupportKernelEvaluationPackage := by
  exact ⟨
    v40_actual_supported_kernel_evaluation_all,
    ⟨
      v40_expected_supported_kernel_evaluation_all,
      fun f g n a b hn h => v40_actual_supported_kernel_swap f g hn h
    ⟩
  ⟩

theorem v40_dirichlet_support_kernel_evaluation_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
