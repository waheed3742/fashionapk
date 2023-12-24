<?php

namespace App\Http\Controllers;

use App\Models\AddToCart;
use App\Models\Product;
use Exception;
use Faker\Core\Number;
use Illuminate\Http\Request;

class AddToCartController extends Controller
{
    public function allCartItem()
    {
        $user = auth()->user();
        $cartItem = AddToCart::where('user_id',$user->id)->get();

        return response()->json($cartItem);
    }

    public function addToCart(Request $request, Product $product)
    {
        try{
        $user = auth()->user();
        $quantity = $request->input('quantity',1);
        $cartItem = AddToCart::firstOrCreate([
            'user_id' => $user->id,
            'product_id' => $product->id,
            'quantity' => $quantity
        ]);
        return response()->json(['success'=>'Product Added To Cart Successfully','cartitem'=>$cartItem],200);

    }
    catch(Exception $e){
        return response()->json(['error'=>'An internal server error','message'=> $e->getMessage()],500);
    }
}

public function updateCart(Request $request, Product $product)
    {
        try{
        $user = auth()->user();
        $quantity = $request->input('quantity');

        $cartItem = AddToCart::where('user_id', $user->id)->where('product_id', $product->id)->first();

        if ($cartItem) {
            $cartItem->update(['quantity' => $quantity]);
        return response()->json(['success'=>'Product Added To Cart Successfully'],200);
        }
        return response()->json(['error'=>'Product not found in cart.'],404);
    }
        catch(Exception $e){
            return response()->json(['error'=>'An internal server error','message'=> $e->getMessage()],500);
        }
    }
    public function removeFromCart(Product $product)
    {
        try{
        $user = auth()->user();
        $cartItem = AddToCart::where('user_id', $user->id)->where('product_id', $product->id)->first();

        if ($cartItem) {
            $cartItem->delete();
            return response()->json(['message' => 'Product removed from AddToCart'],200);
        }

        return response()->json(['message' => 'Product not found in AddToCart'], 404);
    }
    catch (Exception $e) {
        return response()->json(['error' => 'An Internal sever error','message' => $e->getMessage()],500);
     }
    }
}
