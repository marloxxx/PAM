<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $students = Student::all();
        return response()->json($students);
    }

    /**
     * Display students by nim.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function showByNim($nim){
        $student = Student::where('nim', $nim)->get();
        return response()->json($student);
    }

    /**
     * Display students by prodi.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function showByProdi($prodi){
        $student = Student::where('prodi', $prodi)->get();
        return response()->json($student);
    }
}
