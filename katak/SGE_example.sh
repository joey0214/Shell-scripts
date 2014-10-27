#!/bin/bash

#$ -N TEST_BLAST01
##The name of the job. Files created by SGE for standard error and standard output take this name

#$ -M your_email_here
##Your email if you want to receive notification

#$ -m bea
##Types of notification
##		b: when job start
##		e: when job finish
##		a: when job is stopped or killed by the system or the user

#$ -pe smp 2
##Number of cpu/core

#$ -l h_vmem=8G
##Resource limit parameters, "virtual memory" needed for the computation

#$ -l h_rt=1:00:00
##Resource limit parameters, "real time". The time needed to complete the computation:

#$ -cwd
##Execute the job from the current working directory

#$ -S /bin/bash
##Specifies the interpreting shell for the job:


#Some environmental variables here
export PRG=/prg/ncbiBlast/current/bin
export BANK=/biodata/blastdb

#Write the command line of your analyse here
$PRG/blastp -db $BANK/nr -query 1433_pea.fasta -evalue 1e-5 -num_threads 2 -out 
1433_pea_vs_nr.blastp


##then run "qsub SGE_example.sh" to submit job
## to delete/stop a job: "qdel job_id"
