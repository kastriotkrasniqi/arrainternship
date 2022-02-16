<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = User::all();

        return view('users.index', ['users' => $users]);
    }


    public function edit($id)
    {

        $user = User::find($id);

        return view('users.edit', ['user' => $user]);
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'lastname' => ['required', 'string', 'max:255'],
            'username' => ['required', 'string', 'max:255', 'unique:users'],
            'address' => ['required', 'string', 'max:255'],
            'city' => ['required', 'string', 'max:255'],
            'country' => ['required', 'string', 'max:255'],
            'age' => ['required', 'numeric', 'max:255'],

        ]);

        $user = User::find($id);
        $user->name = $request->input('name');
        $user->lastname = $request->input('lastname');
        $user->username = $request->input('username');
        $user->age = $request->input('age');
        $user->address = $request->input('address');
        $user->city = $request->input('city');
        $user->country = $request->input('country');

        $user->update();
        return redirect('categories')->with('warning', 'User Updated Successfully');
    }

    public function destroy($id)
    {
        User::where('id', $id)->delete();

        return  redirect('users')->with('error', 'User removed successfully');
    }
}