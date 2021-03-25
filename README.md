## Notes
```
As a player
So that I can prepare for the game
I would like to *place* a **ship** in a **board location**
```

    1  2  3  4  5  6  7  8  9 10
A [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
B  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
C  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
D  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
E  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
F  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
G  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
H  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
I  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
J  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]

Input | Output
-|-
game.place_ship(['A', 1]) | alert "Ship placed successfully" and game.board = [[1, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]
game.place_ship(['A', 2]) | game.board = [[0, 1, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]
game.place_ship(['B', 1]) | [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [1, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]]
game.place_ship(['B', 0]) | Error: "Whoops! Please place your ship on the board!"
game.place_ship('B1') | Error: "Invalid data entry"
game.place_ship() | Error: "Please choose a place to put your ship"
game.place_ship(..[already selected location]..) | Error: "Ship already there"

## User stories

```
As a player
So that I can prepare for the game
I would like to place a ship in a board location

As a player
So that I can play a more interesting game
I would like to have a range of ship sizes to choose from

As a player
So the game is more fun to play
I would like a nice command line interface that lets me enter ship positions and shots using commands (rather than using IRB to interact with objects)

As a player
So that I can create a layout of ships to outwit my opponent
I would like to be able to choose the directions my ships face in

As a player
So that I can have a coherent game
I would like ships to be constrained to be on the board

As a player
So that I can have a coherent game
I would like ships to be constrained not to overlap

As a player
So that I can win the game
I would like to be able to fire at my opponent's board

As a player
So that I can refine my strategy
I would like to know when I have sunk an opponent's ship

As a player
So that I know when to finish playing
I would like to know when I have won or lost

As a player
So that I can consider my next shot
I would like to be able to see my hits and misses so far

As a player
So that I can play against a human opponent
I would like to play a two-player game
```
