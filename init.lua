local function zigfmt(file, path)
	local win = vis.win
	if win.syntax ~= "zig" then
		return true
	end
	local fmt = "zig fmt --stdin"
	local pos = win.selection.pos
	local status, out, err = vis:pipe(file, {start = 0, finish = file.size}, fmt)
	if status ~= 0 or not out then
		if err then
			vis:info(err)
		end
		return false
	end
	file:delete(0, file.size)
	file:insert(0, out)
	win.selection.pos = pos
	return true
end

vis.events.subscribe(vis.events.FILE_SAVE_PRE, zigfmt)
