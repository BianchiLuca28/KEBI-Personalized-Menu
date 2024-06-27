% Ingredients
ingredient(tomato).
ingredient(basil).
ingredient(garlic).
ingredient(olive_oil).
ingredient(toasted_bread).
ingredient(mozzarella).
ingredient(balsamic_glaze).
ingredient(cheese).
ingredient(bread).
ingredient(butter).
ingredient(parsley).
ingredient(parmesan_cheese).
ingredient(spaghetti).
ingredient(eggs).
ingredient(pancetta).
ingredient(black_pepper).
ingredient(penne).
ingredient(chili_peppers).
ingredient(gluten_free_fusilli).
ingredient(assorted_vegetables).
ingredient(pizza_dough).
ingredient(tomato_sauce).
ingredient(ricotta).
ingredient(gluten_free_pizza_dough).
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
calories(cheese, 402).
calories(bread, 265).
calories(butter, 717).
calories(parsley, 36).
calories(parmesan_cheese, 431).
calories(spaghetti, 131).
calories(eggs, 155).
calories(pancetta, 541).
calories(black_pepper, 255).
calories(penne, 131).
calories(chili_peppers, 40).
calories(gluten_free_fusilli, 131).
calories(assorted_vegetables, 50).
calories(pizza_dough, 265).
calories(tomato_sauce, 29).
calories(ricotta, 174).
calories(gluten_free_pizza_dough, 265).
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

% Ingredients not compatible with a vegetarian diet
non_vegetarian(pancetta).
non_vegetarian(chicken_breast).
non_vegetarian(salmon_fillet).
non_vegetarian(eggs).

% Ingredients not compatible with a lactose allergy
non_lactose(mozzarella).
non_lactose(cheese).
non_lactose(parmesan_cheese).
non_lactose(butter).
non_lactose(ricotta).

% Ingredients not compatible with a gluten allergy
non_gluten(toasted_bread).
non_gluten(spaghetti).
non_gluten(penne).
non_gluten(bread).
non_gluten(pizza_dough).

% Calorie-conscious threshold (example threshold: 500 calories)
calorie_threshold(550).

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
