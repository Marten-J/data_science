import gym
import random
# Goal reach the top of the right mountain
env = gym.make('MountainCar-v0')
# How many actions the car should use to reach the top
steps = 200
# How often you want to repeat the process
rounds = 100

# Loop thorugh all rounds and 
# try to find a way to the top in the defined steps. 
# If the car reach the goal, 
# the score and the actions to reach the goal will be saved
# to evaluate and trai it in retrospect
for i_episode in range(rounds):
    env.reset()
    accepted_rounds = []
    game_actions = []
    score = 0

    for game_index in range(steps):
        env.render()
        action = random.randrange(0, 3)
        observation, reward, done, info = env.step(action)
        
        game_actions.append(action)
        
        score += reward
        if done:
            accepted_rounds.append([score, game_actions])
            break
        
print(accepted_scores)
env.close()