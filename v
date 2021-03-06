#!/usr/bin/env python
import os
import optparse
from datetime import date
DIR="teste_bin"
data = str(date.today());
if not os.path.exists('back'):
    os.mkdir('back')
parser = optparse.OptionParser("Options:")
parser.add_option("-d", "--dir", dest="diretorio", help="especifica um diretorio", metavar='<Diretorio> <Nome>', nargs=2)
parser.add_option("-l", "--listar", dest="listar", help="especifica um diretorio", action="store_true", default=False)
(options, args) = parser.parse_args()
if len(args)==1 and not options.listar:
        os.system("tar -cvjf back/"+args[0]+"_"+ data +".tar.bz2 "+DIR);
elif options.listar:
    os.system("ls -lah back")
elif options.diretorio:
    if len(options.diretorio)==2:
        os.system("tar -cvjf back/"+options.diretorio[1]+"_"+ data +".tar.bz2 "+ options.diretorio[0]);
    else:
        os.system("tar -cvjf back/"+ data +".tar.bz2 "+ options.diretorio[0]);
else:
    print("Argumentos invalidos. Digite --help para ver argumentos")
