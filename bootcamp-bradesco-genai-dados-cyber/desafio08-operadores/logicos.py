# Exemplo operador E ou AND

saldo = 1000
saque = 200
limite = 100
conta_especial = True

saldo >= saque and saque <= limite
### False

# Operador OU ou OR

saldo >= saque or saque <= limite
### True

# Operador NÃO ou NOT

not saldo >= saque and saque <= limite
### True

# Em estrutura condicional

if saldo >= saque and saque <= limite:
    print("Saque realizado")
else:
    print("Saldo insuficiente")

exp = saldo >= saque and saque <= limite or conta_especial and saldo >= saque
print(exp)
### False

exp_2 = (saldo >= saque and saque <= limite) or (conta_especial and saldo >= saque)
print(exp_2)
### True

conta_normal_com_saldo_suficiente = (saldo >= saque and saque <= limite)
print(conta_normal_com_saldo_suficiente)
### False

conta_especial_com_saldo_suficiente = (conta_especial and saldo >= saque)
print(conta_especial_com_saldo_suficiente)
### True

exp_3 = conta_normal_com_saldo_suficiente or conta_especial_com_saldo_suficiente
print(exp_3)
### True