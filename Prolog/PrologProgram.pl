% Ingredients
ingredient(tomato).
ingredient(basil).
ingredient(garlic).
ingredient(olive_oil).
ingredient(toasted_bread).
ingredient(mozzarella).
ingredient(balsamic_glaze).
ingredient(cured_meats).
ingredient(cheese).
ingredient(olives).
ingredient(artichokes).
ingredient(bread).
ingredient(butter).
ingredient(parsley).
ingredient(mushrooms).
ingredient(breadcrumbs).
ingredient(parmesan_cheese).
ingredient(spaghetti).
ingredient(eggs).
ingredient(pancetta).
ingredient(black_pepper).
ingredient(penne).
ingredient(chili_peppers).
ingredient(fettuccine).
ingredient(heavy_cream).
ingredient(gluten_free_fusilli).
ingredient(assorted_vegetables).
ingredient(red_pepper_flakes).
ingredient(pizza_dough).
ingredient(tomato_sauce).
ingredient(pepperoni).
ingredient(ricotta).
ingredient(gluten_free_pizza_dough).
ingredient(prosciutto).
ingredient(fresh_arugula).
ingredient(breaded_chicken).
ingredient(marinara_sauce).
ingredient(breaded_eggplant).
ingredient(salmon_fillet).
ingredient(lemon).
ingredient(quinoa).
ingredient(black_beans).
ingredient(corn).
ingredient(bell_peppers).
ingredient(chicken_breast).
ingredient(capers).
ingredient(white_wine).
ingredient(mascarpone_cheese).
ingredient(coffee).
ingredient(ladyfingers).
ingredient(cocoa_powder).
ingredient(milk).
ingredient(sugar).
ingredient(gelatin).
ingredient(vanilla).
ingredient(assorted_fresh_fruits).
ingredient(chocolate_chips).
ingredient(pastry_shell).

% Ingredient types
vegetable(tomato).
vegetable(basil).
vegetable(garlic).
vegetable(artichokes).
vegetable(parsley).
vegetable(mushrooms).
vegetable(bell_peppers).
vegetable(assorted_vegetables).
herb(basil).
herb(parsley).
dairy(mozzarella).
dairy(cheese).
dairy(parmesan_cheese).
dairy(butter).
dairy(ricotta).
dairy(heavy_cream).
dairy(mascarpone_cheese).
dairy(milk).
meat(cured_meats).
meat(pancetta).
meat(pepperoni).
meat(prosciutto).
meat(breaded_chicken).
meat(chicken_breast).
grain(toasted_bread).
grain(breadcrumbs).
grain(spaghetti).
grain(penne).
grain(fettuccine).
grain(gluten_free_fusilli).
grain(pizza_dough).
grain(gluten_free_pizza_dough).
grain(ladyfingers).
grain(pastry_shell).
fat(olive_oil).
fat(butter).
protein(eggs).
protein(capers).
seafood(salmon_fillet).
fruit(lemon).
fruit(assorted_fresh_fruits).

% Calories per ingredient
calories(herbs, 40). 
calories(tomato, 18).
calories(basil, 22).
calories(garlic, 149).
calories(olive_oil, 884).
calories(toasted_bread, 265).
calories(mozzarella, 280).
calories(balsamic_glaze, 80).
calories(cured_meats, 400).
calories(cheese, 402).
calories(olives, 115).
calories(artichokes, 60).
calories(bread, 265).
calories(butter, 717).
calories(parsley, 36).
calories(mushrooms, 22).
calories(breadcrumbs, 395).
calories(parmesan_cheese, 431).
calories(spaghetti, 131).
calories(eggs, 155).
calories(pancetta, 541).
calories(black_pepper, 255).
calories(penne, 131).
calories(chili_peppers, 40).
calories(fettuccine, 131).
calories(heavy_cream, 342).
calories(gluten_free_fusilli, 131).
calories(assorted_vegetables, 50).
calories(red_pepper_flakes, 318).
calories(pizza_dough, 265).
calories(tomato_sauce, 29).
calories(pepperoni, 504).
calories(ricotta, 174).
calories(gluten_free_pizza_dough, 265).
calories(prosciutto, 337).
calories(fresh_arugula, 25).
calories(breaded_chicken, 239).
calories(marinara_sauce, 70).
calories(breaded_eggplant, 120).
calories(salmon_fillet, 206).
calories(lemon, 29).
calories(quinoa, 120).
calories(black_beans, 132).
calories(corn, 86).
calories(bell_peppers, 20).
calories(chicken_breast, 165).
calories(capers, 23).
calories(white_wine, 82).
calories(mascarpone_cheese, 453).
calories(coffee, 2).
calories(ladyfingers, 388).
calories(cocoa_powder, 228).
calories(milk, 42).
calories(sugar, 387).
calories(gelatin, 62).
calories(vanilla, 288).
calories(assorted_fresh_fruits, 50).
calories(chocolate_chips, 546).
calories(pastry_shell, 450).

% Gluten-free ingredients
gluten_free(gluten_free_fusilli).
gluten_free(gluten_free_pizza_dough).

% Lactose-free ingredients
lactose_free(tomato).
lactose_free(basil).
lactose_free(garlic).
lactose_free(olive_oil).
lactose_free(toasted_bread).
lactose_free(balsamic_glaze).
lactose_free(cured_meats).
lactose_free(olives).
lactose_free(artichokes).
lactose_free(bread).
lactose_free(parsley).
lactose_free(mushrooms).
lactose_free(breadcrumbs).
lactose_free(spaghetti).
lactose_free(eggs).
lactose_free(pancetta).
lactose_free(black_pepper).
lactose_free(penne).
lactose_free(chili_peppers).
lactose_free(assorted_vegetables).
lactose_free(red_pepper_flakes).
lactose_free(tomato_sauce).
lactose_free(pepperoni).
lactose_free(gluten_free_pizza_dough).
lactose_free(prosciutto).
lactose_free(fresh_arugula).
lactose_free(marinara_sauce).
lactose_free(salmon_fillet).
lactose_free(lemon).
lactose_free(quinoa).
lactose_free(black_beans).
lactose_free(corn).
lactose_free(bell_peppers).
lactose_free(chicken_breast).
lactose_free(capers).
lactose_free(white_wine).
lactose_free(coffee).
lactose_free(assorted_fresh_fruits).

% Calorie-conscious threshold (example threshold: 500 calories)
calorie_threshold(500).

% meal(Name, [List_of_Ingredients]).
meal(bruschetta, [tomato, basil, garlic, olive_oil, toasted_bread]).
meal(caprese_salad, [tomato, mozzarella, basil, olive_oil, balsamic_glaze]).
meal(antipasto_platter, [cured_meats, cheese, olives, artichokes]).
meal(garlic_bread, [bread, garlic, butter, parsley]).
meal(stuffed_mushrooms, [mushrooms, breadcrumbs, garlic, parmesan_cheese, herbs]).

meal(spaghetti_carbonara, [spaghetti, eggs, pancetta, parmesan_cheese, black_pepper]).
meal(penne_arrabbiata, [penne, tomato, garlic, chili_peppers, parsley]).
meal(fettuccine_alfredo, [fettuccine, butter, heavy_cream, parmesan_cheese]).
meal(gluten_free_fusilli_primavera, [gluten_free_fusilli, assorted_vegetables, olive_oil, garlic]).
meal(spaghetti_aglio_e_olio, [spaghetti, garlic, olive_oil, red_pepper_flakes, parsley]).

meal(margherita_pizza, [pizza_dough, tomato, mozzarella, basil, olive_oil]).
meal(pepperoni_pizza, [pizza_dough, tomato_sauce, mozzarella, pepperoni]).
meal(vegetarian_pizza, [pizza_dough, tomato_sauce, mozzarella, assorted_vegetables]).
meal(gluten_free_pizza_bianca, [gluten_free_pizza_dough, ricotta, mozzarella, garlic, olive_oil]).
meal(prosciutto_e_arugula_pizza, [pizza_dough, tomato_sauce, mozzarella, prosciutto, fresh_arugula]).

meal(chicken_parmesan, [breaded_chicken, marinara_sauce, mozzarella, parmesan_cheese, spaghetti]).
meal(eggplant_parmesan, [breaded_eggplant, marinara_sauce, mozzarella, parmesan_cheese, spaghetti]).
meal(grilled_salmon, [salmon_fillet, lemon, garlic, olive_oil, herbs]).
meal(stuffed_bell_peppers, [bell_peppers, quinoa, black_beans, corn, tomato, cheese]).
meal(chicken_piccata, [chicken_breast, lemon, capers, white_wine, parsley]).

meal(tiramisu, [mascarpone_cheese, coffee, ladyfingers, cocoa_powder]).
meal(gelato, [milk, sugar, flavorings]).
meal(panna_cotta, [cream, sugar, gelatin, vanilla]).
meal(fruit_salad, [assorted_fresh_fruits]).
meal(cannoli, [ricotta_cheese, sugar, chocolate_chips, pastry_shell]).

% Vegetarian meal rule: All ingredients must not be meat
vegetarian_meal(Meal) :-
    meal(Meal, Ingredients),
    \+ (member(Ingredient, Ingredients), meat(Ingredient)).

% Carnivore meal rule: Must contain at least one meat ingredient
carnivore_meal(Meal) :-
    meal(Meal, Ingredients),
    member(Ingredient, Ingredients),
    meat(Ingredient).

% Calorie-conscious meal rule: Total calories < 500
calorie_conscious_meal(Meal) :-
    meal(Meal, Ingredients),
    findall(Calories, (member(Ingredient, Ingredients), calories(Ingredient, Calories)), CaloriesList),
    sum_list(CaloriesList, TotalCalories),
    calorie_threshold(Threshold),
    TotalCalories < Threshold.

% Gluten-free meal rule: Must not contain gluten-containing grains
gluten_free_meal(Meal) :-
    meal(Meal, Ingredients),
    \+ (member(Ingredient, Ingredients), grain(Ingredient), \+ gluten_free(Ingredient)).

% Lactose-free meal rule: Must not contain dairy
lactose_free_meal(Meal) :-
    meal(Meal, Ingredients),
    \+ (member(Ingredient, Ingredients), dairy(Ingredient)).

% Recommend meals based on guest preferences
recommend_meal(vegetarian, Meal) :- vegetarian_meal(Meal).
recommend_meal(carnivore, Meal) :- carnivore_meal(Meal).
recommend_meal(calorie_conscious, Meal) :- calorie_conscious_meal(Meal).
recommend_meal(gluten_intolerant, Meal) :- gluten_free_meal(Meal).
recommend_meal(lactose_intolerant, Meal) :- lactose_free_meal(Meal).
    

% Some queries:
% ?- vegetarian_meal(Meal).
% ?- carnivore_meal(Meal).
% ?- calorie_conscious_meal(Meal).
% ?- gluten_free_meal(Meal).
% ?- lactose_free_meal(Meal).

% ?- recommend_meal(vegetarian, Meal).
% ?- recommend_meal(carnivore, Meal).
% ?- recommend_meal(calorie_conscious, Meal).
% ?- recommend_meal(gluten_intolerant, Meal).
% ?- recommend_meal(lactose_intolerant, Meal).