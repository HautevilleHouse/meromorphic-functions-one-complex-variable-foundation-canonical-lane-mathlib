import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.ComplexAnalysisFoundation

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure ResidueTheoryPackage (F : ComplexAnalysisFoundation) where
  residueTheorem : Prop
  argumentPrinciple : Prop
  roucheTheorem : Prop
  partialFractionsDecomposition : Prop

structure ResidueTheoryEvidence {F : ComplexAnalysisFoundation}
    (R : ResidueTheoryPackage F) where
  residueTheoremClosed : R.residueTheorem
  argumentPrincipleClosed : R.argumentPrinciple
  roucheTheoremClosed : R.roucheTheorem
  partialFractionsDecompositionClosed : R.partialFractionsDecomposition

def ResidueTheoryClosed {F : ComplexAnalysisFoundation}
    (R : ResidueTheoryPackage F) : Prop :=
  R.residueTheorem ∧ R.argumentPrinciple ∧ R.roucheTheorem ∧ R.partialFractionsDecomposition

theorem residue_theory_closed_from_evidence
    {F : ComplexAnalysisFoundation} (R : ResidueTheoryPackage F)
    (E : ResidueTheoryEvidence R) : ResidueTheoryClosed R := by
  exact And.intro E.residueTheoremClosed
    (And.intro E.argumentPrincipleClosed
      (And.intro E.roucheTheoremClosed E.partialFractionsDecompositionClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse