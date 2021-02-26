# Set env variables loaded from encrypted environment file
#
# Usage: loadenv /path/to/encrypted/envfile
#
# Based on http://lewandowski.io/2016/10/fish-env/

function loadenv
	for i in (sops -d $argv)
		set arr (echo $i |tr = \n)
		# Set variable if line doesn't start with a comment: "#"
		if string match -v -q '#*' $arr[1]
  		    set -gx $arr[1] $arr[2]
  		end
	end
end