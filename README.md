# Basic

```bash
# > 
# redirects the stdout of a command to a file. 
# Overwrite the file if it already exists.
echo "foo" > a.txt

# <
# redirects file contents to stdin of command.
cat < a.txt

# >>
# append stdout of a command to a file
echo "foo" >> a.txt

# 2>
# redirects the stderr of a command to a file
echo "foo" 2> a.txt

# 2>>
# append the stderr of a command to a file
echo "foo" 2>> a.txt

# &>
# redirects stdout, stderr of a command to a file
echo "foo" 2>> a.txt

# 1>&2
# redirects stdout of a command to stderr
foo=$(echo "foo" 1>&2)
echo $foo

# 2>&1
# redirects stderr of a command to stdout
foo > /dev/null 2>&1
```
# Reference

- [Advanced Bash-Scripting Guide](http://www.tldp.org/LDP/abs/html/index.html)
