import profesionales.*


class honorarios {
	var provincia
	var honorarioRef
	var conjuntoProfesionales = #{}
	var univFormadoras = #{}
	
	method agregarProfesional(profesional) { conjuntoProfesionales.add(profesional)}
	method honorarioReferencia(honorario) {honorarioRef = honorario }
	method profesionalesCaros() { return conjuntoProfesionales.any({honorario => honorario > honorarioRef})} /*el conjunto formado por sus profesionales caros.
    *O sea, aquellos cuyo honorario es mayor al honorario de referencia de la empresa. */
	method setUniversidadesFormadoras() { return univFormadoras.add(self.universidad())} /* el conjunto de las universidades formadoras, o sea, las universidades donde estudiaron sus profesionales contratados, sin repetidos. */
	method universidadFormadoras() { return univFormadoras.asSet()}
	method profesionalBarato() { return conjuntoProfesionales.min({self.honorariosPorHora() })}	/*el profesional más barato (o sea, que sus honorarios son los más bajos). */
	method SetpciaCubierta(pcia) { provincia = pcia} /*si una determinada provincia está cubierta (o sea, que haya al menos un profesional que pueda trabajar en ella). */
	method pciaCubierta () { 
		if (self.provinciasDondePuedeTrabajar().contains(provincia)) {return true}
		else (false) 
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

