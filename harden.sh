docker run -it --interactive -v $OPENLANE_ROOT:/openLANE_flow \
		-v $PDK_ROOT:$PDK_ROOT \
        -v $(pwd):/project \
		-v $CARAVEL_ROOT:$CARAVEL_ROOT \
		-e PDK_ROOT=$PDK_ROOT \
		-e CARAVEL_ROOT=$CARAVEL_ROOT \
		-u $(id -u $USER):$(id -g $USER) \
		efabless/openlane:2021.09.19_20.25.16 \
        sh -c "tclsh /openLANE_flow/flow.tcl -design /project -config_file /project/openlane/config.tcl -save_path /project -save -tag user_project_wrapper -overwrite"
