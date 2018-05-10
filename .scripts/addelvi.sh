#!/bin/sh
DATE=`date +%Y-%m-%d`
template=$"#!/bin/sh
#
# AUTHOR: aichp
#
# DATE: $DATE
#
# DESC: Elvi to open $1
# elvis: $1		-- open $1 ($2)
. surfraw || exit 1

w3_usage_hook () {
    cat <<EOF
Usage: \$w3_argv0 [options] 
Description:
  open $1 ($2)
EOF
    w3_global_usage
}

w3_parse_option_hook () {
    opt="\$1"
    optarg="\$2"
    case "\$opt" in
	-results=*) setopt   \$SURFRAW_results \$optarg	;;
	*) return 1 ;;
    esac
    return 
}
w3_config
w3_parse_args \$@
if test -z \$w3_args; then
    w3_browse_url $2
else
   
    escaped_args=\`w3_url_of_arg \$w3_args\`
    w3_browse_url "$2/\${escaped_args}"



fi"

echo "$template" > /home/$USER/.config/surfraw/elvi/$1
chmod +x "/home/$USER/.config/surfraw/elvi/$1" 

