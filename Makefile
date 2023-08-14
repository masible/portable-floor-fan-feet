all: portable-floor-fan-foot.stl

portable-floor-fan-foot.stl: portable-floor-fan-foot.scad
	echo "use <portable-floor-fan-foot.scad> foot();" | openscad -o $@ -
