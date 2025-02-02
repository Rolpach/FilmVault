import 'dart:ffi';

import 'package:drift/drift.dart';

//Creacion de tablas (entidades)
@DataClassName('user')
class user extends Table{
  IntColumn get id_user => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get paternal_name => text()();
  IntColumn get age => integer()();
  IntColumn get id_type => integer()();
  TextColumn get username => text()();
  TextColumn get password => text()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('type_user')
class type_user extends Table{
  IntColumn get id_type_user => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('profile')
class profile extends Table{
  IntColumn get id_profile => integer().autoIncrement()();
  IntColumn get id_user => integer()();
  TextColumn get mail_linked => text()();
  TextColumn get type_mail => text()();
  TextColumn get profile_image => text().nullable()();
  TextColumn get profile_description => text().nullable()();
  TextColumn get recommendation => text().nullable()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('configurations')
class configurations extends Table{
  IntColumn get id_configuration => integer().autoIncrement()();
  IntColumn get id_theme => integer().nullable()();
  IntColumn get id_user => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('theme')
class theme extends Table{
  IntColumn get id_theme => integer().autoIncrement()();
  TextColumn get description => text()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('friend')
class friend extends Table{
  IntColumn get id_friend => integer().autoIncrement()();
  IntColumn get id_user => integer()();
  IntColumn get id_user_friend => integer()();
  TextColumn get description => text()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName("title")
class title extends Table {
  IntColumn get id_title => integer().autoIncrement()();
  TextColumn get title_name => text()();
  TextColumn get year => text()();
  TextColumn get rated => text()();
  DateTimeColumn get released => dateTime()();
  IntColumn get runtime => integer()();
  TextColumn get genre => text()();
  TextColumn get director => text()();
  TextColumn get writer => text()();
  TextColumn get actors => text()();
  TextColumn get plot => text()();
  TextColumn get language => text()();
  TextColumn get country => text()();
  TextColumn get awards => text()();
  TextColumn get poster => text()();
  IntColumn get metascore => integer()();
  TextColumn get imbdID => text()();
  RealColumn get imdbRating => real()();
  IntColumn get imdbVotes => integer()();
  TextColumn get type => text()();
  RealColumn get box_office => real()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();  // Nullable
}

@DataClassName('local_title')
class local_title extends Table {
  IntColumn get id_local_title => integer().autoIncrement()();
  TextColumn get title_name => text()();
  TextColumn get year => text()();
  IntColumn get id_rated => integer()();
  DateTimeColumn get released => dateTime()();
  IntColumn get runtime => integer()();
  IntColumn get id_group_genre => integer()();
  TextColumn get director => text()();
  TextColumn get writer => text()();
  TextColumn get actors => text()();
  TextColumn get plot => text()();
  TextColumn get language => text()();
  TextColumn get country => text()();
  TextColumn get awards => text()();
  TextColumn get poster => text()();
  IntColumn get metascore => integer()();
  TextColumn get imbdID => text()();
  RealColumn get imdbRating => real()();
  IntColumn get imdbVotes => integer()();
  TextColumn get type => text()();
  RealColumn get box_office => real()();
  BoolColumn get success => boolean()();
  IntColumn get views => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('group_genre')
class group_genre extends Table {
  IntColumn get id_group_genre => integer().autoIncrement()();
  IntColumn get id_genre => integer()();
  IntColumn get id_local_title => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('genre')
class genre extends Table {
  IntColumn get id_genre => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('rating')
class rating extends Table {
  IntColumn get id_rate => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('favorite')
class favorite extends Table {
  IntColumn get id_favorite => integer().autoIncrement()();
  IntColumn get id_local_title => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('playlist')
class playlist extends Table {
  IntColumn get id_playlist => integer().autoIncrement()();
  IntColumn get id_user => integer()();
  IntColumn get id_playlist_movies => integer()();
  TextColumn get description => text()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('playlist_movie')
class playlist_movie extends Table {
  IntColumn get id_playlist_movie => integer().autoIncrement()();
  IntColumn get id_playlist => integer()();
  IntColumn get id_local_title => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('user_stats')
class user_stats extends Table {
  IntColumn get id_user_stats => integer().autoIncrement()();
  IntColumn get id_user => integer()();
  IntColumn get title_fav => integer().nullable()();
  IntColumn get genre_fav => integer().nullable()();
  TextColumn get decade_fav => text().nullable()();
  TextColumn get year_fav => text().nullable()();
  TextColumn get actor_fav => text().nullable()();
  IntColumn get average_duration => integer().nullable()();
  IntColumn get most_viewed_title => integer().nullable()();
  IntColumn get most_rated_title_viewed => integer().nullable()();
  TextColumn get director_fav => text().nullable()();
  TextColumn get country_fav => text().nullable()();
  IntColumn get best_friend => integer().nullable()();
  IntColumn get oldest_title => integer().nullable()();
  TextColumn get last_movie_has_seen => text().nullable()();
  DateTimeColumn get created_at => dateTime()();  // No nullable
  DateTimeColumn get updated_at => dateTime().nullable()();  // Nullable
}

@DataClassName('medal')
class medal extends Table {
  IntColumn get id_medal => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('group_medal')
class group_medal extends Table {
  IntColumn get id_group_medal => integer().autoIncrement()();
  IntColumn get id_user => integer()();
  IntColumn get id_medal => integer()();
}

@DataClassName('achievement')
class achievement extends Table {
  IntColumn get id_achievement => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('group_achievement')
class group_achievement extends Table {
  IntColumn get id_group_achievment => integer().autoIncrement()();
  IntColumn get id_user => integer()();
  IntColumn get id_achievment => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('functionality')
class functionality extends Table {
  IntColumn get id_functionality => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('watch_history')
class watch_history extends Table {
  IntColumn get id_watch_history => integer().autoIncrement()();
  TextColumn get action => text()();
  IntColumn get id_title => integer()();
  IntColumn get id_user => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('functionality_user')
class functionality_user extends Table {
  IntColumn get id_functionality_user => integer().autoIncrement()();
  IntColumn get id_functionality => integer()();
  IntColumn get id_user => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('titleInteraction_history')
class titleInteraction_history extends Table {
  IntColumn get id_title_interaction => integer().autoIncrement()();
  TextColumn get id_action => text()();
  IntColumn get id_title => integer()();
  TextColumn get comments => text().nullable()();
  IntColumn get id_user => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

@DataClassName('action')
class action extends Table {
  IntColumn get id_action => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}

//Interacciones planteadas
// 1.- Watched
// 2.- Added
// 3. -Deleted
// 4.- Finished

@DataClassName('search_history')
class search_history extends Table {
  IntColumn get id_history => integer().autoIncrement()();
  TextColumn get search => text()();
  IntColumn get id_user => integer()();
  DateTimeColumn get created_at => dateTime()();
  DateTimeColumn get updated_at => dateTime().nullable()();
}
