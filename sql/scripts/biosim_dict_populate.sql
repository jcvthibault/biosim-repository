-- ==================================================================
-- Author:  Julien Thibault, University of Utah
-- Created: 07/18/2013
-- Description: run this script to populate the dictionaries using
--              the CSV files.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
-- ==================================================================

-- ====== PERIODIC TABLE  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_atomic_element_families.csv' 
INTO TABLE BIOSIM_DICT_ELEMENT_FAMILY 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_atomic_elements.csv' 
INTO TABLE BIOSIM_DICT_PERIODIC_TABLE 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ====== RESIDUES  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_residues.csv' 
INTO TABLE BIOSIM_DICT_RESIDUE 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ====== FUNCTIONAL GROUPS  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_functional_groups.csv' 
INTO TABLE BIOSIM_DICT_FUNCTIONAL_GROUP 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ====== SOFTWARE  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_software.csv' 
INTO TABLE BIOSIM_DICT_SOFTWARE 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_file_formats.csv' 
INTO TABLE BIOSIM_DICT_FILE_FORMAT 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ======  BASIS SETS ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_basis_set_types.csv' 
INTO TABLE BIOSIM_DICT_BASIS_SET_TYPE 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_basis_sets.csv' 
INTO TABLE BIOSIM_DICT_BASIS_SET 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ======  FORCE FIELDS ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_force_field_types.csv' 
INTO TABLE BIOSIM_DICT_FORCE_FIELD_TYPE 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_force_fields.csv' 
INTO TABLE BIOSIM_DICT_FORCE_FIELD 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ====== CONSTRAINT ALGORITHM  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_constraint_algorithms.csv' 
INTO TABLE BIOSIM_DICT_CONSTRAINT_ALGORITHM 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ====== ELECTROSTATICS  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_electrostatics.csv' 
INTO TABLE BIOSIM_DICT_ELECTROSTATICS_MODEL 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ====== ENSEMBLE TYPE, BAROSTAT, THERMOSTAT  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_ensemble.csv' 
INTO TABLE BIOSIM_DICT_ENSEMBLE_TYPE 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_barostat.csv' 
INTO TABLE BIOSIM_DICT_BAROSTAT 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_thermostat.csv' 
INTO TABLE BIOSIM_DICT_THERMOSTAT 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ====== ENSEMBLE METHODS / HIGH LEVEL METHOD  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_experiment_level_method_types.csv' 
INTO TABLE BIOSIM_DICT_DATA_GENERATION_METHOD_TYPE 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_experiment_level_methods.csv' 
INTO TABLE BIOSIM_DICT_DATA_GENERATION_METHOD 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ====== COMPUTATIONAL METHODS  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_methods.csv' 
INTO TABLE BIOSIM_DICT_COMPUTATIONAL_METHOD 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_method_families.csv' 
INTO TABLE BIOSIM_DICT_COMPUTATIONAL_METHOD_FAMILY 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_method_classes.csv' 
INTO TABLE BIOSIM_DICT_COMPUTATIONAL_METHOD_CLASS 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_methods_to_classes_rel.csv' 
INTO TABLE BIOSIM_DICT_COMPUTATIONAL_METHOD_DICT_CLASS_DICT 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

-- ====== CALCULATIONS  ======

LOAD DATA LOCAL INFILE '/tmp/dictionary_calculation_types.csv' 
INTO TABLE BIOSIM_DICT_CALCULATION_TYPE 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/tmp/dictionary_calculations.csv' 
INTO TABLE BIOSIM_DICT_CALCULATION 
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\' LINES TERMINATED BY '\n' 
IGNORE 1 LINES;


