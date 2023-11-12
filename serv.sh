#!/bin/bash
#
serv_cfg="sipserv.cfg";
silent_mode=0

 ./sipserv -s $silent_mode --config-file $serv_cfg
