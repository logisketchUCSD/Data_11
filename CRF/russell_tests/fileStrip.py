#Russell Melick
#python script to strip data from files output for sketch recognition

import re


def strip(filename):
	f = open(filename, 'r')
	print filename + "\tNode\tLink"
	while True:
		line = f.readline()
		if line == '':
			break
		if line.startswith('=== LabelStage'):
			f.readline()
			timeLine = f.readline()
			for i in range(0,9):
				f.readline()
			nodeLine = f.readline()
			linkLine = f.readline()
			fileNumMatch = re.search('\d+', line)
			fileNum = fileNumMatch.group(0)
			nodes = re.findall('\d+', nodeLine)
			nodes = map(float, nodes)
			links = re.findall('\d+', linkLine)
			links = map(float, links)
			if nodes[0] + links[0] == 0:
				nodeAcc = -1
			else:
				nodeAcc = (nodes[0]) / (nodes[0] + links[0]+1*10**(-6))
			if nodes[1] + links[1] == 0:
				linkAcc = -1
			else:
				linkAcc = (links[1]) / (nodes[1] + links[1]+1*10**(-6))
			
			accPrint = "\t" + str(nodeAcc) + "\t" + str(linkAcc)
			
			if fileNum == '0':
				print "0" + accPrint
			elif fileNum == '1':
				print "1" + accPrint
			elif fileNum == '2':
				print "2" + accPrint
			elif fileNum == '3':
				print "3" + accPrint
			elif fileNum == '4':
				print "4" + accPrint
			elif fileNum == '5':
				print "5" + accPrint
			elif fileNum == '6':
				print "6" + accPrint
			elif fileNum == '7':
				print "7" + accPrint
			elif fileNum == '8':
				print "8" + accPrint
			elif fileNum == '9':
				print "9" + accPrint
			elif fileNum == '10':
				print "10" + accPrint
			elif fileNum == '11':
				print "11" + accPrint
			elif fileNum == '12':
				print "12" + accPrint
			elif fileNum == '13':
				print "13" + accPrint