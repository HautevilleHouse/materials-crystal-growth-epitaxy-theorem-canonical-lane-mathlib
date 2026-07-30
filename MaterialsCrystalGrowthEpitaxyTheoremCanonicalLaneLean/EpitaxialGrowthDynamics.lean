import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure EpitaxialGrowthDynamics where
  substrateSurface : Type u
  adatomFlux : Type v
  diffusionCoefficient : Type w
  nucleationRate : Prop
  islandGrowth : Prop
  surfaceCoverage : Prop
  nucleationRateTerm : nucleationRate
  islandGrowthTerm : islandGrowth
  surfaceCoverageTerm : surfaceCoverage

structure EpitaxialGrowthEvidence (E : EpitaxialGrowthDynamics) where
  nucleationRateClosed : E.nucleationRate
  islandGrowthClosed : E.islandGrowth
  surfaceCoverageClosed : E.surfaceCoverage

def EpitaxialGrowthClosed (E : EpitaxialGrowthDynamics) : Prop :=
  E.nucleationRate ∧ E.islandGrowth ∧ E.surfaceCoverage

theorem epitaxial_growth_closed_from_evidence (E : EpitaxialGrowthDynamics) (Ev : EpitaxialGrowthEvidence E) :
    EpitaxialGrowthClosed E := by
  exact And.intro Ev.nucleationRateClosed (And.intro Ev.islandGrowthClosed Ev.surfaceCoverageClosed)

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse