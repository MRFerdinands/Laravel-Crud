<?php

use App\Models\Employee;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ReligionController;
use App\Models\Religion;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    $jumlahdata = Employee::count();
    $jumlahdatalaki = Employee::where('jeniskelamin', 'cowo')->count();
    $jumlahdatacewe = Employee::where('jeniskelamin', 'cewe')->count();

    return view('welcome', compact('jumlahdata', 'jumlahdatalaki', 'jumlahdatacewe'));
})->middleware('auth');

Route::group(['middleware' => ['auth', 'hakakses:admin']], function () {
    Route::get('/pegawai', [EmployeeController::class, 'index'])->name('pegawai');
});

Route::get('/tambahpegawai', [EmployeeController::class, 'tambahpegawai'])->name('tambahpegawai')->middleware('auth');
Route::post('/insertdata', [EmployeeController::class, 'insertdata'])->name('insertdata')->middleware('auth');
Route::get('/tampilkandata/{id}', [EmployeeController::class, 'tampilkandata'])->name('tampilkandata')->middleware('auth');
Route::post('/updatedata/{id}', [EmployeeController::class, 'updatedata'])->name('updatedata')->middleware('auth');
Route::get('/delete/{id}', [EmployeeController::class, 'delete'])->name('delete')->middleware('auth');
Route::get('/exportpdf', [EmployeeController::class, 'exportpdf'])->name('exportpdf')->middleware('auth');
Route::get('/exportexcel', [EmployeeController::class, 'exportexcel'])->name('exportexcel')->middleware('auth');
Route::post('/importexcel', [EmployeeController::class, 'importexcel'])->name('importexcel')->middleware('auth');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout')->middleware('auth');
Route::get('/datareligion', [ReligionController::class, 'index'])->name('datareligion')->middleware('auth');
Route::get('/tambahagama', [ReligionController::class, 'create'])->name('tambahagama')->middleware('auth');
Route::post('/insertdatareligion', [ReligionController::class, 'store'])->name('insertdatareligion')->middleware('auth');
Route::get('/login', [LoginController::class, 'login'])->name('login');
Route::post('/loginproses', [LoginController::class, 'loginproses'])->name('loginproses');
Route::get('/register', [LoginController::class, 'register'])->name('register');
Route::post('/registeruser', [LoginController::class, 'registeruser'])->name('registeruser');
