# duinocoin-docker
A simple docker image containing the Official Duinocoin Miner! https://www.duinocoin.com/

This image allows you to easily deploy a Duinocoin miner, which you can configure to mine with specific options, like number of threads, difficulty, etc. This repository is constantly updated as the Duinocoin team releases updates.

## Configuration

- USERNAME: Your username
- INTENSITY: Mining intensity
- THREADS: Number of threads the miner will use (the more the faster)
- DIFFICULTY: Hash difficulty

|   VARIABLE    | DEFAULT VALUE |       RANGE      |
| ------------- | ------------- | ---------------- |
|   USERNAME    |               |                  |
|   INTENSITY   |      95       |       1-100      |
|    THREADS    |       1       |                  |
|   DIFFICULTY  |      LOW      | LOW, MEDIUM, NET |

## How to run

- Example 1: docker run -e USERNAME="Lindtrs" lindtrs/duinocoin

Below there are some examples of how to run this image, please remember to set the variable ''USERNAME" to your own username!

Starts mining for Lindtrs, with intensity 95, using 1 thread and on low difficulty.

- Example 2: docker run -e USERNAME="Lindtrs" -e INTENSITY="50" -e THREADS="4" -e DIFFICULTY="MEDIUM" lindtrs/duinocoin

Starts mining for Lindtrs, with intensity 50, using 4 threads and on medium difficulty.

- Example 3: docker run -d -e USERNAME="Lindtrs" --restart=always lindtrs/duinocoin

Starts mining for Lindtrs, with intensity 95, using 1 thread and on low difficulty in detached mode with restart option set to always, this means the container will automatically restart if it crashes.

- Example 4: docker run --env-file env_vars duinocoin

Starts mining with the variables set in env_vars file.

## Contact

If you need any help, want to give feedback or anything, please contact me on Discord Lindtrs#9606



