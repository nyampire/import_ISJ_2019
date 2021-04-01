for file in `\find . -maxdepth 1 -name '*.shp'`; do
  python ./ogr2osm/ogr2osm.py -t ./isj-trans.py -o ./outosm/$file.osm $file
done
