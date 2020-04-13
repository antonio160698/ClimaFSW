import pygame

#inicializar pygame
pygame.init()
#create the screen
screen = pygame.display.set_mode((800,600))
#title
pygame.display.set_caption("Space Invaders")
icon = pygame.image.load('alien.png')
pygame.display.set_icon(icon)
#player game
playerImg = pygame.image.load('alien.png')
playerX = 300
playerY = 400
playerX_change = 0
playerY_change = 0

enemyImg = pygame.image.load('alien.png')
enemyX = 300
enemyY = 400
enemyX_change = 0
enemyY_change = 0

def enemy(x,y):
    screen.blit(enemyImg,(x,y))
def player(x,y):
    screen.blit(playerImg, (x, y))
#game loop
running = True
while running:
    #rgb = red, green, blue
    screen.fill((255,225,0))
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_LEFT:
                playerX_change = -0.1
            if event.key == pygame.K_RIGHT:
                playerX_change = 0.1
            if event.key == pygame.K_UP:
                playerY_change = -0.1
            if event.key == pygame.K_DOWN:
                playerY_change = 0.1
        if event.type == pygame.KEYUP:
            if event.key == pygame.K_LEFT or event.key == pygame.K_RIGHT:
                playerX_change = 0
            if event.key == pygame.K_UP or event.key == pygame.K_DOWN:
                playerY_change = 0

    playerX += playerX_change
    playerY += playerY_change
    if playerX <= 0:
        playerX = 0
    elif playerX >= 736:
        playerX = 700 
    player(playerX,playerY)

    pygame.display.update()