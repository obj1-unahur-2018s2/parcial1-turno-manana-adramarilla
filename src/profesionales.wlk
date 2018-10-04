import empresa.*
// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
}
/*Profesionales asociados del Litoral: pueden trabajar en Entre Ríos, Santa Fe y Corrientes, cobran 3000 pesos por hora de trabajo. */

// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{self.pciaUniv()} //pueden trabajar solamente en la provincia donde está la universidad,
	method honorariosPorHora() { return universidades.honorariosRecomendados() } // los honorarios son los que recomienda la universidad.
	
}

// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var provinciaTrabaja = #{} 
	var honorarios
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method setProvTrabaja (pcia) { provinciaTrabaja.add(pcia)}
	method provinciasDondePuedeTrabajar(provincia1) { return #{provincia1} } //se indica para cada uno en qué provincias pueden trabajar
	method sethonorariosPorHora(honorariosPorHora) { honorarios = honorariosPorHora}
	method honorariosPorHora() { return honorarios} //y los honorarios por hora, además de la universidad.
}

/*Una empresa que contrate a estos cuatro profesionales,
 *  y cuyos honorarios de referencia son 3500 pesos, debe tener

    como profesionales caros, solamente a Rocío.
    como universidades formadoras, a las de Rosario, Corrientes y Hurlingham.
    como profesional más barato a Juana.
    las provincias de Santa Fe y Córdoba están cubiertas, pero Misiones no.
    dos de sus profesionales estudiaron en Rosario, uno en Hurlingham, ninguno (o sea cero) en San Martín.
    */