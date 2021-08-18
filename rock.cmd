[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

[Command]
name = "rising_storm_x"
command = ~D,DF,F,D,DF,F,x
time = 25

[Command]
name = "rising_storm_y"
command = ~D,DF,F,D,DF,F,y
time = 25

[Command]
name = "shine_knuckle_a"
command = ~D,DF,F,D,DF,F,a
time = 25

[Command]
name = "shine_knuckle_b"
command = ~D,DF,F,D,DF,F,b
time = 25

[Command]
name = "reppuken_x"
command = ~D,DF,F,x
time = 20

[Command]
name = "reppuken_y"
command = ~D,DF,F,y
time = 20

[Command]
name = "hard_edge_x"
command = ~D,DB,B,x
time = 20

[Command]
name = "hard_edge_y"
command = ~D,DB,B,y
time = 20

[Command]
name = "crack_counter_a"
command = ~D,DF,F,a
time = 20

[Command]
name = "crack_counter_b"
command = ~D,DF,F,b
time = 20

[Command]
name = "rage_run_a"
command = ~D,DB,B,a
time = 20

[Command]
name = "rage_run_b"
command = ~D,DB,B,b
time = 20

[Command]
name = "rising_tackle_x"
command = ~25$D,U,x
time = 25

[Command]
name = "rising_tackle_y"
command = ~25$D,U,y
time = 25

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

[Command]
name = "recovery"
command = x+y+z
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Statedef -1]
[State -1, Defesa]
type = ChangeState
triggerall = ((RoundState = 2) && ((Var(59) = 1^^Var(59) = 2)) && (Ctrl))
triggerall = (EnemyNear,MoveType = A) && (StateType = S)
trigger1 = Random <= 999
value = 130

[State -1, Defesa Abaixado]
type = ChangeState
triggerall = ((RoundState = 2) && ((Var(59) = 1^^Var(59) = 2)) && (Ctrl))
triggerall = (EnemyNear,MoveType = A) && (StateType = C)
trigger1 = Random <= 999
value = 131

[State -1, Defesa Aérea]
type = ChangeState
triggerall = ((RoundState = 2) && ((Var(59) = 1^^Var(59) = 2)) && (Ctrl))
triggerall = (EnemyNear,MoveType = A) && (StateType = A)
trigger1 = Random <= 999
value = 132

[State -1, Rising Storm]
type = ChangeState
value = ifelse(Var(4)=3,3070,3050)
triggerall = (Command="rising_storm_x"||Command="rising_storm_y")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)

[State -1, Shine Knuckle]
type = ChangeState
value = 3000
triggerall = (Command = "shine_knuckle_a"||Command = "shine_knuckle_b")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Reppuken]
type = ChangeState
value = 1000
triggerall = Command = "reppuken_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Double Reppuken]
type = ChangeState
value = 1004
triggerall = Command = "reppuken_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Hard Edge]
type = ChangeState
value = 1020
triggerall = Command = "hard_edge_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Hard Edge]
type = ChangeState
value = 1021
triggerall = Command = "hard_edge_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Rage Run]
type = ChangeState
value = 1030
triggerall = (Command="rage_run_a"||Command="rage_run_b")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 210 && MoveContact)

[State -1, Rising Tackle]
type = ChangeState
value = 1010
triggerall = (Command = "rising_tackle_x"||Command = "rising_tackle_y")
trigger1 = Statetype != A
trigger1 = Ctrl
trigger2 = (StateNo = 200 && MoveContact)

[State -1, Crack Counter]
type = ChangeState
value = 1050
triggerall = Command="crack_counter_a"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Crack Counter]
type = ChangeState
value = 1053
triggerall = Command="crack_counter_b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Power Charge]
type = ChangeState
value = 800
triggerall = ((Command = "holdc"&&Command = "holdz")&&Power<3000)
triggerall = StateType = S
trigger1 = Ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Soco Fraco]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Soco Forte]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 220 && MoveContact)

[State -1, Chute Fraco]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Chute Forte]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = 200 && MoveContact)
trigger3 = (StateNo = 220 && MoveContact)

[State -1, Soco Fraco Abaixado]
type = ChangeState
value = 300
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Soco Forte Abaixado]
type = ChangeState
value = 305
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 300 && MoveContact)
trigger3 = (StateNo = 310 && MoveContact)

[State -1, Chute Fraco Abaixado]
type = ChangeState
value = 310
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Chute Forte Abaixado]
type = ChangeState
value = 315
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo = 300 && MoveContact)
trigger3 = (StateNo = 310 && MoveContact)

[State -1, Soco Fraco Aéreo]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Soco Forte Aéreo]
type = ChangeState
value = 405
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 400 && MoveContact)
trigger3 = (StateNo = 410 && MoveContact)

[State -1, Chute Fraco Aéreo]
type = ChangeState
value = 410
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Chute Forte Aéreo]
type = ChangeState
value = 415
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = 400 && MoveContact)
trigger2 = (StateNo = 410 && MoveContact)