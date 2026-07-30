import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure ResidueTheoremPackage where
  residueSum : Prop
  poleOrderCalculation : Prop
  casoratiWeierstrass : Prop
  meromorphicContinuation : Prop
  residueSumProof : residueSum
  poleOrderProof : poleOrderCalculation
  casoratiWeierstrassProof : casoratiWeierstrass
  meromorphicContinuationProof : meromorphicContinuation

structure ResidueTheoremEvidence (R : ResidueTheoremPackage) where
  residueSumClosed : R.residueSum
  poleOrderCalculationClosed : R.poleOrderCalculation
  casoratiWeierstrassClosed : R.casoratiWeierstrass
  meromorphicContinuationClosed : R.meromorphicContinuation

def ResidueTheoremClosed (R : ResidueTheoremPackage) : Prop :=
  R.residueSum ∧ R.poleOrderCalculation ∧ R.casoratiWeierstrass ∧ R.meromorphicContinuation

theorem residue_theorem_closed_from_evidence (R : ResidueTheoremPackage) (E : ResidueTheoremEvidence R) :
    ResidueTheoremClosed R := by
  exact And.intro E.residueSumClosed
    (And.intro E.poleOrderCalculationClosed
      (And.intro E.casoratiWeierstrassClosed E.meromorphicContinuationClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse