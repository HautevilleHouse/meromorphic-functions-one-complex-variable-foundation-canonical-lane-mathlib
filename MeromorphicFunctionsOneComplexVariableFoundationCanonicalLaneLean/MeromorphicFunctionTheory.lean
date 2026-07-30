import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.CauchyWeierstrassFoundation

/-!
# Meromorphic Function Theory Package
-/

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure MeromorphicFunctionTheoryPackage {C : CauchyWeierstrassPackage} where
  isolatedSingularitiesClassified : Prop
  laurentExpansionExists : Prop
  residueTheoremHolds : Prop
  argumentPrincipleHolds : Prop

structure MeromorphicFunctionTheoryEvidence {C : CauchyWeierstrassPackage}
    (M : MeromorphicFunctionTheoryPackage C) where
  isolatedSingularitiesClassifiedClosed : M.isolatedSingularitiesClassified
  laurentExpansionExistsClosed : M.laurentExpansionExists
  residueTheoremHoldsClosed : M.residueTheoremHolds
  argumentPrincipleHoldsClosed : M.argumentPrincipleHolds

def MeromorphicFunctionTheoryClosed {C : CauchyWeierstrassPackage}
    (M : MeromorphicFunctionTheoryPackage C) : Prop :=
  M.isolatedSingularitiesClassified ∧ M.laurentExpansionExists ∧
  M.residueTheoremHolds ∧ M.argumentPrincipleHolds

theorem meromorphic_function_theory_closed_from_evidence
    {C : CauchyWeierstrassPackage} (M : MeromorphicFunctionTheoryPackage C)
    (E : MeromorphicFunctionTheoryEvidence M) : MeromorphicFunctionTheoryClosed M := by
  exact And.intro E.isolatedSingularitiesClassifiedClosed
    (And.intro E.laurentExpansionExistsClosed
      (And.intro E.residueTheoremHoldsClosed E.argumentPrincipleHoldsClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse