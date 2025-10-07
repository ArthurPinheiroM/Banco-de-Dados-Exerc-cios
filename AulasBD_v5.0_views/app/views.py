from django.shortcuts import render

import pyodbc
from .util_conexao import *


def home(request):
    # define a página HTML (template) que deverá será carregada
    template = 'home.html'
    return render(request, template)


def exercicio1(request):
    # define a página HTML (template) que deverá será carregada
    template = 'ex1.html'
    try:
        # obtem a conexao com o BD
        conexao = obter_conexao()

        # define um cursor para executar comandos SQL
        cursor = conexao.cursor()

        # obtem a quantidade de registros de Instituicoes Financeiras
        sql = '''create view view_uf as
                    select  
                        uf
                    from Municipio m 


                 select distinct uf from view_uf
                 group by uf'''
        
        ufs = cursor.execute(sql).fetchall()


        # define a pagina a ser carregada, adicionando os registros das tabelas 
        return render(request, template, 
                    context={
                          'ufs': ufs
                    })
    
    # se ocorreu algunm erro, insere a mensagem para ser exibida no contexto da página 
    except Exception as err:
        return render(request, template, context={'ERRO': err})

