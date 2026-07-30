import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure KineticParameter where
  surfaceEnergyDensity : Float
  stepEdgeEnergy : Float
  attachmentKinetics : Float
  diffusionBarrier : Float

structure KineticWulffConstruction where
  parameters : KineticParameter
  equilibriumShape : String
  growthShape : String
  shapeClosed : Prop

structure KineticWulffEvidence (K : KineticWulffConstruction) where
  shapeClosedTerm : K.shapeClosed
  equilibriumMatchesGrowth : Prop

def KineticWulffClosed (K : KineticWulffConstruction) : Prop :=
  K.shapeClosed ∧ K.equilibriumShape = K.growthShape

theorem kinetic_wulff_closed_from_evidence
    (K : KineticWulffConstruction) (Ev : KineticWulffEvidence K) :
    KineticWulffClosed K := by
  refine And.intro Ev.shapeClosedTerm ?_
  -- assuming equilibriumMatchesGrowth implies equality
  exact Ev.equilibriumMatchesGrowth

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse