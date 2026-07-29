import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HarmonicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  homogeneousStructure : Prop
  groupAction : Type
  invariantMeasure : Type

structure HarmonicAdmittedObject where
  space : HarmonicSpace
  lieGroupAction : Prop
  unitaryRepresentation : Prop
  harishChandraParameter : Prop
  conclusion : harishChandraParameter

structure HarmonicEndgameState where
  object : HarmonicAdmittedObject

def HarmonicWitnessClosed (O : HarmonicAdmittedObject) : Prop :=
  O.harishChandraParameter

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse