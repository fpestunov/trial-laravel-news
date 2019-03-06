<?php

use Faker\Generator as Faker;

$factory->define(App\News::class, function (Faker $faker) {
    return [
        'category_id' => 1,
        'title' => $faker->sentence,
        'body' => $faker->paragraphs(7, true),
    ];
});
