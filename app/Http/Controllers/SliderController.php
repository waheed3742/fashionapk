<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SliderController extends Controller
{
    public function index(){

            $sliders = Slider::orderBy('created_at', 'desc')->get();
            return response()->json(['sliders' => $sliders],200);
    }

    public function store(Request $request) {
        try {
            $validator = Validator::make($request->all(),[
                'title' => 'required',
                'description' => 'required',
                'image' => 'required',
            ]);
            if ($validator->fails()) {
                return response()->json(['error' => $validator->errors()],422);
            }
            if ($image = $request->file('image')) {
                $destinationPath = 'image/';
                $sliderimage = date('YmdHis') . "." . $image->getClientOriginalExtension();
                $image->move($destinationPath, $sliderimage);
            }
            $slider = Slider::create([
                'title' => $request->input('title'),
                'description' => $request->input('description'),
                'image' => $sliderimage,
            ]);
            return response()->json(['slider' => $slider], 200);
        }
        catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
public function update(Request $request, $id)
{
    try {
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'description' => 'required',
            'image' => 'sometimes|image|mimes:jpeg,png,jpg,gif',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 422);
        }
        $slider = Slider::findOrFail($id);
        if ($image = $request->file('image')) {
            $destinationPath = 'image/';
            $sliderimage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $sliderimage);
            $slider->image = $sliderimage;
        }
        $slider->update([
            'title' => $request->input('title'),
            'description' => $request->input('description'),
        ]);

        return response()->json(['slider' => $slider], 200);
    } catch (\Exception $e) {
        return response()->json(['error' => $e->getMessage()], 500);
    }
}

    public function delete($id) {
        try {
            $Slider = Slider::findOrFail($id);
            $Slider->delete();
            return response()->json(['message' => 'Slider Deleted successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Something went wrong'], 500);
        }
    }
}
