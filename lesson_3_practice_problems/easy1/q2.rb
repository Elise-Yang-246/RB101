# Describe the difference between ! and ? in Ruby. 
# And explain what would happen in the following scenarios:

# My guess before looking at documentation:

# "!" in Ruby means "not". It is also commonly used at the end of a method name to indicate that the method is destructive.
# "?" in Ruby is commonly used at the end of a method name to indicate a truthy/falsy return value. It's also used in a ternary operator as a short version of an if/else statement.

# 1. "!=" means 'does not equal'. It will return a boolean. You should use it in a conditional (eg: 1 != 2)
# 2. "!" flips the truthy/falsy evaluation. For example, if user_name evaluates as truthy, then !user_name will evaluate a falsy.
# 3. When "!" comes after something (eg: words.uniq!), it's a sign that the method could be destructive.
# 4. --> Not sure what "?" indicates when it comes before something. (Unless this question is asking about a ternary operator?)
# 5. When "?" comes after something (eg: win?), it indicates that the method returns a truthy/falsy value.
# 6. When "!!" comes before something (eg: !!user_name), it doesn't change the truthy/falsy evaluation. 
#     For example, if user_name evaluates as truthy, then !user_name flips the evaluation to falsy, and !!user_name flips it back to truthy.