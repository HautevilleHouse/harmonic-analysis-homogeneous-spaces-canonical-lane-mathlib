import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure HomogeneousSpace where
  group : Type u
  subgroup : Type v
  quotientSpace : Type w
  leftInvariantMetric : Prop
  haarMeasure : Prop
  modularFunction : Type x
  unimodular : Prop

structure HomogeneousStructurePackage where
  space : HomogeneousSpace
  convolutionStructure : Prop
  fourierTransform : Prop
  plancherelTheorem : Prop
  maximalFunction : Prop

structure HomogeneousStructureEvidence (H : HomogeneousStructurePackage) where
  convolutionStructureClosed : H.convolutionStructure
  fourierTransformClosed : H.fourierTransform
  plancherelTheoremClosed : H.plancherelTheorem
  maximalFunctionClosed : H.maximalFunction

def HomogeneousStructureClosed (H : HomogeneousStructurePackage) : Prop :=
  H.convolutionStructure ∧ H.fourierTransform ∧ H.plancherelTheorem ∧ H.maximalFunction

theorem homogeneous_structure_closed_from_evidence (H : HomogeneousStructurePackage)
    (E : HomogeneousStructureEvidence H) : HomogeneousStructureClosed H := by
  exact And.intro E.convolutionStructureClosed
    (And.intro E.fourierTransformClosed
      (And.intro E.plancherelTheoremClosed E.maximalFunctionClosed))

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse
