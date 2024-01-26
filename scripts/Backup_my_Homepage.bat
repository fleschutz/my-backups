#!/bin/sh

backup()
{
	URL=$1
	wget --mirror --convert-links --adjust-extension --page-requisites --no-parent $URL --directory-prefix . --no-verbose
}

backup https://fleschutz.droppages.com
#backup http://www.schorerhof.de
#backup https://sites.google.com/site/posaunenchorguenzach
#backup https://www.atcsim.de
#backup https://www.x-software.com
