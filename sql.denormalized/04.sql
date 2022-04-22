SELECT count(distinct (data->>'id'))
FROM tweets_jsonb
WHERE to_tsvector('english',coalesce(data->>'text',data->'extended_tweet'->>'full_text'))@@to_tsquery('english','coronavirus') 
      and data->>'lang'='en';
