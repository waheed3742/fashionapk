<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        try {
            $credentials = $request->only('email', 'password');
            $remember = $request->has('remember');
            if (Auth::attempt($credentials,$remember)) {
                $user = Auth::user();
                $token = $user->createToken('authToken')->accessToken;
                return response()->json(['token' => $token, 'user' => $user], 200);
            }
            return response()->json(['error' => 'Invalid credentials'], 401);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Something went wrong'], 500);
        }
    }
}
