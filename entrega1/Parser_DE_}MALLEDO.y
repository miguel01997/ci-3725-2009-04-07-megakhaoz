class Parser


---- inner ----

def initialize(l)
    @lex =l
end

def parser
    do_parse
end

def next_token
    t= @lex.yylex
    if t== nil then return [false,false] end
    if t!=nil then return [t.class.to_s.to_sym, t.value] end
end

---- footer ----
