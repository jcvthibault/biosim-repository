/*
 * iBIOMES - Integrated Biomolecular Simulations
 * Copyright (C) 2013  Julien Thibault, University of Utah
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package edu.utah.bmi.ibiomes.db.model.method;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Simulated conditions (e.g temperature, pressure)
 * @author Julien Thibault, University of Utah
 *
 */
@Entity
@Table(name="SIMULATED_CONDITION_SET")
public class DBSimulatedConditionSet {

	private Long id;
	private Double referenceTemperature;
	private Double referencePressure;

	public DBSimulatedConditionSet(){
	}

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY) 
	public Long getId() {return id;}
	public void setId(Long id) {this.id = id;}

	@Column(name = "temperature")
	public Double getReferenceTemperature() {return referenceTemperature;}
	public void setReferenceTemperature(Double referenceTemperature) {this.referenceTemperature = referenceTemperature;}

	@Column(name = "pressure")
	public Double getReferencePressure() {return referencePressure;}
	public void setReferencePressure(Double referencePressure) {this.referencePressure = referencePressure;}

}