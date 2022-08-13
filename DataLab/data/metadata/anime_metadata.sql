-- All Anime 
    COMMENT ON TABLE anime_stage.all_anime
        IS 'All suitable for work anime titles from My Anime List';

    COMMENT ON COLUMN anime_stage.all_anime.anime_id
        IS 'The My Anime List id of the anime';

    COMMENT ON COLUMN anime_stage.all_anime.anime_title
        IS 'The title of the anime';

    COMMENT ON COLUMN anime_stage.all_anime.status
        IS 'Airing status ("Finished Airing" "Currently Airing" "Not yet aired")';

    COMMENT ON COLUMN anime_stage.all_anime.rating
        IS 'Anime audience rating ("G - All Ages" "PG - Children" "PG-13 - Teens 13 or older" "R - 17+ (violence & profanity)" "R+ - Mild Nudity" "Rx - Hentai")';

    COMMENT ON COLUMN anime_stage.all_anime.avg_score
        IS 'Average fan rating (out of 10)';

    COMMENT ON COLUMN anime_stage.all_anime.favorites
        IS 'Number of users who have favorited this entry';

    COMMENT ON COLUMN anime_stage.all_anime.airing
        IS 'Indicates whether an anime is currently airing';

    COMMENT ON COLUMN anime_stage.all_anime.aired_from
        IS 'Date that anime first started airing';

    COMMENT ON COLUMN anime_stage.all_anime.aired_to
        IS 'Date that anime stopped airing if off the air';
    -- Anime Scores
    COMMENT ON TABLE anime_stage.scores
        IS 'A collection of scores rating the popularity of a given anime on a scale of 1-10';
    
    COMMENT ON COLUMN anime_stage.scores.anime_id
        IS 'The id of the anime';

    COMMENT ON COLUMN anime_stage.scores.score
        IS 'Scoring value';

    COMMENT ON COLUMN anime_stage.scores.votes
        IS 'Number of votes for this score';

    COMMENT ON COLUMN anime_stage.scores.percentage
        IS 'Percentage of votes for this score';

    COMMENT ON COLUMN anime_stage.scores.load_date
        IS 'Date/time that scores were extracted and loaded';

    -- Anime Stats
    COMMENT ON TABLE anime_stage.stats
        IS 'A collection of anime statistics from MyAnimeList';

    COMMENT ON COLUMN anime_stage.stats.anime_id
        IS 'The id of the anime';

    COMMENT ON COLUMN anime_stage.stats.watching
        IS 'Number of users watching the resource';

    COMMENT ON COLUMN anime_stage.stats.completed
        IS 'Number of users who have completed the resource';

    COMMENT ON COLUMN anime_stage.stats.on_hold
        IS 'Number of users who have put the resource on hold';

    COMMENT ON COLUMN anime_stage.stats.dropped
        IS 'Number of users who have dropped the resource';

    COMMENT ON COLUMN anime_stage.stats.plan_to_watch
        IS 'Number of users who have planned to watch the resource';

    COMMENT ON COLUMN anime_stage.stats.total
        IS 'Total number of users who have the resource added to their lists';

    COMMENT ON COLUMN anime_stage.stats.load_date
        IS 'Date/time that stats were extracted and loaded'; 