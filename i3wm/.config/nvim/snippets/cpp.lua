local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
	s("!cpp", {
		t({ "#include <iostream>", "", "int main() {", "\t" }),
		i(0),
		t({ "", "\treturn 0;", "}" }),
	}),
})
