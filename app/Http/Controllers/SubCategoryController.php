<?php

namespace App\Http\Controllers;

use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SubCategoryController extends Controller
{
   public function index() {
    $subcategories = Subcategory::with('category')->get();
    return response()->json(['subcategories' => $subcategories], 200);
    }

    public function store(Request $request) {
        try {
            $validator = Validator::make($request->all(), [
                'category_id' => 'required|exists:categories,id',
                'name' => 'required|string|max:255',
            ]);
            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors()], 422);
            }
            $subcategory = SubCategory::create([
                'category_id' => $request->input('category_id'),
                'name' => $request->input('name'),
            ]);

            return response()->json(['subcategory' => $subcategory], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
