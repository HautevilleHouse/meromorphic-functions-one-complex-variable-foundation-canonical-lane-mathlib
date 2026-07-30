import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.RiemannMappingPicard

/-!
# Analytic Continuation and Sheaf Theory Package
-/

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure AnalyticContinuationPackage {C : CauchyWeierstrassPackage}
    {M : MeromorphicFunctionTheoryPackage C} {R : RiemannMappingPicardPackage M} where
  analyticContinuationUnique : Prop
  monodromyTheorem : Prop
  sheafOfHolomorphicFunctions : Prop
  riemannSurfaceConstructed : Prop

structure AnalyticContinuationEvidence {C : CauchyWeierstrassPackage}
    {M : MeromorphicFunctionTheoryPackage C} {R : RiemannMappingPicardPackage M}
    (A : AnalyticContinuationPackage R) where
  analyticContinuationUniqueClosed : A.analyticContinuationUnique
  monodromyTheoremClosed : A.monodromyTheorem
  sheafOfHolomorphicFunctionsClosed : A.sheafOfHolomorphicFunctions
  riemannSurfaceConstructedClosed : A.riemannSurfaceConstructed

def AnalyticContinuationClosed {C : CauchyWeierstrassPackage}
    {M : MeromorphicFunctionTheoryPackage C} {R : RiemannMappingPicardPackage M}
    (A : AnalyticContinuationPackage R) : Prop :=
  A.analyticContinuationUnique ∧ A.monodromyTheorem ∧
  A.sheafOfHolomorphicFunctions ∧ A.riemannSurfaceConstructed

theorem analytic_continuation_closed_from_evidence
    {C : CauchyWeierstrassPackage} {M : MeromorphicFunctionTheoryPackage C}
    {R : RiemannMappingPicardPackage M} (A : AnalyticContinuationPackage R)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.analyticContinuationUniqueClosed
    (And.intro E.monodromyTheoremClosed
      (And.intro E.sheafOfHolomorphicFunctionsClosed E.riemannSurfaceConstructedClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse