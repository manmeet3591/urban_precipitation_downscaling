for year in {2000..2020}

do
cd $year
for file in *.nc
  do
    echo $file
    cdo sellonlatbox,261,264,29,32 $file ${file::-3}_austin.nc
    mv ${file::-3}_austin.nc ../austin/.
done
cd ../
done
