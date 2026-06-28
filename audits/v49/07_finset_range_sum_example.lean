import FormalLanglandsLab.MathlibIntegration.V48Dashboard

example : (Finset.range 4).sum (fun x => x) = 6 := by
  native_decide
