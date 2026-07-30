import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure CrystalGrowthKineticsPackage where
  nucleationRate : Prop
  growthVelocity : Prop
  surfaceDiffusion : Prop
  stepFlowGrowth : Prop
  rougheningTransition : Prop
  kineticWulffShape : Prop

structure CrystalGrowthKineticsEvidence (C : CrystalGrowthKineticsPackage) where
  nucleationRateClosed : C.nucleationRate
  growthVelocityClosed : C.growthVelocity
  surfaceDiffusionClosed : C.surfaceDiffusion
  stepFlowGrowthClosed : C.stepFlowGrowth
  rougheningTransitionClosed : C.rougheningTransition
  kineticWulffShapeClosed : C.kineticWulffShape

def CrystalGrowthKineticsClosed (C : CrystalGrowthKineticsPackage) : Prop :=
  C.nucleationRate ∧ C.growthVelocity ∧ C.surfaceDiffusion ∧
  C.stepFlowGrowth ∧ C.rougheningTransition ∧ C.kineticWulffShape

theorem crystal_growth_kinetics_closed_from_evidence
    (C : CrystalGrowthKineticsPackage) (E : CrystalGrowthKineticsEvidence C) :
    CrystalGrowthKineticsClosed C := by
  exact And.intro E.nucleationRateClosed
    (And.intro E.growthVelocityClosed
      (And.intro E.surfaceDiffusionClosed
        (And.intro E.stepFlowGrowthClosed
          (And.intro E.rougheningTransitionClosed E.kineticWulffShapeClosed))))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse