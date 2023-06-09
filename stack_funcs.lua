-- Define the stack --
stack_funs = {}

function stack_funs:new(o)
  o = o or {}
  setmetatable(o, self)
  self.Stack = {}
  self.__index = self
  return o
end

function stack_funs:push(item)
  table.insert(self.Stack, item)
end

function stack_funs:pop()
  local val = self.Stack[#self.Stack]
  table.remove(self.Stack)
  return val
end

function stack_funs:reverse()
  local item = {}
  for i=#self.Stack, 1, -1 do
      table.insert(item, self.Stack[i])
  end
  self.Stack = item
end

return stack_funs