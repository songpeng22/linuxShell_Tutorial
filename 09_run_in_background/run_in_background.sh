_V=1
function log () {
    if [[ $_V -eq 1 ]]; then
    # get current time, include ms
    current_time=$(date +"%Y-%m-%d %H:%M:%S.%3N")
        #echo "$@"
        echo "$current_time:$@"
    fi
}

start=$(date +%s%N)
log "tasks start:"
task1_var="Hello-1"
task2_var="Hello-2"
# create temp file to store variable
task1_var_file=$(mktemp)
task2_var_file=$(mktemp)
{
    echo "task1 Starting..."
    log "task1 start"
    task1_var="World-1"
    sleep 2
    echo "task1 Done!"
    log "task1 Done!"
    echo "Inside braces, task1: $task1_var"  # 输出: World
    echo "$task1_var" > "$task1_var_file"
} & 
(
    echo "task2 Starting..."
    log "task2 start"
    task2_var="World-2"
    sleep 3
    echo "task2 Done!"
    log "task2 Done!"
    echo "Inside parentheses, task2: $task2_var"  # 输出: World
    echo "$task2_var" > "$task2_var_file"
) &
wait
echo "Outside braces, task1: $task1_var"  # 输出: World
echo "Outside parentheses, task2: $task2_var"  # 输出: Hello
#read value from file
task1_var=$(<"$task1_var_file")
task2_var=$(<"$task2_var_file")
echo "Outside braces, task1 from file: $task1_var"  # 输出: World
echo "Outside parentheses, task2 from file: $task2_var"  # 输出: Hello
end=$(date +%s%N)
echo "task Elapsed time: $(($(($end-$start))/1000000)) ms"
log "tasks total done!"
