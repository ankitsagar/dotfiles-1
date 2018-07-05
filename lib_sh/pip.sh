# pip_install()
#
# Usage:
#   pip_install <package-name>
#
# Description:
#   On linux, install a package to the user prefix (`~/.local`), and globally
#   install on other systems. The --user flag doesn't work properly with
#   homebrew-installed Python: http://git.io/vsfqN
###############################################################################
# Helpers
###############################################################################

# _pip_package_is_installed()
#
# Usage:
#   _pip_package_is_installed <name>
#
# Test whether a given pip package is installed on the system.
_pip_package_is_installed() {
  local _name="$1"
  [[ -n "$(pip list | grep "^${_name} (")" ]]
}

###############################################################################
# Packages
###############################################################################

# docutils
#
# Docutils is a modular system for processing documentation into useful
# formats, such as HTML, XML, and LaTeX. For input Docutils supports
# reStructuredText, an easy-to-read, what-you-see-is-what-you-get plaintext
# markup syntax.
#
# https://pypi.python.org/pypi/docutils
# http://docutils.sourceforge.net/
# http://docutils.sourceforge.net/README.html
require_pip docutils

# IPython
#
# A rich architecture for interactive computing.
#
# http://ipython.org/
require_pip "ipython[all]"

# Jupyter Notebook
#
# A rich architecture for interactive computing.
#
# http://jupyter.readthedocs.io/
require_pip jupyter

# Pandas
#
# Flexible and powerful data analysis / manipulation library for Python,
# providing labeled data structures similar to R data.frame objects,
# statistical functions, and much more.
#
# http://pandas.pydata.org/
# https://github.com/pydata/pandas
require_pip pandas

# pep8 - Python style guide checker
#
# pep8 is a tool to check your Python code against some of the style
# conventions in PEP 8.
#
# https://github.com/jcrocholl/pep8
require_pip pep8

# flake8 
#
# Flake8: Your Tool For Style Guide Enforcement
#
# http://flake8.pycqa.org/en/latest/
require_pip flake8

# virtualenv - Virtual Environments
#
# virtualenv is a tool to create isolated Python environments.
#
# https://virtualenv.pypa.io/en/latest/
# http://docs.python-guide.org/en/latest/dev/virtualenvs/
# https://pypi.python.org/pypi/virtualenv
require_pip virtualenv

# virtualenvwrapper
#
# virtualenvwrapper is a set of extensions to Ian Bicking’s virtualenv tool.
# The extensions include wrappers for creating and deleting virtual
# environments and otherwise managing your development workflow, making it
# easier to work on more than one project at a time without introducing
# conflicts in their dependencies.
#
# https://virtualenvwrapper.readthedocs.org/en/latest/
# https://bitbucket.org/dhellmann/virtualenvwrapper
# https://pypi.python.org/pypi/virtualenvwrapper/
require_pip virtualenvwrapper

