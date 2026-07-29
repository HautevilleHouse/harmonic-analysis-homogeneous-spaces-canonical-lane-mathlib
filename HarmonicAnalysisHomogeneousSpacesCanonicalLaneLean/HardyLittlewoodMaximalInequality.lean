import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure HardyLittlewoodMaximalPackage where
  homogeneousSpace : Type u
  metricStructure : Prop
  maximalFunction : Type v
  weakTypeInequality : Prop
  strongTypeInequality : Prop

structure HardyLittlewoodMaximalEvidence (H : HardyLittlewoodMaximalPackage) where
  metricStructureClosed : H.metricStructure
  weakTypeInequalityClosed : H.weakTypeInequality
  strongTypeInequalityClosed : H.strongTypeInequality

def HardyLittlewoodMaximalClosed (H : HardyLittlewoodMaximalPackage) : Prop :=
  H.metricStructure ∧ H.weakTypeInequality ∧ H.strongTypeInequality

theorem hardy_littlewood_maximal_closed_from_evidence (H : HardyLittlewoodMaximalPackage)
    (E : HardyLittlewoodMaximalEvidence H) : HardyLittlewoodMaximalClosed H := by
  exact And.intro E.metricStructureClosed
    (And.intro E.weakTypeInequalityClosed E.strongTypeInequalityClosed)

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse