import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure AnalyticContinuationPackage where
  germ : Type u
  monodromyTheorem : Prop
  continuationAlongPath : (Set ℂ → ℂ → ℂ) → Prop
  identityTheorem : Prop

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.monodromyTheorem ∧ A.identityTheorem

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  monodromyTheoremClosed : A.monodromyTheorem
  identityTheoremClosed : A.identityTheorem

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.monodromyTheoremClosed E.identityTheoremClosed

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse