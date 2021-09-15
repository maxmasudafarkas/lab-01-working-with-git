/*
  What are the 5 closest business to the Graduate School of Education building
  (3700 Walnut St) that aren't owned by the Trustees of UPenn? Try using
  https://geojson.io/ to get the coordinates of GSE.

  Hint: There are two ways to get the distance from one geometry to another in
  PostgresSQL:
  1. ST_Distance (https://postgis.net/docs/ST_Distance.html)
  2. The distance operator (https://postgis.net/docs/geometry_distance_knn.html)

  The latter should be used if getting distances for ORDER BY.
*/

SELECT ST_Distance(the_geom, 'SRID=4326;POINT(-75.19725859165192 39.95323858211971)'::geometry)
AS distance
FROM public.business_licenses