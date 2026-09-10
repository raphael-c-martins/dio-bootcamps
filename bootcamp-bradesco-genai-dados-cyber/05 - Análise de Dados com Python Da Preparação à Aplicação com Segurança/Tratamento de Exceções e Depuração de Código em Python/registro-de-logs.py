# Logs e monitoramento - É uma forma de registrar eventos que ocorrem durante a execução do programa.

import logging

# Configurar o logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

# Níveis de log

# 1. DEBUG - Informações detalhadas, úteis para diagnosticar problemas.
# 2. INFO - Informações gerais sobre o funcionamento do programa.
# 3. WARNING - Situações que indicam possíveis problemas.
# 4. ERROR - Erros que ocorreram durante a execução.
# 5. CRITICAL - Erros críticos que podem causar o encerramento do programa.

def dividir(a, b):
    """Divide dois números e registra o resultado."""
    try:
        resultado = a / b
        logging.info(f"Divisão de {a} por {b} = {resultado}")
        return resultado
    except ZeroDivisionError:
        logging.error(f"Divisão por zero: {a} / {b}")
        return None
