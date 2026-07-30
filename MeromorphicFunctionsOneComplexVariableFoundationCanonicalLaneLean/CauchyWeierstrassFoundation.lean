import canonicalLaneMathlib.AdmissibleClass

/-!
# Cauchy-Weierstrass Foundation Package
-/

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure CauchyWeierstrassPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  holomorphicFunctionClass : Prop
  cauchyIntegralTheorem : Prop
  weierstrassConvergenceTheorem : Prop
  identityTheorem : Prop

structure CauchyWeierstrassEvidence (C : CauchyWeierstrassPackage) where
  holomorphicFunctionClassClosed : C.holomorphicFunctionClass
  cauchyIntegralTheoremClosed : C.cauchyIntegralTheorem
  weierstrassConvergenceTheoremClosed : C.weierstrassConvergenceTheorem
  identityTheoremClosed : C.identityTheorem

def CauchyWeierstrassClosed (C : CauchyWeierstrassPackage) : Prop :=
  C.holomorphicFunctionClass ∧ C.cauchyIntegralTheorem ∧
  C.weierstrassConvergenceTheorem ∧ C.identityTheorem

theorem cauchy_weierstrass_closed_from_evidence (C : CauchyWeierstrassPackage)
    (E : CauchyWeierstrassEvidence C) : CauchyWeierstrassClosed C := by
  exact And.intro E.holomorphicFunctionClassClosed
    (And.intro E.cauchyIntegralTheoremClosed
      (And.intro E.weierstrassConvergenceTheoremClosed E.identityTheoremClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse