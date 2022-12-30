<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Product;
use App\Models\Student;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $product = [
            [
                'name' => 'Oreo',
                'detail' => 'Makanan',
            ],
            [
                'name' => 'Beng Beng',
                'detail' => 'Makanan',
            ],
            [
                'name' => 'Sosro',
                'detail' => 'Minuman',
            ]
        ];

        foreach ($product as $key => $value) {
            Product::create($value);
        }

        $students = [
            [
                'nim' => '11321051',
                'name' => 'Horas Marolop Amsal Siregar',
                'class' => 'TI2',
                'prodi' => 'Teknologi Informasi',
            ],
            [
                'nim' => '11321052',
                'name' => 'Theofil Nainggolan',
                'class' => 'TI2',
                'prodi' => 'Teknologi Informasi',
            ],
            [
                'nim' => '11421051',
                'name' => 'Rizky Fauzan',
                'class' => 'TRPL2',
                'prodi' => 'Teknoologi Rekayasa Perangkat Lunak',
            ],
            [
                'nim' => '13321001',
                'name' => 'Alexandro',
                'class' => 'TK1',
                'prodi' => 'Teknologi Komputer',
            ]
        ];

        foreach ($students as $key => $value) {
            Student::create($value);
        }
    }
}
