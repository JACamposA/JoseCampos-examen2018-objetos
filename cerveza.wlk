
 object lupuloLocal {
 	var property clase = "local"
 	var property lupuloLocalCosto = 800
 	var property constanteLupuloLocal = 1.6
 	var azucarLocal = 0
 	method ibusLocal = (azucarLocal * constanteLupuloLocal) / 2
 }
 
  object lupuloImportado {
 	var property clase = "importado"
 	var property lupuloImportadoCosto = 1000
 	var property constanteLupuloImportado = 2.4
 	var azucarImportado = 0
 	method ibusImportado = (azucarImportado * constanteLupuloImportado) / 2
 }
 
 object cervezaClasica {
 	var property tipo = "clasica"
 	var property fermentacionBaja = true
 	var property costoLevadura = 100
 	method costoClasica() = if self = fermentacionBaja return{
 		lupuloLocalCosto.lupuloLocal + costoLevadura
 	}
 } else return{
 	(lupuloLocalCosto.lupuloLocal) * 1.1
 }
 
  object cervezaLager {
  	var property tipo = "lager"
 	var property fermentacionBaja = true
 	var property costoLevadura = 100
 	var property ingredientesExtra = 2
 	method costoLager() = if (self.fermentacionBaja) return{
 		lupuloLocalCosto.lupuloLocal + costoLevadura + ingredientesExtra * 50
 	}
  else return
 	(lupuloLocalCosto.lupuloLocal) * 1.1 + ingredientesExtra.cervezaLager * 50
 }
 
  object cervezaPorter {
  	var property tipo = "porter"
 	var property fermentacionBaja = true
 	var property costoLevadura = 100
 	var property distancia = 0
 	method costoPorter() = if (self.fermentacionBaja) return{
 		(lupuloLocalCosto.lupuloLocal + costoLevadura) * (1 + 0.02 * distancia)
 	}
  else return
 	((lupuloLocalCosto.lupuloLocal) * 1.1) * (1 + 0.02 * distancia)
 }
 
 object losTresBirreros {
 	method costoTotal(cerveza, lotes){
 		if (tipo.cerveza == "clasica") return {
 			lotes * cerveza.costoClasica()
 		}
 		else if (tipo.cerveza == "lager") and ingredientesExtra.cervezaLager > 5 return {
 			(lotes * cerveza.costoLager()) * (1+ (0.02 * ingredientesExtra.cervezaLager)
 			else return lotes * cerveza.costoLager() * 1.2
 			}
 		else if (cervezaPorter.distancia < 10) return lotes * cerveza.costoPorter() * 0.90)
 		else return cerveza.costoPorter
 	}
 	
 }

 object distribuidora {
 	var property pedidos [pedidoA, pedidoB, pedidoC]
 	method 
 }




