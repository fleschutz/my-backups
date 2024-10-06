@echo off

REM    SORRY, THIS IS CURRENTLY WORK IN PROGRESS


backup()
{
	URL=$1
	wget --mirror --convert-links --adjust-extension --page-requisites --no-parent $URL --directory-prefix . --no-verbose
}

backup https://fleschutz.com
