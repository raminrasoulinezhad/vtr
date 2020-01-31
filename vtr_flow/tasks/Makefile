.PHONY: ramin_task vpr_xc6 regressions

vtr_dir=~/vtr/

test_xc6:
	#./../../vpr/vpr ../arch/timing/xc6vlx240tff1156_modified.xml ../benchmarks/blif/seq.blif
	../scripts/run_vtr_task.pl regression_tests/vtr_reg_weekly/vpr_ispd

ramin_task:
	../scripts/run_vtr_task.pl ramin_task

regressions:
	./run_all_modified.sh
