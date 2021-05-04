tool
class_name ResFormatLoader  extends ResourceFormatLoader

func get_recognized_extensions() -> PoolStringArray:  return PoolStringArray(["txt"])
func handles_type( typename: String ) -> bool:  return typename == "Resource"
func get_resource_type( _path: String ) -> String:  return "Resource"

# Returning an error result in infinite loop despite documentation
func load( _load_path: String, _original_path: String ):
	return ERR_FILE_CANT_OPEN
