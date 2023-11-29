local ls = require 'luasnip'

ls.snippets = {
    all = {
        ls.parser.parse_snippet("test", "Ceci est un snippet test."),
    },
}

