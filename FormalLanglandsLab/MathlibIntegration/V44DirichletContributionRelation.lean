import FormalLanglandsLab.MathlibIntegration.V43DirichletKernelBilinearRegistry

namespace FormalLanglandsLab
namespace MathlibIntegration

def v44ActualDirichletContribution
    (f g : v33ArithmeticFunction)
    (n a b value : Nat) : Prop :=
  v39ActualDirichletSupport n a b ∧
  value = v35DirichletKernelTerm f g a b

def v44ExpectedDirichletContribution
    (f g : v33ArithmeticFunction)
    (n a b value : Nat) : Prop :=
  v39ExpectedDirichletSupport n a b ∧
  value = v35DirichletKernelTerm f g a b

theorem v44_actual_contribution_intro
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (hsupp : v39ActualDirichletSupport n a b) :
    v44ActualDirichletContribution
      f g n a b
      (v35DirichletKernelTerm f g a b) := by
  exact ⟨hsupp, rfl⟩

theorem v44_expected_contribution_intro
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (hsupp : v39ExpectedDirichletSupport n a b) :
    v44ExpectedDirichletContribution
      f g n a b
      (v35DirichletKernelTerm f g a b) := by
  exact ⟨hsupp, rfl⟩

theorem v44_actual_contribution_support
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f g n a b value) :
    v39ActualDirichletSupport n a b := by
  exact h.1

theorem v44_expected_contribution_support
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ExpectedDirichletContribution f g n a b value) :
    v39ExpectedDirichletSupport n a b := by
  exact h.1

theorem v44_actual_contribution_kernel_value
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f g n a b value) :
    value = v35DirichletKernelTerm f g a b := by
  exact h.2

theorem v44_expected_contribution_kernel_value
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ExpectedDirichletContribution f g n a b value) :
    value = v35DirichletKernelTerm f g a b := by
  exact h.2

theorem v44_actual_contribution_evaluates
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f g n a b value) :
    value = f a * g b := by
  calc
    value = v35DirichletKernelTerm f g a b := h.2
    _ = f a * g b := v35_kernel_term_value f g a b

theorem v44_expected_contribution_evaluates
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ExpectedDirichletContribution f g n a b value) :
    value = f a * g b := by
  calc
    value = v35DirichletKernelTerm f g a b := h.2
    _ = f a * g b := v35_kernel_term_value f g a b

theorem v44_actual_contribution_to_expected
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (hn : n ≠ 0)
    (h : v44ActualDirichletContribution f g n a b value) :
    v44ExpectedDirichletContribution f g n a b value := by
  exact ⟨
    v39_actual_support_to_expected_support n a b hn h.1,
    h.2
  ⟩

theorem v44_expected_contribution_to_actual
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (hn : n ≠ 0)
    (h : v44ExpectedDirichletContribution f g n a b value) :
    v44ActualDirichletContribution f g n a b value := by
  exact ⟨
    v39_expected_support_to_actual_support n a b hn h.1,
    h.2
  ⟩

theorem v44_actual_expected_contribution_equivalence
    (f g : v33ArithmeticFunction)
    (n a b value : Nat)
    (hn : n ≠ 0) :
    v44ActualDirichletContribution f g n a b value ↔
      v44ExpectedDirichletContribution f g n a b value := by
  constructor
  · intro h
    exact v44_actual_contribution_to_expected hn h
  · intro h
    exact v44_expected_contribution_to_actual hn h

theorem v44_actual_contribution_swap
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (hn : n ≠ 0)
    (h : v44ActualDirichletContribution f g n a b value) :
    v44ActualDirichletContribution g f n b a value := by
  constructor
  · exact v39_actual_support_swap hn h.1
  · calc
      value = v35DirichletKernelTerm f g a b := h.2
      _ = v35DirichletKernelTerm g f b a :=
        v38_kernel_swap_symmetry f g a b

theorem v44_expected_contribution_swap
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (hn : n ≠ 0)
    (h : v44ExpectedDirichletContribution f g n a b value) :
    v44ExpectedDirichletContribution g f n b a value := by
  constructor
  · exact v39_expected_support_swap hn h.1
  · calc
      value = v35DirichletKernelTerm f g a b := h.2
      _ = v35DirichletKernelTerm g f b a :=
        v38_kernel_swap_symmetry f g a b

theorem v44_actual_zero_left_contribution_value
    {g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution v33ZeroFunction g n a b value) :
    value = 0 := by
  calc
    value = v35DirichletKernelTerm v33ZeroFunction g a b := h.2
    _ = 0 := v40_actual_support_zero_left g h.1

theorem v44_actual_zero_right_contribution_value
    {f : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f v33ZeroFunction n a b value) :
    value = 0 := by
  calc
    value = v35DirichletKernelTerm f v33ZeroFunction a b := h.2
    _ = 0 := v40_actual_support_zero_right f h.1

theorem v44_actual_one_left_contribution_value
    {g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution v33OneFunction g n a b value) :
    value = g b := by
  calc
    value = v35DirichletKernelTerm v33OneFunction g a b := h.2
    _ = g b := v40_actual_support_one_left g h.1

theorem v44_actual_one_right_contribution_value
    {f : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f v33OneFunction n a b value) :
    value = f a := by
  calc
    value = v35DirichletKernelTerm f v33OneFunction a b := h.2
    _ = f a := v40_actual_support_one_right f h.1

def v44DirichletContributionRelationPackage : Prop :=
  (∀ f g : v33ArithmeticFunction,
   ∀ n a b value : Nat,
    v44ActualDirichletContribution f g n a b value →
      value = f a * g b) ∧
  (∀ f g : v33ArithmeticFunction,
   ∀ n a b value : Nat,
    v44ExpectedDirichletContribution f g n a b value →
      value = f a * g b) ∧
  (∀ f g : v33ArithmeticFunction,
   ∀ n a b value : Nat,
    n ≠ 0 →
    v44ActualDirichletContribution f g n a b value →
      v44ActualDirichletContribution g f n b a value)

theorem v44_dirichlet_contribution_relation_package :
    v44DirichletContributionRelationPackage := by
  exact ⟨
    fun f g n a b value h => v44_actual_contribution_evaluates h,
    ⟨
      fun f g n a b value h => v44_expected_contribution_evaluates h,
      fun f g n a b value hn h => v44_actual_contribution_swap hn h
    ⟩
  ⟩

theorem v44_dirichlet_contribution_relation_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
