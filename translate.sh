for file in `\find . -maxdepth 1 -name '*.shp'`; do
  python ../ogr2osm.py -t ../translations/isj-trans.py -o ../outosm/$file.osm $file
done
