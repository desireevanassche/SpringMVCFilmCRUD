package com.skilldistillery.mvcfilmsite.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;

import com.skilldistillery.mvcfilmsite.entities.Actor;
import com.skilldistillery.mvcfilmsite.entities.Film;
import com.skilldistillery.mvcfilmsite.entities.FilmCategory;

public class FilmDaoJdbcImpl implements FilmDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=US/Mountain";

	private String user = "student";
	private String pass = "student";

	@Override
	public Film findFilmById(int filmId) {
		Film film = null;

		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT id, title, description, release_year, language_id,"
					+ " rental_duration, rental_rate, length, replacement_cost," + " rating, special_features "
					+ " FROM film WHERE id = ?";

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				film = new Film();
				film.setId(rs.getInt(1));
				film.setTitle(rs.getString("title"));
				film.setDescription(rs.getString("description"));
				film.setReleaseYear(rs.getInt("release_year"));
				film.setLanguageID(rs.getInt("language_id"));
				film.setRentalDuration(rs.getInt("rental_duration"));
				film.setRantalRate(rs.getDouble("rental_rate"));
				film.setLength(rs.getInt("length"));
				film.setReplacementCost(rs.getDouble("replacement_cost"));
				film.setRating(rs.getString("rating"));
				film.setSpecialFeatures(rs.getString("special_features"));
				film.setLanguage(findLanguageByFilmId(film.getId()));
				film.setActors(findActorsByFilmId(filmId));
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return film;
	}

	@Override
	public List<Film> findFilmBySearchKeyword(String keyword) {

		List<Film> films = new ArrayList<>();

		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT id, title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features FROM film WHERE title LIKE ? OR description LIKE ?";

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, "%" + keyword + "%");
			stmt.setString(2, "%" + keyword + "%");

			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Film film = new Film();
				film.setId(rs.getInt("id"));
				film.setTitle(rs.getString("title"));
				film.setDescription(rs.getString("description"));
				film.setReleaseYear(rs.getInt("release_year"));
				film.setLanguageID(rs.getInt("language_id"));
				film.setRentalDuration(rs.getInt("rental_duration"));
				film.setRantalRate(rs.getDouble("rental_rate"));
				film.setLength(rs.getInt("length"));
				film.setReplacementCost(rs.getDouble("replacement_cost"));
				film.setRating(rs.getString("rating"));
				film.setSpecialFeatures(rs.getString("special_features"));
				film.setActors(findActorsByFilmId(film.getId()));
				film.setLanguage(findLanguageByFilmId(film.getId()));
				films.add(film);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

//		System.out.println(films);
		return films;
	}

	@Override
	public Actor findActorById(int actorId) {

		Actor actor = null;

		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT id, first_name, last_name" + " FROM actor WHERE id = ?";

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, actorId);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				actor = new Actor();
				actor.setId(rs.getInt("id"));
				actor.setFirstName(rs.getString("first_name"));
				actor.setLastName(rs.getString("last_name"));
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return actor;
	}

	@Override
	public List<Actor> findActorsByFilmId(int filmId) {

		List<Actor> actors = new ArrayList<>();
		// Actor query for film ID

		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT id, first_name, last_name "
					+ "FROM actor JOIN film_actor ON actor.id = film_actor.actor_id " + "WHERE film_actor.film_id = ?";

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {

				// Instantiate new Actor for each rs row,
				// Add to actors List.
				Actor actor = new Actor();
				actor.setId(rs.getInt("id"));
				actor.setFirstName(rs.getString("first_name"));
				actor.setLastName(rs.getString("last_name"));
				actors.add(actor);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return actors;
	}

	@Override
	public String findLanguageByFilmId(int filmId) {

		String languageName = null;

		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT l.name FROM language l JOIN film f ON l.id = f.language_id WHERE f.id = ?";

			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				languageName = rs.getString("name");
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return languageName;
	}

//========================================createFilm() Method Added==============================================

	@Override
	public Film createFilm(Film film) {
		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "INSERT INTO film"
					+ "(title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features"
					+ " ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getReleaseYear());
			stmt.setInt(4, film.getLanguageID());
			stmt.setInt(5, film.getRentalDuration());
			stmt.setDouble(6, film.getRantalRate());
//			stmt.setInt(7, film.getLength());
			stmt.setInt(7, 99);

			stmt.setDouble(8, film.getReplacementCost());
			stmt.setString(9, film.getRating());
			stmt.setString(10, film.getSpecialFeatures());

			System.out.println(stmt);
			int updateCount = stmt.executeUpdate();
			if (updateCount == 1) {
				ResultSet rs = stmt.getGeneratedKeys();
				if (rs.next()) {
					film.setId(rs.getInt(1));
				}
				rs.close();
			}

			stmt.close();
			conn.close();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			film = null;
		}

		return film;
	}

	@Override	
	public boolean deleteFilm(Film film) {
			Connection conn = null;
			try {
				conn = DriverManager.getConnection(URL, user, pass);
				
				conn.setAutoCommit(false); // START TRANSACTION
				
				String sql = "DELETE FROM film WHERE id = ?";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setInt(1, film.getId());
				int updateCount = stmt.executeUpdate();
				
				conn.commit(); // COMMIT TRANSACTION
			} catch (SQLException sqle) {
				sqle.printStackTrace();
				if (conn != null) {
					try {
						conn.rollback();
					} catch (SQLException sqle2) {
						System.err.println("Error trying to rollback");
					}
				}
				return false;
			}
			return true;
		}


	@Override
	public Film updateFilm(Film film, int filmId) {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, user, pass);
			String sql = "UPDATE film SET title=?, description=?, release_year=?, language_id=?, rental_duration=?, length=?, replacement_cost=?, rating=?, special_features=? WHERE id=?";
			conn.setAutoCommit(false);
			PreparedStatement stmt = conn.prepareStatement(sql);

			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getReleaseYear());
			stmt.setInt(4, film.getLanguageID());
			stmt.setInt(5, film.getRentalDuration());
//			stmt.setInt(6, film.getLength());
			stmt.setInt(6, 99);
			stmt.setDouble(7, film.getReplacementCost());
			stmt.setString(8, film.getRating());
			stmt.setString(9, film.getSpecialFeatures());
			stmt.setInt(10, filmId);

			System.out.println(stmt);
			int updateCount = stmt.executeUpdate();
			if (updateCount == 0) {
				return film;
			}

			conn.commit();
			stmt.close();
			conn.close();

		} catch (SQLException sqle) {
			sqle.printStackTrace();
			if (conn != null) {
				try {
					conn.rollback();
				} catch (SQLException sqle2) {
					System.err.println("Error trying to rollback");

				}

			}

			throw new RuntimeException("Error updating film " + film.getTitle());
		}

		return film;

	}

	public FilmCategory findFilmCategories(int filmId) {
	 FilmCategory category = new FilmCategory(); 

		Connection conn = null;

		try {
			conn = DriverManager.getConnection(URL, user, pass);
			String sql = "SELECT c.id, c.name FROM category c" + " JOIN film_category cat on c.id = cat.category_id"
					+ " JOIN film f on cat.film_id = f.id" + " WHERE f.id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);

			ResultSet catResult = stmt.executeQuery();

			while (catResult.next()) {
				category.setId(catResult.getInt(1));
				category.setName(catResult.getString(2));
			

			}
			
			stmt.close();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return category;

	}

//======================================================================================================================
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("Driver not found.");
			throw new RuntimeException("Unable to load MySQL driver class");
		}
	}
}