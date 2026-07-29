import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure LinkageAnalysisPackage where
  pedigree : Type u
  geneticMarkers : Type v
  recombinationFraction : ℝ
  lodScore : ℝ
  linkageSignificant : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  lodScoreCalculated : L.lodScore > 0
  linkageSignificantClosed : L.linkageSignificant

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.lodScore > 0 ∧ L.linkageSignificant

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact And.intro E.lodScoreCalculated E.linkageSignificantClosed

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse