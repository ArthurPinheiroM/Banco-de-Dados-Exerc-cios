from django.shortcuts import render
import pyodbc #pip install pyodbc
from django.http import HttpResponse
def home(request): 
    try:
 
        #UID = usuario do banco PWD = senha de acesso
        string_conexao = "Driver={ODBC Driver 17 for SQL Server};Server=.\SQLEXPRESS;Database=NorthWind;UID=sa;PWD=Senha@123"

        conexao = pyodbc.connect(string_conexao)
        print("Conexão Bem Sucedida!")


        cursor = conexao.cursor()

        cursor.execute("SELECT ProdutoID, NomeProduto, PrecoUnitario FROM Produtos")
        produtos = cursor.fetchall() # Trazer todos os dados de cursos.execute e guardar em produtos
        
        cursor.execute("SELECT CategoriaID, NomeCategoria FROM Categorias")
        categorias = cursor.fetchall() # Trazer todos os dados de cursos.execute e guardar em categorias

    except Exception as err:
        print(f"Erro BD: {err}")
    
    return render(request, "home.html", {"produtos" : produtos, "categorias" : categorias})
