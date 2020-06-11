#!/bin/sh
#
# AUTHOR: aichp
#
# DATE: 2019-09-29
#
# DESC: Elvi to open sync.com
# elvis: sync.com		-- open sync.com (https://cp.sync.com/login)
. surfraw || exit 1

w3_usage_hook () {
    cat <<EOF
Usage: $w3_argv0 [options] 
Description:
  open sync.com (https://cp.sync.com/login)
EOF
    w3_global_usage
}

w3_parse_option_hook () {
    opt=$1
    optarg=$2
    case $opt in
	-results=*) setopt   $SURFRAW_results $optarg	;;
	*) return 1 ;;
    esac
    return 
}
w3_config
w3_parse_args $@
if test -z $w3_args; then
    w3_browse_url https://cp.sync.com/login
else
   
    escaped_args=`w3_url_of_arg $w3_args`
    w3_browse_url https://cp.sync.com/login/${escaped_args}



fi
