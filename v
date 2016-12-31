#!/usr/bin/env python
import os
import optparse
from datetime import date
DIR="teste_bin"
data = str(date.today());
if not os.path.exists('back'):
    os.mkdir('back')
    pass

parser = optparse.OptionParser("Options:")
parser.add_option("-d", "--dir", dest="diretorio", help="especifica um diretorio", metavar='<Diretorio> <Nome>', nargs=2)
parser.add_option("-l", "--listar", dest="listar", help="especifica um diretorio", action="store_true", default=False)
(options, args) = parser.parse_args()
if options.listar:
    os.system("ls -lah back")
    pass
elif options.diretorio:
    if len(args)==2:
        os.system("tar -cvjf back/"+args[1]+"_"+ data +".tar.bz2 "+ args[0]);
        pass
    else:
        os.system("tar -cvjf back/"+ data +".tar.bz2 "+ args[0]);
        pass
    pass
else:
    if len(args)==1:
        os.system("tar -cvjf back/"+args[0]+"_"+ data +".tar.bz2 "+DIR);
        pass
    else:
        print("Argumentos invalidos")
        pass
