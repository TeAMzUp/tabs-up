<?php

use Illuminate\Support\Facades\Route;
use App\Models\Room;
use App\Models\Thread;
use App\Models\Message;

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

Route::get('/', function () {
    $room = Room::all();
    //dd($room);
    return view('welcome', compact('room'));
});

/** 
 * Exemple de route.
 * Capture d'une requête GET à l'URL http://localhost:8000/articles
 */
Route::get('/salon/{id}', function ($id) {
    $room = Room::find($id);
    return view('rooms', compact('room'));
});

/** 
 * Exemple de route.
 * Capture d'une requête GET à l'URL http://localhost:8000/articles
 */
Route::get('/discussion/{id}', function ($id) {
    $thread = Thread::find($id);
    $messages = Message::where('idT', '=', $id)->get();
    return view('threads', compact('thread','messages'));
});

