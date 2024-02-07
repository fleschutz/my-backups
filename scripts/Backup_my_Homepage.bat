@echo off

REM    CURRENTLY THIS IS WORK IN PROGRESS


backup()
{
	URL=$1
	wget --mirror --convert-links --adjust-extension --page-requisites --no-parent $URL --directory-prefix . --no-verbose
}

backup https://fleschutz.com
