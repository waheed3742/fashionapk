<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\WishList;
use Exception;
use Illuminate\Http\Request;

class WishListController extends Controller
{
   public function addToWishlist(Product $product){
    try {
        $user = auth()->user();
        $wishlist = WishList::firstOrCreate([
            'user_id' => $user->id,
            'product_id' => $product->id,
        ]);

        return response()->json(['message' => 'Product added to wishlist','wishlist'=> $wishlist],200);
    } catch (Exception $e) {
       return response()->json(['error' => 'An Internal sever error','message' => $e->getMessage()],500);
    }
   }

   public function removeFromWishlist(Product $product)
    {
        try{
        $user = auth()->user();
        $wishlistItem = Wishlist::where('user_id', $user->id)->where('product_id', $product->id)->first();

        if ($wishlistItem) {
            $wishlistItem->delete();
            return response()->json(['message' => 'Product removed from wishlist'],200);
        }

        return response()->json(['message' => 'Product not found in wishlist'], 404);
    }
    catch (Exception $e) {
        return response()->json(['error' => 'An Internal sever error','message' => $e->getMessage()],500);
     }
    }

    public function allWishList()
    {
        $user = auth()->user();
        $wishlist = WishList::where('user_id',$user->id)->get();

        return response()->json($wishlist);
    }
}
