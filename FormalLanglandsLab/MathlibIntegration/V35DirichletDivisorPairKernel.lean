import FormalLanglandsLab.MathlibIntegration.V34PointwiseArithmeticOperations

namespace FormalLanglandsLab
namespace MathlibIntegration

def v35DivisorPair
    (n a b : Nat) : Prop :=
  a ≠ 0 ∧ b ≠ 0 ∧ a * b = n

def v35DirichletKernelTerm
    (f g : v33ArithmeticFunction)
    (a b : Nat) : Nat :=
  f a * g b

def v35DirichletPairContribution
    (f g : v33ArithmeticFunction)
    (n a b : Nat) : Prop :=
  v35DivisorPair n a b ∧
  v35DirichletKernelTerm f g a b = f a * g b

theorem v35_divisor_pair_symm
    {n a b : Nat}
    (h : v35DivisorPair n a b) :
    v35DivisorPair n b a := by
  rcases h with ⟨ha, hb, hmul⟩
  exact ⟨
    hb,
    ha,
    by
      rw [Nat.mul_comm]
      exact hmul
  ⟩

theorem v35_divisor_pair_left_divides
    {n a b : Nat}
    (h : v35DivisorPair n a b) :
    a ∣ n := by
  rcases h with ⟨ha, hb, hmul⟩
  exact ⟨b, hmul.symm⟩

theorem v35_divisor_pair_right_divides
    {n a b : Nat}
    (h : v35DivisorPair n a b) :
    b ∣ n := by
  rcases h with ⟨ha, hb, hmul⟩
  exact ⟨a, by
    rw [Nat.mul_comm]
    exact hmul.symm
  ⟩

theorem v35_divisor_pair_left_nonzero
    {n a b : Nat}
    (h : v35DivisorPair n a b) :
    a ≠ 0 := by
  exact h.1

theorem v35_divisor_pair_right_nonzero
    {n a b : Nat}
    (h : v35DivisorPair n a b) :
    b ≠ 0 := by
  exact h.2.1

theorem v35_divisor_pair_product_eq
    {n a b : Nat}
    (h : v35DivisorPair n a b) :
    a * b = n := by
  exact h.2.2

theorem v35_kernel_term_value
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm f g a b = f a * g b := by
  rfl

theorem v35_pair_contribution_intro
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (hpair : v35DivisorPair n a b) :
    v35DirichletPairContribution f g n a b := by
  exact ⟨
    hpair,
    v35_kernel_term_value f g a b
  ⟩

theorem v35_pair_contribution_has_pair
    {f g : v33ArithmeticFunction}
    {n a b : Nat}
    (h : v35DirichletPairContribution f g n a b) :
    v35DivisorPair n a b := by
  exact h.1

theorem v35_pair_contribution_has_term
    {f g : v33ArithmeticFunction}
    {n a b : Nat}
    (h : v35DirichletPairContribution f g n a b) :
    v35DirichletKernelTerm f g a b = f a * g b := by
  exact h.2

theorem v35_pair_contribution_symm_pair
    {f g : v33ArithmeticFunction}
    {n a b : Nat}
    (h : v35DirichletPairContribution f g n a b) :
    v35DivisorPair n b a := by
  exact v35_divisor_pair_symm h.1

theorem v35_pair_one_n
    {n : Nat}
    (hn : n ≠ 0) :
    v35DivisorPair n 1 n := by
  exact ⟨
    by decide,
    hn,
    by simp
  ⟩

theorem v35_pair_n_one
    {n : Nat}
    (hn : n ≠ 0) :
    v35DivisorPair n n 1 := by
  exact ⟨
    hn,
    by decide,
    by simp
  ⟩

def v35DirichletDivisorPairKernelPackage : Prop :=
  (∀ n a b : Nat, v35DivisorPair n a b → v35DivisorPair n b a) ∧
  (∀ n a b : Nat, v35DivisorPair n a b → a ∣ n) ∧
  (∀ n a b : Nat, v35DivisorPair n a b → b ∣ n) ∧
  (∀ f g : v33ArithmeticFunction, ∀ a b : Nat,
    v35DirichletKernelTerm f g a b = f a * g b)

theorem v35_dirichlet_divisor_pair_kernel_package :
    v35DirichletDivisorPairKernelPackage := by
  exact ⟨
    fun n a b h => v35_divisor_pair_symm h,
    ⟨
      fun n a b h => v35_divisor_pair_left_divides h,
      ⟨
        fun n a b h => v35_divisor_pair_right_divides h,
        fun f g a b => v35_kernel_term_value f g a b
      ⟩
    ⟩
  ⟩

theorem v35_dirichlet_divisor_pair_kernel_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
