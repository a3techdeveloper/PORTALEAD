<?php

class TutorCurso {
    
    private $id_tutor_curso;
    private $id_curso;
    private $id_tutor;
    
    function getId_tutor_curso() {
        return $this->id_tutor_curso;
    }

    function getId_curso() {
        return $this->id_curso;
    }

    function getId_tutor() {
        return $this->id_tutor;
    }

    function setId_tutor_curso($id_tutor_curso) {
        $this->id_tutor_curso = $id_tutor_curso;
    }

    function setId_curso($id_curso) {
        $this->id_curso = $id_curso;
    }

    function setId_tutor($id_tutor) {
        $this->id_tutor = $id_tutor;
    }
    
}
