require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.

# -------------------------------------------------------------------------

# My guess before looking at solution:
# I found the documentation for YAML, but it is very sparse and has no methods listed.

# -------------------------------------------------------------------------

# After looking at solution:
# "The YAML module is an alias of Psych"