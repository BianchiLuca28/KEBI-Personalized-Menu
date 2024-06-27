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
ingredient(herbs).

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

% Ingredients not compatible with a vegetarian diet
non_vegetarian(cured_meats).
non_vegetarian(pancetta).
non_vegetarian(pepperoni).
non_vegetarian(prosciutto).
non_vegetarian(breaded_chicken).
non_vegetarian(chicken_breast).
non_vegetarian(salmon_fillet).
non_vegetarian(eggs).

% Ingredients not compatible with a lactose allergy
non_lactose(mozzarella).
non_lactose(cheese).
non_lactose(parmesan_cheese).
non_lactose(butter).
non_lactose(ricotta).
non_lactose(heavy_cream).
non_lactose(mascarpone_cheese).
non_lactose(milk).

% Ingredients not compatible with a gluten allergy
non_gluten(toasted_bread).
non_gluten(breadcrumbs).
non_gluten(spaghetti).
non_gluten(penne).
non_gluten(fettuccine).
non_gluten(bread).
non_gluten(pizza_dough).
non_gluten(pastry_shell).

% Calorie-conscious threshold (example threshold: 500 calories)
calorie_threshold(500).

/*
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

*/

% meal(Name, [(Ingredient, Grams)])
meal(bruschetta, [(tomato, 166), (basil, 22), (garlic, 7), (olive_oil, 9), (toasted_bread, 28)]).
meal(grilled_salmon, [(salmon_fillet, 169), (lemon, 34), (garlic, 7), (olive_oil, 11), (herbs, 200)]).
meal(eggplant_parmesan, [(breaded_eggplant, 250), (marinara_sauce, 142), (mozzarella, 35), (parmesan_cheese, 23), (spaghetti, 76)]).
meal(caprese_salad, [(tomato, 166), (mozzarella, 35), (basil, 22), (olive_oil, 9), (balsamic_glaze, 43)]).
meal(garlic_bread, [(bread, 56), (garlic, 7), (butter, 14), (parsley, 27)]).
meal(gluten_free_fusilli_primavera, [(gluten_free_fusilli, 110), (assorted_vegetables, 100), (olive_oil, 14), (garlic, 20)]).
meal(penne_arrabbiata, [(penne, 110), (tomato, 100), (chili_peppers, 6), (garlic, 20), (parsley,10)]).
meal(spaghetti_carbonara, [(spaghetti, 100), (eggs, 130), (pancetta, 35), (parmesan_cheese, 20), (black_pepper,5)]).

meal(margherita_pizza, [(pizza_dough, 120), (tomato_sauce, 100), (mozzarella, 35), (basil, 15), (olive_oil,15)]).
meal(vegetarian_pizza, [(pizza_dough, 120), (tomato_sauce, 100), (mozzarella, 35), (assorted_vegetables, 100)]).
meal(gluten_free_pizza_bianca, [(gluten_free_pizza_dough, 120), (ricotta, 50), (mozzarella, 30), (garlic, 15),(olive_oil,15)]).
meal(stuffed_bell_peppers, [(bell_peppers, 120), (quinoa, 100), (black_beans, 90), (corn, 80),(tomato,100), (cheese,35)]).
meal(chicken_piccata, [(chicken_breast, 120), (lemon, 60), (capers, 20), (white_wine, 25),(parsley,5)]).


% Vegetarian meal rule: All ingredients must not be non-vegetarian
vegetarian_meal(Meal) :-
    meal(Meal, Ingredients),
    \+ (member((Ingredient, _), Ingredients), non_vegetarian(Ingredient)).

% Carnivore meal rule: Must not be vegetarian
carnivore_meal(Meal) :-
    meal(Meal, Ingredients),
    member((Ingredient, _), Ingredients), non_vegetarian(Ingredient).


% Gluten-free meal rule: Must not contain gluten-containing grains
gluten_free_meal(Meal) :-
    meal(Meal, Ingredients),
    \+ (member((Ingredient, _), Ingredients), non_gluten(Ingredient)).

% Lactose intolerant meal rule: All ingredients must not be non-lactose
lactose_free_meal(Meal) :-
    meal(Meal, Ingredients),
    \+ (member((Ingredient, _), Ingredients), non_lactose(Ingredient)).

% Calorie calculation for a meal
meal_calories(Meal, TotalCalories) :-
    meal(Meal, Ingredients),
    findall(Calories, 
            (member((Ingredient, Grams), Ingredients), 
             calories(Ingredient, CalPer100Grams), 
             Calories is (CalPer100Grams * Grams) / 100), 
            CaloriesList),
    sum_list(CaloriesList, TotalCalories).

% Determine if a meal is calorie-conscious
calorie_conscious_meal(Meal) :-
    meal_calories(Meal, TotalCalories),
    calorie_threshold(Threshold),
    TotalCalories =< Threshold.

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
