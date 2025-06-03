# exodapt_robot_llm_server
LLM action server and client for Exodapt AI robots.



# Installation and build

Create and source virtual environment
```
# Create virtual environment with uv
uv venv llm_server_env --python 3.12
source llm_server_env/bin/activate

# Source ROS 2 after activating virtual environment
source /opt/ros/jazzy/setup.bash
```

```bash
git submodule init --update --recursive
```

Install python package dependencies
```
uv pip install -r requirements.txt
```

Build ROS 2 packages
```
cd ros2_ws
source run_colcon_build.sh

source install/setup.bash
```