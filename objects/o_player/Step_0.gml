/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E357E9B
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "spd"
spd = 5;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3F620E8B
/// @DnDArgument : "key" "ord("D")"
var l3F620E8B_0;
l3F620E8B_0 = keyboard_check(ord("D"));
if (l3F620E8B_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 776CADE7
	/// @DnDParent : 3F620E8B
	/// @DnDArgument : "value" "spd"
	/// @DnDArgument : "value_relative" "1"
	x += spd;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0511A30C
/// @DnDArgument : "key" "ord("A")"
var l0511A30C_0;
l0511A30C_0 = keyboard_check(ord("A"));
if (l0511A30C_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1A89FF25
	/// @DnDParent : 0511A30C
	/// @DnDArgument : "value" "-spd"
	/// @DnDArgument : "value_relative" "1"
	x += -spd;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 03200CDD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_floor"
/// @DnDSaveInfo : "object" "o_floor"
var l03200CDD_0 = instance_place(x + 0, y + 0, o_floor);
if ((l03200CDD_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4677955D
	/// @DnDParent : 03200CDD
	/// @DnDArgument : "type" "2"
	vspeed = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Friction
	/// @DnDVersion : 1
	/// @DnDHash : 0937A59D
	/// @DnDParent : 03200CDD
	friction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 390251D8
	/// @DnDParent : 03200CDD
	/// @DnDArgument : "force" "0"
	gravity = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1831D5A7
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 6D469F24
	/// @DnDParent : 1831D5A7
	/// @DnDArgument : "force" "0.8"
	gravity = 0.8;
}