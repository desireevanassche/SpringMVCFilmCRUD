package com.skilldistillery.mvcfilmsite.entities;

import java.util.List;
import java.util.Objects;

public class FilmCategory {

private String name; 
private int id; 


public FilmCategory() {
}


@Override
public int hashCode() {
	return Objects.hash(id, name);
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	FilmCategory other = (FilmCategory) obj;
	return id == other.id && Objects.equals(name, other.name);
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}


@Override
public String toString() {
	return "FilmCategory [name=" + name + ", id=" + id + "]";
}
}
