# waypoint_msgs

Shared **ROS 2 navigation messages for Selene**. Mission generators publish these messages to the controller, and the controller uses them to report progress. This is an interface-only package, with no executable navigation node.

## Messages

- [Waypoint](msg/Waypoint.msg): a `PASS` or `HOLD` target, NED x/y coordinates in metres, heading in radians, acceptance radius, desired velocity and heading/hold options.
- [Waypoints](msg/Waypoints.msg): an ordered array of waypoints.
- [WaypointStatus](msg/WaypointStatus.msg): the target waypoint, current position, distance and heading information.

The controller determines which fields are acted on. See [usv_controller](https://github.com/Sub-Horizon-NTNU/usv_controller) for execution and [usv_mission_package](https://github.com/Sub-Horizon-NTNU/usv_mission_package) for the mission API. [usv_logic](https://github.com/Sub-Horizon-NTNU/usv_logic) contains a small route-generation example.

## Build

Place the repository in a ROS 2 workspace's `src/` directory. After sourcing ROS 2, run from the workspace root:

```sh
colcon build --packages-select waypoint_msgs
source install/setup.bash
ros2 interface show waypoint_msgs/msg/Waypoint
```

Rebuild dependent packages after changing message definitions so that mission and controller nodes use the same interface.
