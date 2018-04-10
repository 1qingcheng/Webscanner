import requests
import sys
import getopt
import re
from termcolor import colored


def banner():
	print "\n++++++++++++++++++++++++++++++++"
	print "|	SQL Injection Scanner		|"
	print "++++++++++++++++++++++++++++++++++"

def usage():
	print "Usage:"
	print "-w: url (http://testsite.com/some.php?id=FUZZ)\n"
	print "-i: Injection Strings File \n"



def start(mylist):
	banner()
	if len(mylist) < 2:
		usage()
		sys.exit()
	try:
		opts, args = getopt.getopt(mylist,"w:i:")
	except getopt.GetoptError:
		print "Error an argumemts"
		sys.exit()
	for opt,arg in opts :
		if opt == '-w' :
			url=arg
		elif opt == '-i':
			dictio = arg
	try:
		print "Opening Injection File" + dictio
		f = open(dictio, "r")
		name = f.read().splitlines()
	except:
		print "Failed Opening File"+ dictio+"\n"
		sys.exit()
	launcher(url,name)

def launcher (url,dictio):
	injected = []
	for sqlinjection in dictio:
		injected.append(url.replaced("FUZZ",sqlinjection))
	res = injector(injected)
	print "\nDetection Result:"
	print "--------------------"
	for x in res:
		print x.split(";")[0]


def lancher(injected):
	errors =['Mysql','error in your SQL']
	result = []
	for y in injected:
		print "Testing Errors:" + y
		req=request.get(y)
		for x in errors:
			if req.content.find(X) != -1:
					res = y + ";" + x
					result.append(res)
	return result


start(sys.argv[1:])