vtr_dir=~/workspace/vtr/

#./../../vpr/vpr ../arch/timing/xc6vlx240tff1156_modified.xml ../benchmarks/blif/seq.blif
#exit 0

../scripts/run_vtr_task.pl ramin_task
exit 0


# find all tasks with a config
tasks=$(find . -name "regression_*" -prune -o -name "config" -print)

for task in $tasks
do
	striped="${task%/config}"
    striped="${striped#./}"
    echo "${striped}"	
    echo ""
    ~/workspace/vtr-verilog-to-routing/vtr_flow/scripts/run_vtr_task.pl $striped
    
done
