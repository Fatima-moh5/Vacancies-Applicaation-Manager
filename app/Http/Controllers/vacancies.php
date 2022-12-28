<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Vacancy;
class vacancies extends Controller
{
    //gh

    public function index()
    {
        // return vacancy::all();
         $vacancy = vacancy::all();
         return view('vacancies',['vacancies'=>$vacancy]);
    }
    public function create()
    {
        return view('dashboard');
    }

    public function store(Request $request)
    {
        $request->validate([
            'ID' => ['required', 'int', 'max:20'],
            'Title' => ['required', 'string', 'max:50'],
            'Department' => ['required', 'string', 'max:50'],
            'Governorate' => ['required', 'string', 'max:500'],
            'Code' => ['required', 'string', 'max:7'],
            'Description' =>['required', 'string', 'max:500'],
            'Qualifications' =>['required', 'string', 'max:500']
        ]);

        $vacancy = vacancies::create([
            'ID' => $request->ID,
            'Title' => $request->Title,
            'Department' => $request->Department,
            'Governorate' => $request->Governorate,
            'Code' => $request->Code,
            'Description' => $request->Description,
            'Qualifications' => $request->Qualifications,
        ]);

        event(new Registered($vacancy));

    }
    public function vacancy($id)
    {
        $vacancy = Vacancy::find($id);
        //var_dump($vacancy);
        return view('jobdescription',compact('vacancy'));
    }
}
