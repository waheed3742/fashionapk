<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductImage;
use App\Models\Variation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function getAllProducts()
    {
        try {
            $product = Product::with(['variations', 'images'])->get();

            if (!$product) {
                return response()->json(['error' => 'Products not found'], 404);
            }
            return response()->json(['products'=>$product], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error fetching products', 'message' => $e->getMessage()], 500);
        }
    }
    public function store(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|max:255',
                'description' => 'required|string',
                'price' => 'required|numeric|min:0',
                'category_id' => 'nullable|exists:categories,id',
                'subcategory_id' => 'nullable|exists:sub_categories,id',
                'quantity' => 'integer|min:0',
                'availability' => 'boolean',
                'images.*' => 'image|mimes:jpeg,png,jpg,gif',
            ]);
            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors()], 422);
            }
            $product = Product::create([
                'name' => $request->input('name'),
                'description' => $request->input('description'),
                'price' => $request->input('price'),
                'category_id' => $request->input('category_id'),
                'subcategory_id' => $request->input('subcategory_id'),
                'quantity' => $request->input('quantity', 0),
                'availability' => $request->input('availability', true),
            ]);
            $size = $request->input('size');
            $colors = $request->input('colors');
            $stock = $request->input('stock');
            $variation_price = $request->input('variation_price');

            foreach ($colors as $key => $color) {
                $variation = new Variation();
                $variation->size = $size;
                $variation->color = $color;
                $variation->stock = $stock[$key];
                $variation->variation_price = $variation_price[$key];

                $product->variations()->save($variation);
            }
            if ($images = $request->file('images')) {
                foreach ($images as $image) {
                    $destinationPath = 'productimages/';
                    $url = date('YmdHis') . "." . $image->getClientOriginalExtension();
                $image->move($destinationPath, $url);
                $isPrimary= false;
                $productImage = new ProductImage([
                    'url' => $url,
                    'is_primary' => $isPrimary,
                ]);
                $product->images()->save($productImage);
            }
        }
            return response()->json(['message' => 'Product added successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error adding product','message' => $e->getMessage()], 500);
        }
    }

    public function getProductDetails($id)
    {
        try {
            $product = Product::with(['variations', 'images'])->find($id);

            if (!$product) {
                return response()->json(['error' => 'Product not found'], 404);
            }
            $variationsBySize = $product->variations->groupBy('size');
        $responseData = [
            'product' => $product->toArray(),
            'variations_by_size' => $variationsBySize->toArray(),
        ];
            return response()->json($responseData, 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error fetching product details', 'message' => $e->getMessage()], 500);
        }
    }
    public function getByCategory($categoryId)
    {
        try {
            $products = Product::where('category_id', $categoryId)->get();
            return response()->json(['products' => $products], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error fetching products by category','message' => $e->getMessage()], 500);
        }
    }

    public function getBySubcategory($subcategoryId)
    {
        try {
            $products = Product::where('subcategory_id', $subcategoryId)->get();
            return response()->json(['products' => $products], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error fetching products by subcategory','message' => $e->getMessage()], 500);
        }
    }
}
