import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure PhylogeneticsPackage where
  speciesTree : Type u
  molecularClock : Prop
  maximumLikelihood : Prop
  bootstrapSupport : ℝ
  treeConsistent : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  molecularClockClosed : P.molecularClock
  maximumLikelihoodClosed : P.maximumLikelihood
  bootstrapSupportHigh : P.bootstrapSupport > 0.9
  treeConsistentClosed : P.treeConsistent

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.molecularClock ∧ P.maximumLikelihood ∧ P.bootstrapSupport > 0.9 ∧ P.treeConsistent

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
    PhylogeneticsClosed P := by
  exact And.intro E.molecularClockClosed (And.intro E.maximumLikelihoodClosed (And.intro E.bootstrapSupportHigh E.treeConsistentClosed))

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse