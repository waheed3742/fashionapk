<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    public function index()
    {
        try {
            $category = Category::all();
            return response()->json($category, 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Something went wrong'], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required|string',
            ]);

            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors(), 'status' => 422]);
            }
            $category = Category::create([
                'name' => $request->name,
            ]);
            return response()->json(['message' => 'Category Stored successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Something went wrong'], 500);
        }
    }
    public function update(Request $request, $id)
    {
        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required|string',
            ]);
            if ($validator->fails()) {

                return response()->json(['error' => $validator->errors(), 'Status' => 422], 422);
            }
            $category = Category::findOrFail($id);
            $category->update([
                'name' => $request->name,
            ]);
            return response()->json(['message' => 'Category Updated successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Something went wrong'], 500);
        }
    }
    public function delete($id)
    {
        try {
            $category = Category::findOrFail($id);
            $category->delete();
            return response()->json(['message' => 'Category Deleted successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Something went wrong'], 500);
        }
    }
}
