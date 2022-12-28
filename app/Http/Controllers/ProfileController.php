<?php

namespace App\Http\Controllers;

use App\Models\Profile;
use Illuminate\Http\Request;

use Validator;
//use Symfony\Component\HttpKernel\Profiler\Profile;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($vacancyId)
    {
        return view('profile',compact('vacancyId'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       // var_dump($request->all());
        $vacancyId = $request->input('vacancyId');
        $messages = [
            'photo.mimes' => 'Photo Not Valid',
            'photo.max.file' => 'Photo Exceed Max Size',
            'cv.mimes' => 'CV Not Valid',
            'cv.max.file' => 'CV Exceed Max Size',
        ];
        $validator = Validator::make($request->all(), [
            'first_name' => 'required',
            'last_name'=> 'required',
            'email'=> 'required',
            'photo' => 'mimes:jpeg,png,jpg,gif,svg|max:2048',
            'cv' => 'mimes:pdf|max:2048'
        ],$messages);

        if ($validator->fails()) {
            return redirect('/profile/create/'.$vacancyId)
                ->withErrors($validator)
                ->withInput();
        }
        $profile = new Profile();
        $profile->photo='';
        if($request->hasFile('photo')) {
            $file = $request->file('photo');
            $file_name = md5(uniqid() . time()) . '.' . $file->getClientOriginalExtension();
            if ($file->move('storage/photo/', $file_name)) {
                $profile->photo = $file_name;
            }
        }
        $profile->cv ='';
        if($request->hasFile('cv')) {
            $file = $request->file('cv');
            $file_name = md5(uniqid() . time()) . '.' . $file->getClientOriginalExtension();
            if ($file->move('storage/cv/', $file_name)) {
                $profile->cv = $file_name;
            }
        }

        $profile->first_name = $request->input('first_name');
        $profile->last_name = $request->input('last_name');
        $profile->first_name_ar = $request->input('first_name_ar');
        $profile->last_name_ar = $request->input('last_name_ar');
        $profile->marital_status = $request->input('marital_status');
        $profile->military_status = $request->input('military_status');
        $profile->dob = $request->input('dob');
        $profile->mobile = $request->input('mobile');
        $profile->nationality = $request->input('nationality');
        $profile->gender = $request->input('gender');
        $profile->email = $request->input('email');
        $profile->national_number = $request->input('national_number');
        $profile->address = $request->input('address');
        $profile->experience = $request->input('experience');
        $profile->city = $request->input('city');

        $profile->vacancy_id =$vacancyId;

        if ($profile->save()){
            $request->session()->flash('alert-success', 'Your information Added Successfully');
            return redirect('/profile/create/'.$vacancyId);
        }else{
            $request->session()->flash('alert-danger', 'Your information NOT Added');
            return redirect('/profile/create/'.$vacancyId);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function show(Profile $profile)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function edit(Profile $profile)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Profile $profile)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Profile  $profile
     * @return \Illuminate\Http\Response
     */
    public function destroy(Profile $profile)
    {
        //
    }
}
