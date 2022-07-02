start=$(date +%s)
echo "$(tput setaf 6) ***** Pip Install Requirements Local ***** $(tput setaf 7)"
pip install -r requirements/local.txt
end=$(date +%s)
echo "$(tput setaf 6) ***** END of Pip Install Requirements Local ***** $(tput setaf 7)"
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
