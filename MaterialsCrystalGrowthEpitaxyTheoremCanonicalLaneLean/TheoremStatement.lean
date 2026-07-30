import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "materials-crystal-growth-epitaxy-canonical-lane",
  theoremName := "materials-crystal-growth-epitaxy-canonical-lane",
  theoremObject := "Crystal growth epitaxy theorem",
  classicalBoundary := "carried: classical crystallographic classification boundary",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through Bravais lattice classification, space group classification, diffraction pattern, and quasicrystal admissibility",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse