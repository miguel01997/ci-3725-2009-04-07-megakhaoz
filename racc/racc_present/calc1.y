# Uses StringScanner for lexing

# simple calc parser

class Calcp

  prechigh
    nonassoc UMINUS
    left '*' '/'
    left '+' '-'
  preclow

rule

  target: exp
        | /* none */ { result = 0 }
        ;BIMI

	# note result = val[0] by default
  exp: exp '+' exp { result += val[2] }
     | exp '-' exp { result -= val[2] }
     | exp '*' exp { result *= val[2] }
     | exp '/' exp { result /= val[2] }
     | '(' exp ')' { result = val[1] }
     | '-' NUMBER  = UMINUS { result = -val[1] }
     | NUMBER
     ;

end


---- header ----

# calc.rb : generated by racc

require 'strscan' 

---- inner ----
  
  def parse( str )
    @q = []
		scanner = StringScanner.new(str)

    until scanner.empty?
      case
				when scanner.scan(/\s+/)
					# ignore space
				when m = scanner.scan(/\d+/)
					@q.push [:NUMBER, m.to_i]
				when m = scanner.scan(/.|\n/)
					@q.push [m, m]
      end
    end
    @q.push [false, false]

		#yyparse(@q, :each)
    do_parse
  end

  def next_token
    @q.shift
  end


---- footer ----

parser = Calcp.new
count = 0
scnt  = 0

puts
puts 'type "Q" to quit.'
puts

while true do
  puts
  print '? '
  str = gets.chop!
  break if /q/i === str

  begin
    val = parser.parse( str )
    print '= ', val, "\n"
  rescue ParseError
    puts $!
  rescue
    puts 'unexpected error ?!'
    raise
  end

end
