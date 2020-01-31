# find all tasks with a config
tasks=$(find . -name "regression_*" -prune -o -name "config" -print)

for task in $tasks
do
	striped="${task%/config}"
    striped="${striped#./}"
    echo "${striped}"	
    ~/vtr-verilog-to-routing/vtr_flow/scripts/run_vtr_task.pl $striped    
done
