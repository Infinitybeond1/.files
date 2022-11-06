-- mod-version:2 -- lite-xl 2.0
local syntax = require "core.syntax"

syntax.add {
  name = "V",
  files = "%.v$", "%.vsh$",
  headers = "^#!.*[ /]v\n",
  comment = "//",
  patterns = {
    { pattern = "//.-\n",                   type = "comment"  },
    { pattern = { "/%*", "%*/" },           type = "comment"  },
    { pattern = { '"', '"', '\\' },         type = "string"   },
    { pattern = { "'", "'", '\\' },         type = "string"   },
    { pattern = { "`", "`", '\\' },         type = "string"   },
    { pattern = "0x[%da-fA-F_]+",           type = "number"   },
    { pattern = "0b[01_]+",                 type = "number"   },
    { pattern = "00[01234567_]+",           type = "number"   },
    { pattern = "-?%.?%d+",                 type = "number"   },
    { pattern = "[%a_][%w_]*%f[(]",         type = "function" },
    { pattern = "[%+%-%*%/%%%~%&%|%^%!%=]", type = "operator" },
    { pattern = "%:%=",                     type = "operator" },
    { pattern = "%.%.%.?",                  type = "operator" },
    { pattern = "[%a_][%w_]*",              type = "symbol"   },
    { pattern = "%$%s?[%a_][%w_]*",         type = "keyword2" },
    { pattern = "%@%s?[%a_][%w_]*",         type = "keyword2" },
  },
  symbols = {
    ["as"] = "keyword",
    ["asm"] = "keyword",
    ["assert"] = "keyword",
    ["atomic"] = "keyword",
    ["break"] = "keyword",
    ["const"] = "keyword",
    ["continue"] = "keyword",
    ["defer"] = "keyword",
    ["else"] = "keyword",
    ["enum"] = "keyword",
    ["fn"] = "keyword",
    ["for"] = "keyword",
    ["go"] = "keyword",
    ["goto"] = "keyword",
    ["if"] = "keyword",
    ["import"] = "keyword",
    ["in"] = "keyword",
    ["interface"] = "keyword",
    ["is"] = "keyword",
    ["isreftype"] = "keyword",
    ["lock"] = "keyword",
    ["match"] = "keyword",
    ["module"] = "keyword",
    ["mut"] = "keyword",
    ["or"] = "keyword",
    ["pub"] = "keyword",
    ["return"] = "keyword",
    ["rlock"] = "keyword",
    ["select"] = "keyword",
    ["shared"] = "keyword",
    ["sizeof"] = "keyword",
    ["static"] = "keyword",
    ["struct"] = "keyword",
    ["type"] = "keyword",
    ["typeof"] = "keyword",
    ["union"] = "keyword",
    ["unsafe"] = "keyword",
    ["__offsetof"] = "keyword",

    ["bool"] = "keyword2",
    ["i8"] = "keyword2",
    ["i16"] = "keyword2",
    ["int"] = "keyword2",
    ["i64"] = "keyword2",
    ["i128"] = "keyword2",
    ["u8"] = "keyword2",
    ["u16"] = "keyword2",
    ["u32"] = "keyword2",
    ["u64"] = "keyword2",
    ["u128"] = "keyword2",
    ["f32"] = "keyword2",
    ["f64"] = "keyword2",
    ["byte"] = "keyword2",
    ["char"] = "keyword2",
    ["rune"] = "keyword2",
    ["chan"] = "keyword2",
    ["string"] = "keyword2",
    ["map"] = "keyword2",
    ["voidptr"] = "keyword2",
    ["thread"] = "keyword2",

    ["true"] = "literal",
    ["false"] = "literal",
    ["none"] = "literal",
  },
}
