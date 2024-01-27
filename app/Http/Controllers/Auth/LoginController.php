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
            // print_r($request->userAgent());exit;
            $credentials = $request->only('email', 'password');
            $remember = $request->has('remember');
            if (Auth::attempt($credentials,$remember)) {
                $user = Auth::user();
                $user['token'] = $user->createToken('Laravelia')->accessToken;
                return response()->json(['user' => $user], 200);
            }
            return response()->json(['error' => 'Invalid credentials'], 401);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Something went wrong','e'=>$e->getMessage()], 500);
        }
    }
    public function showLoginForm() {
        return response()->json(['success' => 'authenticated.'], 200);
    }
}
