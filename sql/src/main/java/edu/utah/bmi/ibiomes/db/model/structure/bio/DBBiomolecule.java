/*
 * iBIOMES - Integrated Biomolecular Simulations
 * Copyright (C) 2014  Julien Thibault, University of Utah
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

package edu.utah.bmi.ibiomes.db.model.structure.bio;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import edu.utah.bmi.ibiomes.db.model.structure.DBMolecule;

/**
 * Biomolecule
 * @author Julien Thibault, University of Utah
 *
 */
@Entity
@DiscriminatorValue("Biomolecule")
public class DBBiomolecule extends DBMolecule {

	private Set<DBResidueSequence> sequences;
	private String species;

	public DBBiomolecule(){}

	@OneToMany(cascade = CascadeType.ALL, fetch=FetchType.LAZY)
	@JoinColumn(name="molecule_id")
	public Set<DBResidueSequence> getSequences() {return sequences;}
	public void setSequences(Set<DBResidueSequence> sequences) {this.sequences = sequences;}

	@Column(name="species")
	public String getSpecies() {return species;}
	public void setSpecies(String species) {this.species = species;}

}