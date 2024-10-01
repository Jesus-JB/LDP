<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Proyecto;
use Illuminate\Support\Facades\DB;

class ProyectoController extends Controller
{
    /**
     * Display a listing of the resource.
     * 
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $proyectos = DB::table('proyectos') ->get();
       return view("projects/index",['proyectos' =>$proyectos]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("projects/new");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
