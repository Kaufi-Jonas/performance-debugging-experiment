# Tools

## General
```bash
htop
find <directory> -name <file_name>
nano
```

## CPU

```bash
mpstat -P ALL 1
pidstat 1
```

## Memory

```bash
free -h -s 1
pidstat -r --human 1
```

## Disk

```bash
iostat -x -y -d -h 1
pidstat -d --human 1

```

# Sysbench Expected Results

## Experiment 2

- 10 MiB/s read
- 7 MiB/s write
- 2.5 ms latency

