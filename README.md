# automatic-door-controller-using-mealy-FSM

**Aim of Automatic Door Controller Using Mealy FSM** 

The aim of the Automatic Door Closing System using a Finite State Machine (FSM) is to design a 
reliable and efficient control system that automatically opens and closes a door based on the 
presence of a person. 

The system detects the presence of a person using sensors, opens the door when a person approaches, keeps the door open for a specified period, and closes it automatically after a timeout if no one is detected. 

**Key objectives include:**

**1. Person Detection:**
Open the door when the sensor detects a person approaching. 

**2. Timed Closure:** After the door has opened and the person passes, close the door 
automatically after a certain timeout period. 

**3. Safety and Responsiveness:** If a person is detected while the door is closing, the door should reopen to avoid closing on the person. 

**4. State-Based Control:** Use FSM to model and manage the different states of the door (closed, opening, open, closing), ensuring efficient transitions between these states. 

**5. Motor Control:** Efficiently control the door motor based on the FSM, activating the motor only when necessary (i.e., during opening or closing). 

**The system should ensure:**

• Energy efficiency by reducing unnecessary motor activity.

• User safety by preventing the door from closing on a person.

• Smooth and responsive door control through the FSM's state transitions.
