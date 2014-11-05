#!/user/bin/bash

# Job: 5genomes alignment
# Submit date: 2014-11-05
# Program: muscle

#$ -N TEST_BLAST01
##The name of the job. Files created by SGE for standard error and standard output take this name
$ -N ALIGNMENT_5GENOMES_20141105

#$ -M your_email_here
##Your email if you want to receive notification
$ -m joey0214.zhong@gmail.com

#$ -m bea
##Types of notification
##		b: when job start
##		e: when job finish
##		a: when job is stopped or killed by the system or the user
$-m bea

#$ -pe smp 2
##Number of cpu/core
$ -pe smp 6

#$ -l h_vmem=8G
##Resource limit parameters, "virtual memory" needed for the computation

#$ -l h_rt=1:00:00
##Resource limit parameters, "real time". The time needed to complete the computation:

#$ -cwd
##Execute the job from the current working directory

#$ -S /bin/bash
##Specifies the interpreting shell for the job:


#Some environmental variables here
# export PRG=/prg/ncbiBlast/current/bin
# export BANK=/biodata/blastdb

#Write the command line of your analyse here

$./muscle3.8.31_i86linux64 -in ./alignment/5genomes/5yeast_genomes.fasta -out ./alignment/5genomes/alignment_output.fasta -maxiters 1 -diags


##then run "qsub SGE_example.sh" to submit job
