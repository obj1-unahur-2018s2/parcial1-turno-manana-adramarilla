import profesionales.*


class Empresa {
	var provincia
	var honorarioRef
	var conjuntoProfesionales = #{}
	var univFormadoras = #{}
	
	method agregarProfesional(profesional) { conjuntoProfesionales.add(profesional)}
	method honorarioReferencia(honorario) {honorarioRef = honorario }
	method profesionalesCaros() { conjuntoProfesionales.any({prof=> prof.honorariosPorHora() > honorarioRef})}
    method setUniversidadesFormadoras(universidad) { univFormadoras.add(universidad)} 
	method universidadesFormadoras() { return univFormadoras.asSet()}
	method profesionalBarato() { conjuntoProfesionales.min({prof=>prof.honorariosPorHora() })}	/*el profesional más barato (o sea, que sus honorarios son los más bajos). */
	method SetpciaCubierta(pcia) { provincia = pcia} /*si una determinada provincia está cubierta (o sea, que haya al menos un profesional que pueda trabajar en ella). */
	method pciaCubierta () { 
		conjuntoProfesionales.any({prof=>prof.provinciasDondePuedeTrabajar()}).contains(provincia) {return true}
		else {return false} 
	}
	method univEstudProfesionales (estudProf) {return univFormadoras.count({=> estud == estudProf})}/* cuántos (un número) de sus profesionales contratados estudió en una determinada universidad. */
	//method mejorProfesional () { return 
	//	if self.provinciasDondePuedeTrabajar() 
	//}  
	
	
	/*dado un profesional, si es poco atractivo para la empresa.
    Esto es: si para cada provincia en la que puede trabajar el profesional,
    *  la empresa cuenta con otro que también puede cubrir esa provincia, 
    * y que cobra más barato.*/ */
}

