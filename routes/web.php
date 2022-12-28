<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\vacancies;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Admin\AdminHomeController;
use App\Http\Controllers\Admin\AdminProfileController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Auth\AdminLoginController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Clear Cache facade value:
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    return '<h1>Cache facade value cleared</h1>';
});
//Route cache:
Route::get('/route-cache', function() {
    $exitCode = Artisan::call('route:cache');
    return '<h1>Routes cached</h1>';
});
//Clear Config cache:
Route::get('/config-cache', function() {
    $exitCode = Artisan::call('config:cache');
    return '<h1>Clear Config cleared</h1>';
});

Route::get('admin/login', 'Auth\AdminLoginController@showLoginForm')->name('admin.login');
Route::post('admin/login', 'Auth\AdminLoginController@login')->name('admin.login.submit');
Route::get('admin/logout', 'Auth\AdminLoginController@logout')->name('admin.logout');


Route::get('/vacancies',[vacancies::class,'index']);
Route::get('/vacancy/{id}',[vacancies::class,'vacancy']);

Route::get('/profile/create/{vacancyId}',[ProfileController::class,'create']);
Route::post('/profile/store',[ProfileController::class,'store']);

Route::get('/', function () {
    return view('home');
});
Route::get('/job', function () {
     return view('jobdescription');
  });
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

Route::group(['namespace' => 'Admin'],function () {
    Route::get('admin/home', 'AdminHomeController@index')->name('admin.dashboard');
    Route::get('admin/profiles', 'AdminProfileController@index');
    //setting
    Route::get('admin/setting', 'AdminSettingController@edit');
    Route::post('admin/setting/update', 'AdminSettingController@update');
    //email
    Route::get('admin/regret/{id}', 'AdminEmailController@regret_letter')->name('admin.regret_letter');

	Route::get('admin/vacancies', 'AdminVacancyController@index')/*->name('admin.regret_letter')*/;
    Route::get('admin/vacancy/create', 'AdminVacancyController@create');
    Route::post('admin/vacancy/store', 'AdminVacancyController@store');



});




require __DIR__.'/auth.php';
