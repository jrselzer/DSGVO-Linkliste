/^\-/ {
	filename = last ".md"
	gsub(/ /, "_", filename)
	gsub(/ü/, "ue", filename)
	gsub(/\?/, "", filename)
	print "New output: " filename
}
{
	line = $0
	if (last != "") {
		print last > filename
	}

	last = line
}
END {
	print line > filename
}
