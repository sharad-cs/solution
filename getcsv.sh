#/bin/bash
# $RANDOM returns a different random integer at each invocation.
# Nominal range: 0 - 32767 (signed 16-bit integer).
#inputFile="/root/assignment/csvserver/solution/inputFile";
touch inputFile
chmod -R 777 inputFile
MAXCOUNT=10
count=1
i=0

#echo
#echo "$MAXCOUNT random numbers:"
#echo "-----------------"
while [ "$count" -le $MAXCOUNT ]      # Generate 10 ($MAXCOUNT) random integers.
do
  number=$RANDOM
#  i=$((i+1))
  echo "$i,$number" >> inputFile
  i=$((i+1))
  let "count += 1"  # Increment count.
done
#echo "-----------------"

