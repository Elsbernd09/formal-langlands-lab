import FormalLanglandsLab.MathlibIntegration.V48Dashboard

example : ({1, 2, 3} : Finset Nat).sum (fun x => x) = 6 := by
  native_decide
