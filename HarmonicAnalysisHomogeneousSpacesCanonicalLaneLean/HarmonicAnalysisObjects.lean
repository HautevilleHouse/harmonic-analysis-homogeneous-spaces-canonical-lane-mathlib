import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure HomogeneousSpace where
  group : Type u
  subgroup : Type u
  groupTopology : TopologicalSpace group
  subgroupTopology : TopologicalSpace subgroup
  homogeneousTopology : TopologicalSpace (group / subgroup)
  haarMeasure : Type v

structure HarmonicAnalysisAdmittedObject where
  space : HomogeneousSpace
  representation : Type w
  unitaryProperty : Prop
  irredDecomposition : Prop
  conclusion : unitaryProperty ∧ irredDecomposition

structure HarmonicAnalysisEndgameState where
  object : HarmonicAnalysisAdmittedObject

def HarmonicAnalysisWitnessClosed (O : HarmonicAnalysisAdmittedObject) : Prop :=
  O.unitaryProperty ∧ O.irredDecomposition

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse