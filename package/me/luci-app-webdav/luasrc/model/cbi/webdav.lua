

m = Map("webdav")
m.title	= translate("webdav config")
m.description = translate("webdav Serever")

m:section(SimpleSection).template  = "webdav/webdav_status"

s = m:section(TypedSection, "webdav")
s.addremove = false
s.anonymous = true

s:tab("basic", translate("Basic Setting"))
enable = s:taboption("basic",Flag, "enabled", translate("Enable"))
enable.rmempty = false

autoactivate = s:taboption("basic", Flag, "autoactivate", translate("End Logo"))
autoactivate.rmempty = false

o = s:taboption("basic", Value, "locallog", translate("Local log"))
o.placeholder = "/mnt/webdav.log"

s:tab("config", translate("Config File"))
config = s:taboption("config", Value, "config", translate("configfile"), translate("This file is /etc/webdav.yml."), "")
config.template = "cbi/tvalue"
config.rows = 13
config.wrap = "off"

function config.cfgvalue(self, section)
	return nixio.fs.readfile("/etc/webdav.yml")
end

function config.write(self, section, value)
	value = value:gsub("\r\n?", "\n")
	nixio.fs.writefile("/etc/webdav.yml", value)
end

return m
