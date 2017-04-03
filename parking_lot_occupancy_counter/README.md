# Parking lot occupancy counter
Consider a parking lot with a single entry and exit gate. Two pairs of photo sensors are used to monitor the activity of cars, as shown below.

![Alt text](/path/to/img.jpg "Optional title")

When an object is between the photo transmitter and the photo receiver, the light is blocked and the corresponding output is asserted to 1. By monitoring the events of two sensors, we can determine whether a car is entering or exiting or a pedestrian is passing through. For example, the following sequence indicates that a car enters the lot:

* Initially, both sensors are unblocked (i.e., the a and b signals are "00").

Design a parking lot occupancy counter as follows:
