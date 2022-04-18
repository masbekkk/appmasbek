<?php

namespace App\Http\Controllers;

use App\Models\ProgrammingModules;
use Illuminate\Http\Request;

class ProgrammingmodulesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = ProgrammingModules::all();
        $count = ProgrammingModules::count();
       
        return response()->json([
            'jml' => $count,
            'data' => $data
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = new ProgrammingModules();
        $data->materi = $request->materi;
        $data->estimasi = $request->estimasi;
        $data->silabus = $request->silabus;
        $data->desc = $request->desc;
        $data->image = $request->image;
        $data->android = $request->android;
        $data->desktop = $request->desktop;
        $data->ios = $request->ios;
        $data->multiplatform = $request->multiplatform;
        $data->gallery = $request->gallery;
        if($data->save()){
            return response()->json([
                'success' => true,
                200
            ]);
        }else{
            return response()->json([
                'error' => true,
                200
            ]);
        }
        


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ProgrammingModules  $programmingModules
     * @return \Illuminate\Http\Response
     */
    public function show(ProgrammingModules $programmingModules)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ProgrammingModules  $programmingModules
     * @return \Illuminate\Http\Response
     */
    public function edit($id, ProgrammingModules $programmingModules)
    {
        $data = ProgrammingModules::find($id);
        return response()->json([
            'data' => $data
        ]);
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ProgrammingModules  $programmingModules
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, ProgrammingModules $programmingModules)
    {
        $data = ProgrammingModules::find($id);
        $data->materi = $request->materi;
        $data->estimasi = $request->estimasi;
        $data->silabus = $request->silabus;
        $data->desc = $request->desc;
        $data->image = $request->image;
        $data->android = $request->android;
        $data->desktop = $request->desktop;
        $data->ios = $request->ios;
        $data->multiplatform = $request->multiplatform;
        $data->gallery = $request->gallery;
        if($data->save()){
            return response()->json([
                'success' => true,
                200
            ]);
        }else{
            return response()->json([
                'error' => true,
                200
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ProgrammingModules  $programmingModules
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, ProgrammingModules $programmingModules)
    {
        $data = ProgrammingModules::find($id);
        if($data->delete()){
            return response()->json([
                'success' => true,
                200
            ]);
        }else{
            return response()->json([
                'error' => true,
                200
            ]);
        }
    }
}
