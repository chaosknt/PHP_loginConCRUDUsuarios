<?php

class Conexion{

	static public function conectar(){

		$link = new PDO("");

		$link->exec("set names utf8");

		return $link;

	}

}
