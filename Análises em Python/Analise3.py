import matplotlib.pyplot as plt
import random

# Simulando a média de itens por pedido (já que não podemos conectar ao MySQL)
def calcular_media_itens_pedido():
    pedidos = [random.randint(1, 10) for _ in range(100)]  # Simulando 100 pedidos com itens aleatórios
    media_itens = sum(pedidos) / len(pedidos)
    return media_itens

# Calcular a média
media_itens = calcular_media_itens_pedido()

# Exibir resultado no console
print(f"Média de itens por pedido: {media_itens:.2f}")

# Criar gráfico
plt.figure(figsize=(5, 5))
plt.bar(["Média de Itens por Pedido"], [media_itens], color='blue')
plt.ylabel("Quantidade de Itens")
plt.title("Média de Itens por Pedido")
plt.ylim(0, max(media_itens * 1.5, 1))  # Ajuste do eixo Y para evitar zero
plt.show()