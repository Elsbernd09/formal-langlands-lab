import FormalLanglandsLab.MathlibIntegration.V41DirichletKernelAdditivity

namespace FormalLanglandsLab
namespace MathlibIntegration

def v42KernelLeftScaling : Prop :=
  ∀ c : Nat,
  ∀ f g : v33ArithmeticFunction,
  ∀ a b : Nat,
    v35DirichletKernelTerm (v34PointwiseScale c f) g a b =
      c * v35DirichletKernelTerm f g a b

def v42KernelRightScaling : Prop :=
  ∀ c : Nat,
  ∀ f g : v33ArithmeticFunction,
  ∀ a b : Nat,
    v35DirichletKernelTerm f (v34PointwiseScale c g) a b =
      c * v35DirichletKernelTerm f g a b

theorem v42_kernel_left_scaling
    (c : Nat)
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm (v34PointwiseScale c f) g a b =
      c * v35DirichletKernelTerm f g a b := by
  unfold v35DirichletKernelTerm
  unfold v34PointwiseScale
  rw [Nat.mul_assoc]

theorem v42_kernel_right_scaling
    (c : Nat)
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm f (v34PointwiseScale c g) a b =
      c * v35DirichletKernelTerm f g a b := by
  unfold v35DirichletKernelTerm
  unfold v34PointwiseScale
  simp [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm]

theorem v42_supported_kernel_left_scaling_actual
    (c : Nat)
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm (v34PointwiseScale c f) g a b =
      c * v35DirichletKernelTerm f g a b := by
  exact v42_kernel_left_scaling c f g a b

theorem v42_supported_kernel_right_scaling_actual
    (c : Nat)
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ActualDirichletSupport n a b) :
    v35DirichletKernelTerm f (v34PointwiseScale c g) a b =
      c * v35DirichletKernelTerm f g a b := by
  exact v42_kernel_right_scaling c f g a b

theorem v42_supported_kernel_left_scaling_expected
    (c : Nat)
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ExpectedDirichletSupport n a b) :
    v35DirichletKernelTerm (v34PointwiseScale c f) g a b =
      c * v35DirichletKernelTerm f g a b := by
  exact v42_kernel_left_scaling c f g a b

theorem v42_supported_kernel_right_scaling_expected
    (c : Nat)
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (h : v39ExpectedDirichletSupport n a b) :
    v35DirichletKernelTerm f (v34PointwiseScale c g) a b =
      c * v35DirichletKernelTerm f g a b := by
  exact v42_kernel_right_scaling c f g a b

theorem v42_kernel_zero_scale_left
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm (v34PointwiseScale 0 f) g a b = 0 := by
  unfold v35DirichletKernelTerm
  unfold v34PointwiseScale
  simp

theorem v42_kernel_zero_scale_right
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm f (v34PointwiseScale 0 g) a b = 0 := by
  unfold v35DirichletKernelTerm
  unfold v34PointwiseScale
  simp

theorem v42_kernel_one_scale_left
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm (v34PointwiseScale 1 f) g a b =
      v35DirichletKernelTerm f g a b := by
  unfold v35DirichletKernelTerm
  unfold v34PointwiseScale
  simp

theorem v42_kernel_one_scale_right
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v35DirichletKernelTerm f (v34PointwiseScale 1 g) a b =
      v35DirichletKernelTerm f g a b := by
  unfold v35DirichletKernelTerm
  unfold v34PointwiseScale
  simp

theorem v42_kernel_left_scaling_all :
    v42KernelLeftScaling := by
  intro c f g a b
  exact v42_kernel_left_scaling c f g a b

theorem v42_kernel_right_scaling_all :
    v42KernelRightScaling := by
  intro c f g a b
  exact v42_kernel_right_scaling c f g a b

def v42DirichletKernelScalingPackage : Prop :=
  v42KernelLeftScaling ∧
  v42KernelRightScaling ∧
  (∀ c : Nat,
   ∀ f g : v33ArithmeticFunction,
   ∀ n a b : Nat,
    v39ActualDirichletSupport n a b →
      v35DirichletKernelTerm (v34PointwiseScale c f) g a b =
        c * v35DirichletKernelTerm f g a b) ∧
  (∀ c : Nat,
   ∀ f g : v33ArithmeticFunction,
   ∀ n a b : Nat,
    v39ActualDirichletSupport n a b →
      v35DirichletKernelTerm f (v34PointwiseScale c g) a b =
        c * v35DirichletKernelTerm f g a b)

theorem v42_dirichlet_kernel_scaling_package :
    v42DirichletKernelScalingPackage := by
  exact ⟨
    v42_kernel_left_scaling_all,
    ⟨
      v42_kernel_right_scaling_all,
      ⟨
        fun c f g n a b h =>
          v42_supported_kernel_left_scaling_actual c f g h,
        fun c f g n a b h =>
          v42_supported_kernel_right_scaling_actual c f g h
      ⟩
    ⟩
  ⟩

theorem v42_dirichlet_kernel_scaling_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
