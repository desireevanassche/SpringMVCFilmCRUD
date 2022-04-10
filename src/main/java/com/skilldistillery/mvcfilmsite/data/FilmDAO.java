package com.skilldistillery.mvcfilmsite.data;

import java.util.List;

import com.skilldistillery.mvcfilmsite.entities.Film;
import com.skilldistillery.mvcfilmsite.entities.Actor;

public interface FilmDAO {
	
	public Film findFilmById(int filmId);

	public Actor findActorById(int actorId);

	public List<Actor> findActorsByFilmId(int filmId);

	public String findLanguageByFilmId(int filmId);

	public List<Film> findFilmBySearchKeyword(String keyword);

	public Film createFilm(Film film);


	public boolean deleteFilm(Film film);

	public Film updateFilm(Film film, int filmid);


}
