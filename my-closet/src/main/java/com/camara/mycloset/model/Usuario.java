package com.camara.mycloset.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usuario")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_usuario")
	Long idUsuario;

	@Column(name = "usuario")
	String usuario;
	
	@Column(name = "nombre")
	String nombre;
	
	@Column(name = "apellidos")
	String apellidos;

	@Column(name = "contrasenia")
	String contrasenia;

	@Column(name = "email")
	String email;

	public Usuario() {
	}

	public Usuario(Long idUsuario, String usuario, String nombre, String apellidos, String contrasenia, String email) {
		this.idUsuario = idUsuario;
		this.usuario = usuario;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.contrasenia = contrasenia;
		this.email = email;
	}

	public Long getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getContrasenia() {
		return contrasenia;
	}

	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
}
