for file in `\find . -maxdepth 1 -name '*.csv'`; do
  ogr2ogr -oo X_POSSIBLE_NAMES="lon" -oo Y_POSSIBLE_NAMES="lat" -s_srs EPSG:4612 -t_srs EPSG:4326 -lco ENCODING="UTF-8" -f "ESRI Shapefile" ./shapefile/$file.shp ./$file 
done
