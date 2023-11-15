_error()
{
    echo "Error at: ${1} while executing '${2}'" >&2
}

trap '_error "${LINENO}" "${BASH_COMMAND}"' ERR

set -euo pipefail

if [ "${DEBUG:=false}" == "true" ]
then
    set -x
fi
