start=$(date +%s)
echo "$(tput setaf 6) ***** Pre-commit Run All ***** $(tput setaf 7)"
pre-commit run --all-files
echo "$(tput setaf 6) ***** END of Pre-commit Run All ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
