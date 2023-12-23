<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class UserInfoController extends Controller
{
    public function update(Request $request, $id)
    {
        try {
            $user = User::findOrFail($id);

            $validator = Validator::make($request->all(), [
                'name' => 'string|max:255',
                'email' => 'email|unique:users,email,' . $user->id,
            ]);
            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors()], 422);
            }
            $user->name = $request->name;
            $user->email = $request->email;
            $user->age = $request->age;
            $user->gender = $request->gender;
            if ($image = $request->image) {
                $destinationPath = 'profile_images/';
                $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
                $image->move($destinationPath, $profileImage);
                $user->image = $profileImage;
            }
            $user->update();

            return response()->json(['message' => 'Profile updated successfully', 'user' => $user]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error updating profile', 'message' => $e->getMessage()], 500);
        }
    }

}
