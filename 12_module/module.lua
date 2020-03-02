-- create a module name by module
module = {}

-- set a constant
module.constant = "this is a constant"

-- create a function
function module.func1() io.write("this is a public function!\n") end

local function func2() print("this is a private function") end

function module.func3() func2() end

return module
