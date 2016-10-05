class MathDojo
	attr_accessor :result
	def initialize(result=0)
		self.result = result
	end

	def mAdd(*args)
		args = flat(args)
		for i in 0...args.length
			self.result +=args[i]
		end
		self
	end

	def mSubtract(*args)
		args = flat(args)
		for i in 0...args.length
			self.result -=args[i]
		end
		self
	end

	protected

	def flat(*args)
		$newArgs = []
		def check(arr)
			for i in 0...arr.length
				if arr[i].is_a?(Numeric)
					$newArgs.push(arr[i])
				else
					check(arr[i])
				end
			end
		end
		check(args)
		$newArgs
	end

end


math = MathDojo.new()

puts math.mAdd(2.3,4).mSubtract(3).result
