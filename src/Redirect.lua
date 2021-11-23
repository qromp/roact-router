local Roact = require(script.Parent.Roact)
local withRouter = require(script.Parent.withRouter)

local Redirect = Roact.PureComponent:extend("Redirect")

function Redirect:render()
	return withRouter(function(router)
		local props = self.props
		local history = router.history

		if props.replace then
			history:replace(props.path, props.state)
		else
			history:push(props.path, props.state)
		end
	end)
end

return Redirect
