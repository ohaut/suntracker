

# We need a free (not only opensource) replacement that we could include into the repository
lib/spa/spa.h:
	@echo Downloading https://midcdmz.nrel.gov/spa/spa.h
	@curl -sL https://midcdmz.nrel.gov/spa/spa.h > lib/spa/spa.h

lib/spa/spa.cpp:
	@echo Downloading https://midcdmz.nrel.gov/spa/spa.c
	@curl 'https://midcdmz.nrel.gov/apps/download.pl' -H 'Origin: https://midcdmz.nrel.gov' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Referer: https://midcdmz.nrel.gov/spa/' --data 'name=Ohaut+suntracker+user&company=Ohaut&country=World&email=&software=SPA' --compressed  > lib/spa/spa.cpp


test: lib/spa/spa.h lib/spa/spa.cpp
	platformio test


run: lib/spa/spa.h lib/spa/spa.cpp
	platformio run

.PHONY: run test

