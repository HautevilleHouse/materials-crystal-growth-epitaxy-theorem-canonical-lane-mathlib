import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure EpitaxyEndgamePackage where
  substrateMaterial : String
  epilayerMaterial : String
  growthMethod : String
  latticeMismatch : ℝ
  threadingDislocationDensity : ℝ
  surfaceRoughness : ℝ
  interfaceQuality : Prop
  devicePerformance : Prop

structure EpitaxyEndgameEvidence (p : EpitaxyEndgamePackage) where
  latticeMismatchClosed : p.latticeMismatch < 0.1 -- arbitrary threshold
  threadingDislocationDensityClosed : p.threadingDislocationDensity < 1e6
  surfaceRoughnessClosed : p.surfaceRoughness < 1 -- nm
  interfaceQualityClosed : p.interfaceQuality
  devicePerformanceClosed : p.devicePerformance

def EpitaxyEndgameClosed (p : EpitaxyEndgamePackage) : Prop :=
  p.latticeMismatch < 0.1 ∧ p.threadingDislocationDensity < 1e6 ∧
  p.surfaceRoughness < 1 ∧ p.interfaceQuality ∧ p.devicePerformance

theorem epitaxy_endgame_closed_from_evidence (p : EpitaxyEndgamePackage)
    (e : EpitaxyEndgameEvidence p) : EpitaxyEndgameClosed p := by
  exact And.intro e.latticeMismatchClosed
    (And.intro e.threadingDislocationDensityClosed
      (And.intro e.surfaceRoughnessClosed
        (And.intro e.interfaceQualityClosed e.devicePerformanceClosed)))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse