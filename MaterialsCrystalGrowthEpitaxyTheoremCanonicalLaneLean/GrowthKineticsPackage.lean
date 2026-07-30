import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure GrowthKineticsPackage where
  growthRate : Prop
  activationEnergy : Prop
  interfaceMobility : Prop
  surfaceReconstruction : Prop
  stepFlowGrowth : Prop
  growthRateTerm : growthRate
  activationEnergyTerm : activationEnergy
  interfaceMobilityTerm : interfaceMobility
  surfaceReconstructionTerm : surfaceReconstruction
  stepFlowGrowthTerm : stepFlowGrowth

structure GrowthKineticsEvidence (K : GrowthKineticsPackage) where
  growthRateClosed : K.growthRate
  activationEnergyClosed : K.activationEnergy
  interfaceMobilityClosed : K.interfaceMobility
  surfaceReconstructionClosed : K.surfaceReconstruction
  stepFlowGrowthClosed : K.stepFlowGrowth

def GrowthKineticsClosed (K : GrowthKineticsPackage) : Prop :=
  K.growthRate ∧ K.activationEnergy ∧ K.interfaceMobility ∧ K.surfaceReconstruction ∧ K.stepFlowGrowth

theorem growth_kinetics_closed_from_evidence (K : GrowthKineticsPackage) (E : GrowthKineticsEvidence K) :
    GrowthKineticsClosed K := by
  exact And.intro E.growthRateClosed (And.intro E.activationEnergyClosed (And.intro E.interfaceMobilityClosed (And.intro E.surfaceReconstructionClosed E.stepFlowGrowthClosed)))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse