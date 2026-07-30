import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure CauchyTheoryPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : @ComplexManifold domain topology
  contourIntegral : Prop
  cauchyIntegralFormula : Prop
  residueTheorem : Prop
  meromorphicExtension : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  contourIntegralClosed : C.contourIntegral
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  residueTheoremClosed : C.residueTheorem
  meromorphicExtensionClosed : C.meromorphicExtension

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.contourIntegral ∧ C.cauchyIntegralFormula ∧ C.residueTheorem ∧ C.meromorphicExtension

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) :
    CauchyTheoryClosed C := by
  exact And.intro E.contourIntegralClosed (And.intro E.cauchyIntegralFormulaClosed (And.intro E.residueTheoremClosed E.meromorphicExtensionClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse