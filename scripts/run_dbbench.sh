#!/bin/bash
#set -x

NUMTHREAD=1
#BENCHMARKS="customed99hot1k_100k,\
#customed80hot1k_100k,\
#customeduniform1k_100k,\
#customed99hot4k_100k,\
#customed80hot4k_100k,\
#customeduniform4k_100k,\
#customed99hot1k_500k,\
#customed80hot1k_500k,\
#customeduniform1k_500k,\
#customed99hot4k_500k,\
#customed80hot4k_500k,\
#customeduniform4k_500k"
#customed99hot1k_1000k,\
#customed80hot1k_1000k,\
#customeduniform1k_1000k,\
#customed99hot4k_1000k,\
#customed80hot4k_1000k,\
#customeduniform4k_1000k,\
#customeduniform256_1000k,\
#customeduniform256_15000k,\
#customeduniform256_10000k"

#BENCHMARKS="customed99hot1k_100k"
#BENCHMARKS="customed80hot1k_100k"
#BENCHMARKS="customeduniform1k_100k"
#BENCHMARKS="customed99hot4k_100k"
#BENCHMARKS="customed80hot4k_100k"
#BENCHMARKS="customeduniform4k_100k"
#BENCHMARKS="customed99hot1k_500k"
#BENCHMARKS="customed80hot1k_500k"
#BENCHMARKS="customeduniform1k_500k"
#BENCHMARKS="customed99hot4k_500k"
#BENCHMARKS="customed80hot4k_500k"
#BENCHMARKS="customeduniform4k_500k"
#BENCHMARKS="customed99hot1k_1000k"
#BENCHMARKS="customed80hot1k_1000k"
BENCHMARKS="customeduniform1k_1000k"
#BENCHMARKS="customed99hot4k_1000k"
#BENCHMARKS="customed80hot4k_1000k"
#BENCHMARKS="customeduniform4k_1000k"
#BENCHMARKS="customeduniform256_1000k"
#BENCHMARKS="customeduniform256_5000k"
#BENCHMARKS="customeduniform256_10000k"

#NoveLSM specific parameters
#NoveLSM uses memtable levels, always set to num_levels 2
#write_buffer_size DRAM memtable size in MBs
#write_buffer_size_2 specifies NVM memtable size; set it in few GBs for perfomance;
OTHERPARAMS="--write_buffer_size=$DRAMBUFFSZ  --nvm_buffer_size=$NVMBUFFSZ"

#valgrind --verbose --log-file=valgrind --leak-check=full  --show-leak-kinds=all $DBBENCH/db_bench --threads=$NUMTHREAD --benchmarks=$BENCHMARKS $OTHERPARAMS
$DBBENCH/db_bench --threads=$NUMTHREAD --benchmarks=$BENCHMARKS $OTHERPARAMS
#gdb $DBBENCH/db_bench --threads=$NUMTHREAD --benchmarks=$BENCHMARKS $OTHERPARAMS

#Run all benchmarks
#$APP_PREFIX $DBBENCH/db_bench --threads=$NUMTHREAD --num=$NUMKEYS --value_size=$VALUSESZ \
#$OTHERPARAMS --num_read_threads=$NUMREADTHREADS

