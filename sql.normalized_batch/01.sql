/*
 * Count the number of tweets that use #coronavirus
 */
SELECT count(distinct id_tweets)
FROM tweet_tags
WHERE tag='#coronavirus';

/*create index on tweet_tags(tag, id_tweets);*/
