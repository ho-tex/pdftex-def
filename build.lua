#!/usr/bin/env texlua

-- Build script for "pdftex-def" files

-- Identify the bundle and module
bundle = ""
module = "pdftex-def"

-- Just the one file to worry about
installfiles = {"pdftex.def"}
sourcefiles  = {"pdftex.def"}
typesetfiles = {}

-- TDS info (not required at present)
tdsroot = "pdftex"

-- No automated tests for this bundle
testfildir = ""


-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))
