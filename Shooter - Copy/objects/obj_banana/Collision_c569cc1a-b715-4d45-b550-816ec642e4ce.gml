/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 4CB98DAD
/// @DnDApplyTo : 7f760380-e132-4e5f-b3ab-50e72ce74fd0
/// @DnDArgument : "score" "10"
/// @DnDArgument : "score_relative" "1"
with(obj_controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0A86E400
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5C440DCA
/// @DnDArgument : "xpos" "irandom(1136)"
/// @DnDArgument : "ypos" "irandom(640)"
/// @DnDArgument : "objectid" "obj_banana"
/// @DnDSaveInfo : "objectid" "1ac8f95f-82f1-410d-bde7-61c0b2201571"
instance_create_layer(irandom(1136), irandom(640), "Instances", obj_banana);

/// @DnDAction : YoYo Games.Instance Variables.If_Score
/// @DnDVersion : 1
/// @DnDHash : 1B3EF26B
/// @DnDApplyTo : 7f760380-e132-4e5f-b3ab-50e72ce74fd0
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "100"
with(obj_controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
var l1B3EF26B_0 = __dnd_score >= 100;
}
if(l1B3EF26B_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 05F7BF0B
	/// @DnDParent : 1B3EF26B
	/// @DnDArgument : "xpos" "800"
	/// @DnDArgument : "ypos" "320"
	/// @DnDArgument : "objectid" "obj_scrambled"
	/// @DnDSaveInfo : "objectid" "d0579cc9-53e4-44a9-bbd6-eecbc3eab3d0"
	instance_create_layer(800, 320, "Instances", obj_scrambled);
}