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

package edu.utah.bmi.ibiomes.db.model.structure;

import java.lang.String;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

/**
 * Small molecule / compound
 * @author Julien Thibault, University of Utah
 *
 */
@Entity
@DiscriminatorValue("Compound")
public class DBSmallMolecule extends DBMolecule {

	private String stoichiometry;
	private Double mass;
	private Set<DBMoleculeIdentifier> identifiers;

	public DBSmallMolecule(){}

	@Column(name="stoichiometry")
	public String getStoichiometry() {return stoichiometry;}
	public void setStoichiometry(String stoichiometry) {this.stoichiometry = stoichiometry;}

	@Column(name="mass")
	public Double getMass() {return mass;}
	public void setMass(Double mass) {this.mass = mass;}

	@OneToMany
	@JoinColumn(name="molecule_id")
	public Set<DBMoleculeIdentifier> getIdentifiers() {return this.identifiers;}
	public void setIdentifiers(Set<DBMoleculeIdentifier> identifiers) {this.identifiers = identifiers;}
	
}