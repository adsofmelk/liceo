-- MySQL Workbench Synchronization
-- Generated: 2017-08-15 20:51
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: adso

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `enter4_liceocampestre`.`informe_alumno` 
ADD COLUMN `informe_alumno_idinforme_alumno` BIGINT(20) NOT NULL AFTER `informeacademico_idinformeacademico`,
ADD INDEX `fk_informe_alumno_informe_alumno1_idx` (`informe_alumno_idinforme_alumno` ASC);

ALTER TABLE `enter4_liceocampestre`.`log` 
CHANGE COLUMN `fecha` `fecha` TIMESTAMP NOT NULL DEFAULT now() ;

CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`logro` (
  `idlogro` INT(11) NOT NULL AUTO_INCREMENT,
  `detalle` VARCHAR(512) NOT NULL,
  `visibleenboletin` TINYINT(1) NOT NULL,
  `grado_idgrado` INT(11) NOT NULL,
  `materia_idmateria` INT(11) NOT NULL,
  PRIMARY KEY (`idlogro`),
  INDEX `fk_logro_grado1_idx` (`grado_idgrado` ASC),
  INDEX `fk_logro_materia1_idx` (`materia_idmateria` ASC),
  CONSTRAINT `fk_logro_grado1`
    FOREIGN KEY (`grado_idgrado`)
    REFERENCES `enter4_liceocampestre`.`grado` (`idgrado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_logro_materia1`
    FOREIGN KEY (`materia_idmateria`)
    REFERENCES `enter4_liceocampestre`.`materia` (`idmateria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`evaluacion_has_logro` (
  `evaluacion_idevaluacion` INT(11) NOT NULL,
  `logro_idlogro` INT(11) NOT NULL,
  PRIMARY KEY (`evaluacion_idevaluacion`, `logro_idlogro`),
  INDEX `fk_evaluacion_has_logro_logro1_idx` (`logro_idlogro` ASC),
  INDEX `fk_evaluacion_has_logro_evaluacion1_idx` (`evaluacion_idevaluacion` ASC),
  CONSTRAINT `fk_evaluacion_has_logro_evaluacion1`
    FOREIGN KEY (`evaluacion_idevaluacion`)
    REFERENCES `enter4_liceocampestre`.`evaluacion` (`idevaluacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_evaluacion_has_logro_logro1`
    FOREIGN KEY (`logro_idlogro`)
    REFERENCES `enter4_liceocampestre`.`logro` (`idlogro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`informe_alumno_detalle_has_logro` (
  `informe_alumno_detalle_idinforme_alumno_detalle` BIGINT(20) NOT NULL,
  `logro_idlogro` INT(11) NOT NULL,
  PRIMARY KEY (`informe_alumno_detalle_idinforme_alumno_detalle`, `logro_idlogro`),
  INDEX `fk_informe_alumno_detalle_has_logro_logro1_idx` (`logro_idlogro` ASC),
  INDEX `fk_informe_alumno_detalle_has_logro_informe_alumno_detalle1_idx` (`informe_alumno_detalle_idinforme_alumno_detalle` ASC),
  CONSTRAINT `fk_informe_alumno_detalle_has_logro_informe_alumno_detalle1`
    FOREIGN KEY (`informe_alumno_detalle_idinforme_alumno_detalle`)
    REFERENCES `enter4_liceocampestre`.`informe_alumno_detalle` (`idinforme_alumno_detalle`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_informe_alumno_detalle_has_logro_logro1`
    FOREIGN KEY (`logro_idlogro`)
    REFERENCES `enter4_liceocampestre`.`logro` (`idlogro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

ALTER TABLE `enter4_liceocampestre`.`informe_alumno` 
ADD CONSTRAINT `fk_informe_alumno_informe_alumno1`
  FOREIGN KEY (`informe_alumno_idinforme_alumno`)
  REFERENCES `enter4_liceocampestre`.`informe_alumno` (`idinforme_alumno`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_alumnoscurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_alumnoscurso` (`idalumno_curso` INT, `codigolista` INT, `ordenlista` INT, `hash` INT, `estado` INT, `alumno_idalumno` INT, `curso_idcurso` INT, `codigo` INT, `estadoalumno` INT, `nombres` INT, `apellidos` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_informealumnodetalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_informealumnodetalle` (`idinforme_alumno_detalle` INT, `nota` INT, `letra` INT, `fallas` INT, `created_at` INT, `updated_at` INT, `deleted_at` INT, `estado` INT, `hash` INT, `materia_idmateria` INT, `curso_idcurso` INT, `periodo_idperiodo` INT, `anioescolar_idanioescolar` INT, `alumno_idalumno` INT, `codigolista` INT, `ordenlista` INT, `nombres` INT, `apellidos` INT, `nombremateria` INT, `nombrecurso` INT, `nombreperiodo` INT, `anio` INT, `estadoalumno` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_materiasinformesentregados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_materiasinformesentregados` (`materia_idmateria` INT, `nombre` INT, `curso_idcurso` INT, `periodo_idperiodo` INT, `anioescolar_idanioescolar` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_materiasinformesfaltantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_materiasinformesfaltantes` (`materia_idmateria` INT, `curso_idcurso` INT, `nombre` INT, `anioescolar_idanioescolar` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_promedioalumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_promedioalumno` (`anioescolar_idanioescolar` INT, `periodo_idperiodo` INT, `curso_idcurso` INT, `alumno_idalumno` INT, `promedio` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_promediocurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_promediocurso` (`anioescolar_idanioescolar` INT, `periodo_idperiodo` INT, `curso_idcurso` INT, `promedio` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_profesorcursoinformes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_profesorcursoinformes` (`idprofesor_curso` INT, `director` INT, `hash` INT, `profesor_idprofesor` INT, `curso_idcurso` INT, `materia_idmateria` INT, `numeroinformes` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_modulousuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_modulousuario` (`usuario_idusuario` INT, `tipousuario_idtipousuario` INT, `nombretipousuario` INT, `nombremodulo` INT, `path` INT, `iconomodulo` INT, `estadomodulo` INT, `idgrupomodulo` INT, `nombregrupomodulo` INT, `iconogrupo` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_profesorinformacionpersonal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_profesorinformacionpersonal` (`idprofesor` INT, `estado` INT, `persona_idpersona` INT, `idpersona` INT, `nombres` INT, `apellidos` INT, `fechanacimiento` INT, `numerodocumento` INT, `telefono` INT, `celular` INT, `fotografia` INT, `email` INT, `direccion` INT, `observaciones` INT, `genero_idgenero` INT, `ciudad_nacimiento_idciudad` INT, `tipodocumento_idtipodocumento` INT, `ciudad_documento_idciudad` INT, `gruposanguineo_idgruposanguineo` INT, `rh_idrh` INT, `eps_ideps` INT, `ciudad_residencia_idciudad` INT, `idprofesor_usuario` INT, `usuario_idusuario` INT, `profesor_idprofesor` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_alumnoinformacionpersonal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_alumnoinformacionpersonal` (`idalumno` INT, `codigo` INT, `created_at` INT, `updated_at` INT, `deleted_at` INT, `estado` INT, `persona_idpersona` INT, `idpersona` INT, `nombres` INT, `apellidos` INT, `fechanacimiento` INT, `numerodocumento` INT, `telefono` INT, `celular` INT, `fotografia` INT, `email` INT, `direccion` INT, `observaciones` INT, `genero_idgenero` INT, `ciudad_nacimiento_idciudad` INT, `tipodocumento_idtipodocumento` INT, `ciudad_documento_idciudad` INT, `gruposanguineo_idgruposanguineo` INT, `rh_idrh` INT, `eps_ideps` INT, `ciudad_residencia_idciudad` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_usuariotipousuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_usuariotipousuario` (`idusuario` INT, `created_at` INT, `updated_at` INT, `deleted_at` INT, `nombres` INT, `apellidos` INT, `email` INT, `password` INT, `intentos` INT, `hash` INT, `remember_token` INT, `estado` INT, `idtipousuario` INT, `nombre` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_alumnosprofesorcurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_alumnosprofesorcurso` (`profesor_idprofesor` INT, `director` INT, `curso_idcurso` INT, `idalumno_curso` INT, `codigolista` INT, `ordenlista` INT, `estado` INT, `alumno_idalumno` INT, `nombres` INT, `apellidos` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_profesorcursomateria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_profesorcursomateria` (`idprofesor_curso` INT, `director` INT, `hash` INT, `profesor_idprofesor` INT, `curso_idcurso` INT, `materia_idmateria` INT, `nombrecurso` INT, `grado_idgrado` INT, `estadocurso` INT, `nombremateria` INT, `estadomateria` INT, `horassemana` INT, `area_idarea` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_profesorcurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_profesorcurso` (`idprofesor_curso` INT, `director` INT, `hash` INT, `profesor_idprofesor` INT, `curso_idcurso` INT, `materia_idmateria` INT, `idcurso` INT, `nombre` INT, `estado` INT, `grado_idgrado` INT, `anioescolar_idanioescolar` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_profesorcursomateriapersona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_profesorcursomateriapersona` (`idprofesor_curso` INT, `profesor_idprofesor` INT, `nombres` INT, `apellidos` INT, `curso_idcurso` INT, `grado_idgrado` INT, `nombrecurso` INT, `materia_idmateria` INT, `nombremateria` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_informealumnodatosalumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_informealumnodatosalumno` (`idinforme_alumno` INT, `promedio` INT, `promediocurso` INT, `puestocurso` INT, `puestogrado` INT, `puestocolegio` INT, `created_at` INT, `updated_at` INT, `deleted_at` INT, `hash` INT, `estado` INT, `observaciones` INT, `anioescolar_idanioescolar` INT, `periodo_idperiodo` INT, `curso_idcurso` INT, `alumno_idalumno` INT, `profesor_idprofesor` INT, `informeacademico_idinformeacademico` INT, `informe_alumno_idinforme_alumno` INT, `nombres` INT, `apellidos` INT, `estadoalumno` INT, `codigolista` INT, `ordenlista` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_evaluacionestandartipocurmat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_evaluacionestandartipocurmat` (`idevaluacion` INT, `created_at` INT, `updated_at` INT, `deleted_at` INT, `fechaevaluacion` INT, `porcentaje` INT, `detalle` INT, `hash` INT, `estado` INT, `tipoestandar_idtipoestandar` INT, `curso_idcurso` INT, `periodo_idperiodo` INT, `tipoevaluacion_idtipoevaluacion` INT, `anioescolar_idanioescolar` INT, `materia_idmateria` INT, `profesor_idprofesor` INT, `nombrecurso` INT, `nombremateria` INT, `nombretipoestandar` INT, `porcentajetipoestandar` INT, `nombretipoevaluacion` INT, `nombreperiodo` INT, `idprofesor_curso` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_evaluaciondetallealumnopersona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_evaluaciondetallealumnopersona` (`idevaluaciondetalle` INT, `created_at` INT, `updated_at` INT, `deleted_at` INT, `nota` INT, `letra` INT, `observaciones` INT, `estado` INT, `hash` INT, `evaluacion_idevaluacion` INT, `alumno_idalumno` INT, `estadoalumno` INT, `persona_idpersona` INT, `nombres` INT, `apellidos` INT, `codigolista` INT, `ordenlista` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_evaluaciondetallealumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_evaluaciondetallealumno` (`anioescolar_idanioescolar` INT, `periodo_idperiodo` INT, `curso_idcurso` INT, `materia_idmateria` INT, `idtipoestandar` INT, `nombretipoestandar` INT, `porcentaje` INT, `alumno_idalumno` INT, `evaluacion_idevaluacion` INT, `nota` INT, `letra` INT, `observaciones` INT, `estado` INT, `estadoalumno` INT, `persona_idpersona` INT, `codigolista` INT, `ordenlista` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_acumuladofallas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_acumuladofallas` (`anioescolar_idanioescolar` INT, `periodo_idperiodo` INT, `curso_idcurso` INT, `materia_idmateria` INT, `profesor_curso_idprofesor_curso` INT, `alumno_idalumno` INT, `cantidad` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_acudientealumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_acudientealumno` (`idfamiliar` INT, `tipofamiliar_idtipofamiliar` INT, `usuario_idusuario` INT, `acudiente` INT, `alumno_idalumno` INT, `codigo` INT, `estadoalumno` INT, `nombrecurso` INT, `curso_idcurso` INT, `estadocurso` INT, `nombretipodocumento` INT, `idpersona` INT, `nombres` INT, `apellidos` INT, `fechanacimiento` INT, `numerodocumento` INT, `telefono` INT, `celular` INT, `fotografia` INT, `email` INT, `direccion` INT, `observaciones` INT, `genero_idgenero` INT, `ciudad_nacimiento_idciudad` INT, `tipodocumento_idtipodocumento` INT, `ciudad_documento_idciudad` INT, `gruposanguineo_idgruposanguineo` INT, `rh_idrh` INT, `eps_ideps` INT, `ciudad_residencia_idciudad` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_directorcurso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_directorcurso` (`profesor_idprofesor` INT, `curso_idcurso` INT, `nombres` INT, `apellidos` INT, `email` INT, `celular` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_evaluaciondetalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_evaluaciondetalle` (`anioescolar_idanioescolar` INT, `periodo_idperiodo` INT, `curso_idcurso` INT, `materia_idmateria` INT, `fechaevaluacion` INT, `detalleevaluacion` INT, `nombretipoevaluacion` INT, `idevaluaciondetalle` INT, `created_at` INT, `updated_at` INT, `deleted_at` INT, `nota` INT, `letra` INT, `observaciones` INT, `estado` INT, `hash` INT, `evaluacion_idevaluacion` INT, `alumno_idalumno` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_mensajetipomensaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_mensajetipomensaje` (`idmensaje` INT, `created_at` INT, `updated_at` INT, `deleted_at` INT, `asunto` INT, `mensaje` INT, `fechaenvio` INT, `fechavencimiento` INT, `profesores` INT, `acudientes` INT, `acudientesdetalle` INT, `numerosadicionales` INT, `emailsadicionales` INT, `estado` INT, `usuario_idusuario` INT, `tipomensaje_idtipomensaje` INT, `nombretipomensaje` INT, `class` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_mensajecanalmensaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_mensajecanalmensaje` (`idmensaje_canalmensaje` INT, `estado` INT, `mensaje_idmensaje` INT, `canalmensaje_idcanalmensaje` INT, `nombre` INT, `parametros` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_tipousuariousuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_tipousuariousuario` (`idusuario_tipousuario` INT, `usuario_idusuario` INT, `tipousuario_idtipousuario` INT, `estado` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_acudientealumnousuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_acudientealumnousuario` (`alumno_idalumno` INT, `curso_idcurso` INT, `familiar_idfamiliar` INT, `usuario_idusuario` INT, `estadoalumnocurso` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_acudientealumnopersona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_acudientealumnopersona` (`alumno_idalumno` INT, `curso_idcurso` INT, `familiar_idfamiliar` INT, `estadoalumnocurso` INT, `idpersona` INT, `nombres` INT, `apellidos` INT, `fechanacimiento` INT, `numerodocumento` INT, `telefono` INT, `celular` INT, `fotografia` INT, `email` INT, `direccion` INT, `observaciones` INT, `genero_idgenero` INT, `ciudad_nacimiento_idciudad` INT, `tipodocumento_idtipodocumento` INT, `ciudad_documento_idciudad` INT, `gruposanguineo_idgruposanguineo` INT, `rh_idrh` INT, `eps_ideps` INT, `ciudad_residencia_idciudad` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_profesorcurso2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_profesorcurso2` (`profesor_idprofesor` INT, `curso_idcurso` INT, `nombrecurso` INT, `estadocurso` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_acudienteusuariopersona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_acudienteusuariopersona` (`familiar_idfamiliar` INT, `usuario_idusuario` INT, `idpersona` INT, `nombres` INT, `apellidos` INT, `fechanacimiento` INT, `numerodocumento` INT, `telefono` INT, `celular` INT, `fotografia` INT, `email` INT, `direccion` INT, `observaciones` INT, `genero_idgenero` INT, `ciudad_nacimiento_idciudad` INT, `tipodocumento_idtipodocumento` INT, `ciudad_documento_idciudad` INT, `gruposanguineo_idgruposanguineo` INT, `rh_idrh` INT, `eps_ideps` INT, `ciudad_residencia_idciudad` INT);

-- -----------------------------------------------------
-- Placeholder table for view `enter4_liceocampestre`.`view_acumuladomateriaestandaralumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `enter4_liceocampestre`.`view_acumuladomateriaestandaralumno` (`alumno_idalumno` INT, `curso_idcurso` INT, `materia_idmateria` INT, `tipoestandar_idtipoestandar` INT, `periodo_idperiodo` INT, `anioescolar_idanioescolar` INT, `nota_estandar_materia` INT);


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_alumnoscurso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_alumnoscurso`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_alumnoscurso` AS
select ac.*, a.codigo, a.estado as estadoalumno, p.nombres, p.apellidos 
from persona as p 
inner join alumno as a on a.persona_idpersona = p.idpersona
 inner join alumno_curso as ac on ac.alumno_idalumno = a.idalumno;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_informealumnodetalle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_informealumnodetalle`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_informealumnodetalle` AS
select iad.* ,acu.codigolista, acu.ordenlista, p.nombres, p.apellidos, m.nombre as nombremateria, c.nombre as nombrecurso, 
per.nombre as nombreperiodo, an.anio as anio, a.estado as estadoalumno
from informe_alumno_detalle as iad
inner join alumno as a on iad.alumno_idalumno = a.idalumno
inner join alumno_curso as acu on (acu.alumno_idalumno = iad.alumno_idalumno and acu.curso_idcurso = iad.curso_idcurso)
inner join persona as p on p.idpersona = a.persona_idpersona
inner join materia as m on iad.materia_idmateria = m.idmateria
inner join curso as c on iad.curso_idcurso = c.idcurso
inner join periodo as per on iad.periodo_idperiodo = per.idperiodo
inner join anioescolar as an on iad.anioescolar_idanioescolar=an.idanioescolar
order by anioescolar_idanioescolar, curso_idcurso,iad.alumno_idalumno,materia_idmateria;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_materiasinformesentregados`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_materiasinformesentregados`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_materiasinformesentregados` AS
select distinct materia_idmateria, materia.nombre , curso_idcurso, periodo_idperiodo, anioescolar_idanioescolar  from informe_alumno_detalle
inner join materia on materia.idmateria = informe_alumno_detalle.materia_idmateria;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_materiasinformesfaltantes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_materiasinformesfaltantes`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_materiasinformesfaltantes` AS
select pc.materia_idmateria,pc.curso_idcurso, m.nombre, 
c.anioescolar_idanioescolar
from profesor_curso as pc 
inner join curso as c on c.idcurso = pc.curso_idcurso
inner join materia as m on m.idmateria = pc.materia_idmateria
where m.idmateria not in 
(select distinct materia_idmateria from informe_alumno_detalle
	inner join materia on materia.idmateria = informe_alumno_detalle.materia_idmateria );


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_promedioalumno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_promedioalumno`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_promedioalumno` AS
select distinct anioescolar_idanioescolar, periodo_idperiodo,curso_idcurso, alumno_idalumno,  avg(nota) as promedio from informe_alumno_detalle 
where materia_idmateria not in (select distinct idmateria from materia as m 
where area_idarea = 10)
group by anioescolar_idanioescolar, periodo_idperiodo,curso_idcurso, alumno_idalumno order by promedio desc;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_promediocurso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_promediocurso`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_promediocurso` AS
select distinct anioescolar_idanioescolar, periodo_idperiodo ,curso_idcurso, avg(nota) as promedio from informe_alumno_detalle 
where materia_idmateria not in (select distinct idmateria from materia as m 
where area_idarea = 10)
group by anioescolar_idanioescolar, periodo_idperiodo,curso_idcurso;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_profesorcursoinformes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_profesorcursoinformes`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_profesorcursoinformes` AS
select distinct pc.*, count(iad.idinforme_alumno_detalle) as numeroinformes from profesor_curso as pc
left join informe_alumno_detalle as iad 
on (iad.curso_idcurso = pc.curso_idcurso and iad.materia_idmateria = pc.materia_idmateria )
group by pc.idprofesor_curso, pc.director, pc.profesor_idprofesor, pc.curso_idcurso, pc.materia_idmateria;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_modulousuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_modulousuario`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_modulousuario` AS
select distinct ut.usuario_idusuario , ut.tipousuario_idtipousuario , 
t.nombre as nombretipousuario , ms.nombre as nombremodulo, ms.path,ms.icono as iconomodulo, ms.estado as estadomodulo,
gm.idgrupomodulo, gm.nombre as nombregrupomodulo, gm.icono as iconogrupo
from usuario_tipousuario as ut
inner join tipousuario as t on t.idtipousuario = ut.tipousuario_idtipousuario
inner join tipousuario_modulosistema as tm on tm.tipousuario_idtipousuario = ut.tipousuario_idtipousuario
inner join modulosistema as ms on ms.idmodulosistema = tm.modulosistema_idmodulosistema
inner join grupomodulo_modulosistema as gr_mo on gr_mo.modulosistema_idmodulosistema = ms.idmodulosistema
inner join grupomodulo as gm on gm.idgrupomodulo = gr_mo.grupomodulo_idgrupomodulo;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_profesorinformacionpersonal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_profesorinformacionpersonal`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_profesorinformacionpersonal` AS
select * from profesor as pro 
inner join persona as per on per.idpersona = pro.persona_idpersona
inner join profesor_usuario as pu on pu.profesor_idprofesor = pro.idprofesor;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_alumnoinformacionpersonal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_alumnoinformacionpersonal`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_alumnoinformacionpersonal` AS
select * from alumno as alu
inner join persona as per on per.idpersona = alu.persona_idpersona;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_usuariotipousuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_usuariotipousuario`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_usuariotipousuario` AS
select u.*,t.* from usuario as u 
inner join usuario_tipousuario as tu on tu.usuario_idusuario = u.idusuario
inner join tipousuario as t on t.idtipousuario = tu.tipousuario_idtipousuario;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_alumnosprofesorcurso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_alumnosprofesorcurso`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_alumnosprofesorcurso` AS
select distinct 
pc.profesor_idprofesor, pc.director, pc.curso_idcurso,
ac.idalumno_curso, ac.codigolista,
ac.ordenlista, ac.estado, ac.alumno_idalumno,
p.nombres, p.apellidos
from profesor_curso as pc 
inner join alumno_curso as ac on ac.curso_idcurso = pc.curso_idcurso
inner join alumno as a on a.idalumno = ac.alumno_idalumno
inner join persona as p on p.idpersona = a.persona_idpersona;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_profesorcursomateria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_profesorcursomateria`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_profesorcursomateria` AS
select distinct 
pc.*,
c.nombre as nombrecurso,
c.grado_idgrado,
c.estado as estadocurso,
m.nombre as nombremateria, 
m.estado as estadomateria, 
m.horassemana, 
m.area_idarea
from profesor_curso as pc 
inner join curso as c on c.idcurso = pc.curso_idcurso
inner join materia as m on m.idmateria = pc.materia_idmateria
order by nombremateria, curso_idcurso, materia_idmateria;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_profesorcurso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_profesorcurso`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_profesorcurso` AS
select pc.*, c.idcurso, c.nombre, c.estado, c.grado_idgrado,c.anioescolar_idanioescolar from profesor_curso as pc 
inner join curso as c on pc.curso_idcurso = c.idcurso
order by profesor_idprofesor, curso_idcurso, materia_idmateria;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_profesorcursomateriapersona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_profesorcursomateriapersona`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_profesorcursomateriapersona` AS
select pc.idprofesor_curso, pc.profesor_idprofesor, per.nombres, per.apellidos, pc.curso_idcurso, cu.grado_idgrado, cu.nombre as nombrecurso,
pc.materia_idmateria, ma.nombre as nombremateria
from profesor_curso as pc
inner join profesor as p on p.idprofesor = pc.profesor_idprofesor
inner join persona as per on p.persona_idpersona = per.idpersona
inner join curso as cu on cu.idcurso = pc.curso_idcurso
inner join materia as ma on ma.idmateria = pc.materia_idmateria
order by profesor_idprofesor, curso_idcurso, materia_idmateria;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_informealumnodatosalumno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_informealumnodatosalumno`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_informealumnodatosalumno` AS
select distinct ia.*,per.nombres, per.apellidos,alu.estado as estadoalumno,
acu.codigolista, acu.ordenlista
from informe_alumno as ia
inner join alumno as alu on alu.idalumno = ia.alumno_idalumno
inner join alumno_curso as acu on acu.alumno_idalumno = alu.idalumno and acu.curso_idcurso = ia.curso_idcurso
inner join persona as per on alu.persona_idpersona = per.idpersona
where ia.deleted_at is not null;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_evaluacionestandartipocurmat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_evaluacionestandartipocurmat`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_evaluacionestandartipocurmat` AS
SELECT eva.* , c.nombre as nombrecurso, m.nombre as nombremateria,
est.nombre as nombretipoestandar, est.porcentaje as porcentajetipoestandar,
tipoev.nombre as nombretipoevaluacion,
per.nombre as nombreperiodo,
pc.idprofesor_curso
FROM evaluacion as eva
inner join curso as c on c.idcurso = eva.curso_idcurso
inner join materia as m on m.idmateria = eva.materia_idmateria
inner join tipoestandar as est on est.idtipoestandar = eva.tipoestandar_idtipoestandar 
inner join tipoevaluacion as tipoev on tipoev.idtipoevaluacion = eva.tipoevaluacion_idtipoevaluacion
inner join periodo as per on per.idperiodo = eva.periodo_idperiodo
inner join profesor_curso as pc on pc.curso_idcurso = c.idcurso 
and pc.profesor_idprofesor = eva.profesor_idprofesor 
and pc.materia_idmateria = eva.materia_idmateria;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_evaluaciondetallealumnopersona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_evaluaciondetallealumnopersona`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_evaluaciondetallealumnopersona` AS
select eva.*, alu.estado as estadoalumno, alu.persona_idpersona, per.nombres, per.apellidos,
alcu.codigolista, alcu.ordenlista from evaluaciondetalle as eva 
inner join alumno as alu on eva.alumno_idalumno = alu.idalumno
inner join persona as per on per.idpersona = alu.persona_idpersona
inner join alumno_curso as alcu on alcu.alumno_idalumno = alu.idalumno;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_evaluaciondetallealumno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_evaluaciondetallealumno`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_evaluaciondetallealumno` AS
select ev.anioescolar_idanioescolar,ev.periodo_idperiodo,ev.curso_idcurso,ev.materia_idmateria,
te.idtipoestandar,te.nombre as nombretipoestandar,te.porcentaje,
eva.alumno_idalumno,
eva.evaluacion_idevaluacion, eva.nota,eva.letra, eva.observaciones, eva.estado, alu.estado as estadoalumno, alu.persona_idpersona,
 alcu.codigolista, alcu.ordenlista from evaluaciondetalle as eva 
inner join alumno as alu on eva.alumno_idalumno = alu.idalumno
inner join alumno_curso as alcu on alcu.alumno_idalumno = alu.idalumno
inner join evaluacion as ev on ev.idevaluacion = eva.evaluacion_idevaluacion
inner join tipoestandar as te on te.idtipoestandar = ev.tipoestandar_idtipoestandar;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_acumuladofallas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_acumuladofallas`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_acumuladofallas` AS
SELECT distinct f.anioescolar_idanioescolar, 
periodo_idperiodo, curso_idcurso, materia_idmateria, 
profesor_curso_idprofesor_curso, alumno_idalumno, sum(numerohoras) as cantidad FROM fallas as f 
where f.deleted_at is null
group by f.anioescolar_idanioescolar, 
periodo_idperiodo, curso_idcurso, materia_idmateria, 
profesor_curso_idprofesor_curso, alumno_idalumno;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_acudientealumno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_acudientealumno`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_acudientealumno` AS
SELECT fam.idfamiliar, falu.tipofamiliar_idtipofamiliar,fusr.usuario_idusuario,
falu.acudiente,falu.alumno_idalumno, alu.codigo, alu.estado as estadoalumno,
cur.nombre as nombrecurso,acur.curso_idcurso,acur.estado as estadocurso,
tdoc.nombre as nombretipodocumento,
per.* 
FROM familiar as fam 
inner join familiar_usuario as fusr on fam.idfamiliar = fusr.familiar_idfamiliar
inner join familiar_alumno as falu on falu.familiar_idfamiliar = fam.idfamiliar
inner join alumno as alu on alu.idalumno = falu.alumno_idalumno
inner join persona as per on per.idpersona = alu.persona_idpersona
inner join alumno_curso as acur on acur.alumno_idalumno=alu.idalumno
inner join curso as cur on cur.idcurso = acur.curso_idcurso
inner join tipodocumento as tdoc on tdoc.idtipodocumento = per.tipodocumento_idtipodocumento;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_directorcurso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_directorcurso`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_directorcurso` AS
select distinct pcu.profesor_idprofesor, pcu.curso_idcurso,per.nombres, per.apellidos, per.email, per.celular  from profesor_curso as pcu
inner join profesor as pro on pro.idprofesor =pcu.profesor_idprofesor
inner join persona as per on per.idpersona = pro.persona_idpersona
where pcu.director = '1';


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_evaluaciondetalle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_evaluaciondetalle`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_evaluaciondetalle` AS
select ev.anioescolar_idanioescolar,ev.periodo_idperiodo , ev.curso_idcurso,
ev.materia_idmateria, ev.fechaevaluacion, ev.detalle as detalleevaluacion, 
tipo.nombre as nombretipoevaluacion,
evdet.* 
from evaluaciondetalle as evdet
inner join evaluacion as ev on ev.idevaluacion = evdet.evaluacion_idevaluacion
inner join tipoevaluacion as tipo on tipo.idtipoevaluacion = ev.tipoevaluacion_idtipoevaluacion;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_mensajetipomensaje`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_mensajetipomensaje`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_mensajetipomensaje` AS
SELECT me.*,tm.nombre as nombretipomensaje,tm.class FROM mensaje as me 
inner join tipomensaje as tm on me.tipomensaje_idtipomensaje = tm.idtipomensaje;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_mensajecanalmensaje`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_mensajecanalmensaje`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_mensajecanalmensaje` AS
SELECT cm.*, c.nombre, c.parametros from mensaje_canalmensaje as cm
inner join canalmensaje as c on c.idcanalmensaje = cm.canalmensaje_idcanalmensaje;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_tipousuariousuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_tipousuariousuario`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_tipousuariousuario` AS
select ut.*, u.estado from usuario_tipousuario as ut
inner join usuario as u 
on ut.usuario_idusuario = u.idusuario;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_acudientealumnousuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_acudientealumnousuario`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_acudientealumnousuario` AS
select alcur.alumno_idalumno, alcur.curso_idcurso, falu.familiar_idfamiliar, faus.usuario_idusuario, 
alcur.estado as estadoalumnocurso
from alumno_curso as alcur
inner join familiar_alumno as falu on falu.alumno_idalumno = alcur.alumno_idalumno
inner join familiar_usuario as faus on faus.familiar_idfamiliar = falu.familiar_idfamiliar;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_acudientealumnopersona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_acudientealumnopersona`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_acudientealumnopersona` AS
select alcur.alumno_idalumno, alcur.curso_idcurso, falu.familiar_idfamiliar, 
alcur.estado as estadoalumnocurso,per.*
from alumno_curso as alcur
inner join familiar_alumno as falu on falu.alumno_idalumno = alcur.alumno_idalumno
inner join familiar as fam on fam.idfamiliar = falu.familiar_idfamiliar 
inner join persona as per on per.idpersona = fam.persona_idpersona;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_profesorcurso2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_profesorcurso2`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_profesorcurso2` AS
SELECT distinct pc.profesor_idprofesor, pc.curso_idcurso, c.nombre as nombrecurso, c.estado as estadocurso FROM profesor_curso as pc
inner join curso as c on c.idcurso =pc.curso_idcurso;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_acudienteusuariopersona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_acudienteusuariopersona`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_acudienteusuariopersona` AS
select familiar_idfamiliar, usuario_idusuario, pe.* from familiar_usuario as fu
inner join familiar as fa on fa.idfamiliar = fu.familiar_idfamiliar
inner join persona as pe on pe.idpersona = fa.persona_idpersona;


USE `enter4_liceocampestre`;

-- -----------------------------------------------------
-- View `enter4_liceocampestre`.`view_acumuladomateriaestandaralumno`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `enter4_liceocampestre`.`view_acumuladomateriaestandaralumno`;
USE `enter4_liceocampestre`;
CREATE  OR REPLACE VIEW `view_acumuladomateriaestandaralumno` AS
select 
ed.alumno_idalumno, e.curso_idcurso, e.materia_idmateria ,
e.tipoestandar_idtipoestandar, 
e.periodo_idperiodo, e.anioescolar_idanioescolar, 
(avg(ed.nota) * te.porcentaje) as nota_estandar_materia from evaluacion as e
inner join evaluaciondetalle as ed 
on ed.evaluacion_idevaluacion = e.idevaluacion
inner join tipoestandar as te on te.idtipoestandar = e.tipoestandar_idtipoestandar
where e.estado = 'activo' 
and ed.estado = e.estado 
and ed.alumno_idalumno=1
group by ed.alumno_idalumno, e.curso_idcurso, e.materia_idmateria ,
e.tipoestandar_idtipoestandar, 
e.periodo_idperiodo, e.anioescolar_idanioescolar;

DELIMITER $$
USE `enter4_liceocampestre`$$
CREATE PROCEDURE getPromedioCursoMatria(
	IN _idmateria INT,
    IN _idcurso INT, 
    IN _idperiodo INT,
    IN _idanioescolar INT
    )
BEGIN
	select AVG(nota) as promedio from evaluaciondetalle where estado='activo' and 
    alumno_idalumno = _idalumno 
	and evaluacion_idevaluacion in 
	(
		select idevaluacion from evaluacion 
		where estado='activo' and 
		tipoestandar_idtipoestandar = _idtipoestandar and
		curso_idcurso = _idcurso and 
		periodo_idperiodo = _idperiodo and 
		anioescolar_idanioescolar = _idanioescolar and 
		materia_idmateria = _idmateria
	)
	group by alumno_idalumno;

END$$

DELIMITER ;

DELIMITER $$
USE `enter4_liceocampestre`$$
CREATE PROCEDURE getPromedioEstandar(IN `_idalumno` INT, IN `_idtipoestandar` INT, IN `_idcurso` INT, IN `_idperiodo` INT, IN `_idanioescolar` INT, IN `_idmateria` INT)  BEGIN
	select AVG(nota) as promedio from evaluaciondetalle where estado='activo' and 
    alumno_idalumno = _idalumno 
	and evaluacion_idevaluacion in 
	(
		select idevaluacion from evaluacion 
		where estado='activo' and 
		tipoestandar_idtipoestandar = _idtipoestandar and
		curso_idcurso = _idcurso and 
		periodo_idperiodo = _idperiodo and 
		anioescolar_idanioescolar = _idanioescolar and 
		materia_idmateria = _idmateria
	)
	group by alumno_idalumno;

END$$

DELIMITER ;

DELIMITER $$
USE `enter4_liceocampestre`$$
CREATE PROCEDURE preCierrePeriodo(
    IN _idperiodo INT,
    IN _idanioescolar INT
    )
BEGIN
	
    DECLARE exit handler for sqlexception
  BEGIN
    -- ERROR
  ROLLBACK;
END;

DECLARE exit handler for sqlwarning
 BEGIN
    -- WARNING
--  ROLLBACK;
END;
   
   
   START TRANSACTION;
   
   TRUNCATE `_acumuladoestandar`;
   TRUNCATE `_acumuladofallas`;
   
   
   
   
insert into _acumuladofallas(anioescolar_idanioescolar, 
periodo_idperiodo, 
curso_idcurso, 
materia_idmateria, 
alumno_idalumno, numerohoras)
select distinct 
anioescolar_idanioescolar, 
periodo_idperiodo, 
curso_idcurso, 
materia_idmateria, 
alumno_idalumno, 
sum(numerohoras) as numerohoras 
from fallas as f
where f.deleted_at is null and estado ='activo'
and periodo_idperiodo = _idperiodo
and anioescolar_idanioescolar = _idanioescolar
group by anioescolar_idanioescolar, 
periodo_idperiodo, 
curso_idcurso, 
materia_idmateria, 
alumno_idalumno;
   
    
    
delete from informe_alumno_detalle where estado = 1 and periodo_idperiodo = _idperiodo; 

    
insert into _acumuladoestandar (alumno_idalumno, anioescolar_idanioescolar, periodo_idperiodo,
curso_idcurso, materia_idmateria, tipoestandar_idtipoestandar, nota,equivalente)
select ed.alumno_idalumno, 
e.anioescolar_idanioescolar,
e.periodo_idperiodo,
e.curso_idcurso, 
e.materia_idmateria,
e.tipoestandar_idtipoestandar,
avg(ed.nota) as nota,
(avg(ed.nota) * t.porcentaje) as equivalente
from evaluacion as e
inner join evaluaciondetalle as ed on e.idevaluacion = ed.evaluacion_idevaluacion
inner join tipoestandar as t on t.idtipoestandar = e.tipoestandar_idtipoestandar
where e.estado= 'activo' and ed.estado = e.estado
and e.periodo_idperiodo = _idperiodo
and e.anioescolar_idanioescolar = _idanioescolar
group by ed.alumno_idalumno, 
e.anioescolar_idanioescolar,
e.periodo_idperiodo,
e.curso_idcurso, 
e.materia_idmateria,
e.tipoestandar_idtipoestandar;



insert into informe_alumno_detalle  (alumno_idalumno, 
anioescolar_idanioescolar, 
periodo_idperiodo,
curso_idcurso, 
materia_idmateria, nota, estado,fallas)
select ae.alumno_idalumno, 
ae.anioescolar_idanioescolar, 
ae.periodo_idperiodo,
ae.curso_idcurso, 
ae.materia_idmateria, sum(ae.equivalente ) as nota, 1, af.numerohoras 
from _acumuladoestandar as ae 
left join _acumuladofallas as af on 
ae.alumno_idalumno = af.alumno_idalumno and
ae.anioescolar_idanioescolar = af.anioescolar_idanioescolar and
ae.periodo_idperiodo = af.periodo_idperiodo and
ae.curso_idcurso = af.curso_idcurso and
ae.materia_idmateria = af.materia_idmateria 
GROUP BY ae.alumno_idalumno, 
ae.anioescolar_idanioescolar, 
ae.periodo_idperiodo,
ae.curso_idcurso, 
ae.materia_idmateria;


COMMIT;

END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
